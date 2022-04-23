package com.android.contacts.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.detail.PhotoSelectionHandler;
import com.android.contacts.k;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/PhotoSelectionActivity.class */
public class PhotoSelectionActivity extends Activity {
    private static final int BACKDROP_FADEOUT_DURATION = 100;
    public static final String ENTITY_DELTA_LIST = "entity_delta_list";
    public static final String EXPAND_PHOTO = "expand_photo";
    public static final String IS_DIRECTORY_CONTACT = "is_directory_contact";
    public static final String IS_PROFILE = "is_profile";
    private static final String KEY_CURRENT_PHOTO_FILE = "currentphotofile";
    private static final String KEY_SUB_ACTIVITY_IN_PROGRESS = "subinprogress";
    public static final String LOOKUP_URI = "lookup_uri";
    private static final int PHOTO_CONTRACT_DURATION = 50;
    private static final int PHOTO_EXPAND_DURATION = 100;
    public static final String PHOTO_URI = "photo_uri";
    public static final String RAW_CONTACTS_COUNT = "raw_contacts_count";
    private static final String TAG = "PhotoSelectionActivity";
    private AnimatorListenerAdapter mAnimationListener;
    private boolean mAnimationPending;
    private View mBackdrop;
    private boolean mCloseActivityWhenCameBackFromSubActivity;
    private String mCurrentPhotoFile;
    private boolean mExpandPhoto;
    private int mExpandedPhotoSize;
    private int mHeightOffset;
    private boolean mIsDirectoryContact;
    private boolean mIsProfile;
    private Uri mLookupUri;
    private PendingPhotoResult mPendingPhotoResult;
    private ObjectAnimator mPhotoAnimator;
    private FrameLayout.LayoutParams mPhotoEndParams;
    private PhotoHandler mPhotoHandler;
    private FrameLayout.LayoutParams mPhotoStartParams;
    private Uri mPhotoUri;
    private ImageView mPhotoView;
    private Rect mSourceBounds;
    private RawContactDeltaList mState;
    private boolean mSubActivityInProgress;
    private int mRawContactsCount = 0;
    Rect mOriginalPos = new Rect();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/PhotoSelectionActivity$PendingPhotoResult.class */
    public static class PendingPhotoResult {
        private final Intent mData;
        private final int mRequestCode;
        private final int mResultCode;

        private PendingPhotoResult(int i, int i2, Intent intent) {
            this.mRequestCode = i;
            this.mResultCode = i2;
            this.mData = intent;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/PhotoSelectionActivity$PhotoHandler.class */
    public final class PhotoHandler extends PhotoSelectionHandler {
        private final PhotoSelectionHandler.PhotoActionListener mListener;

        /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener.class */
        private final class PhotoListener extends PhotoSelectionHandler.PhotoActionListener {
            private PhotoListener() {
                super();
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final String getCurrentPhotoFile() {
                return PhotoSelectionActivity.this.mCurrentPhotoFile;
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener, com.android.contacts.editor.f.b
            public final void onChangePhotoChosen() {
                if (PhotoSelectionActivity.this.mIsProfile) {
                    Intent intent = new Intent("android.intent.action.EDIT", PhotoSelectionActivity.this.mLookupUri);
                    intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(PhotoHandler.this.mContext, intent);
                    return;
                }
                Intent intent2 = new Intent("com.android.contacts.action.LINK_CONTACT");
                long parseId = ContentUris.parseId(PhotoSelectionActivity.this.mLookupUri);
                if (parseId < 0) {
                    Toast.makeText(PhotoSelectionActivity.this, 2131755931, 1).show();
                    return;
                }
                intent2.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, parseId);
                intent2.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                intent2.putExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.REQ_CHANGE_PHOTO, true);
                ImplicitIntentsUtil.startActivityInApp(PhotoHandler.this.mContext, intent2);
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final void onPhotoSelected(Uri uri) {
                if (!PhotoSelectionActivity.this.mSubActivityInProgress) {
                    RawContactDeltaList deltaForAttachingPhotoToContact = PhotoHandler.this.getDeltaForAttachingPhotoToContact();
                    long writableEntityId = PhotoHandler.this.getWritableEntityId();
                    if (uri != null) {
                        PhotoSelectionActivity.this.startService(ContactSaveService.a(PhotoHandler.this.mContext, deltaForAttachingPhotoToContact, BuildConfig.FLAVOR, PhotoSelectionActivity.this.mIsProfile, writableEntityId, uri.toString()));
                    }
                    PhotoSelectionActivity.this.finish();
                }
            }

            @Override // com.android.contacts.detail.PhotoSelectionHandler.PhotoActionListener
            public final void onPhotoSelectionDismissed() {
                if (!PhotoSelectionActivity.this.mSubActivityInProgress) {
                    PhotoSelectionActivity.this.finish();
                }
            }
        }

        private PhotoHandler(Context context, View view, int i, RawContactDeltaList rawContactDeltaList) {
            super(context, view, i, PhotoSelectionActivity.this.mIsDirectoryContact, rawContactDeltaList, PhotoSelectionActivity.this.mRawContactsCount);
            this.mListener = new PhotoListener();
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        public final PhotoSelectionHandler.PhotoActionListener getListener() {
            return this.mListener;
        }

        @Override // com.android.contacts.detail.PhotoSelectionHandler
        public final void startPhotoActivity(Intent intent, int i, String str) {
            PhotoSelectionActivity.this.mSubActivityInProgress = true;
            PhotoSelectionActivity.this.mCurrentPhotoFile = str;
            if (i == 1001 && RequestCameraPermissionsActivity.startPermissionActivity(PhotoSelectionActivity.this, intent, i, null)) {
                return;
            }
            if (PhotoSelectionActivity.this.getPackageManager().resolveActivity(intent, 65536) != null) {
                PhotoSelectionActivity.this.startActivityForResult(intent, i);
                return;
            }
            Toast.makeText(this.mContext, 2131755026, 0).show();
            PhotoSelectionActivity.this.finishImmediatelyWithNoAnimation();
        }
    }

    private void animateAwayBackground() {
        ObjectAnimator.ofFloat(this.mBackdrop, "alpha", 0.0f).setDuration(100L).start();
    }

    private void animateInBackground() {
        ObjectAnimator.ofFloat(this.mBackdrop, "alpha", 0.0f, 0.5f).setDuration(100L).start();
    }

    private void animatePhoto(ViewGroup.MarginLayoutParams marginLayoutParams) {
        if (this.mPhotoAnimator != null) {
            this.mPhotoAnimator.cancel();
        }
        this.mPhotoView.setLayoutParams(marginLayoutParams);
        this.mAnimationPending = true;
        this.mPhotoView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animatePhotoOpen() {
        this.mAnimationListener = new AnimatorListenerAdapter() { // from class: com.android.contacts.activities.PhotoSelectionActivity.4
            private void capturePhotoPos() {
                PhotoSelectionActivity.this.mPhotoView.requestLayout();
                PhotoSelectionActivity.this.mOriginalPos.left = PhotoSelectionActivity.this.mPhotoView.getLeft();
                PhotoSelectionActivity.this.mOriginalPos.top = PhotoSelectionActivity.this.mPhotoView.getTop();
                PhotoSelectionActivity.this.mOriginalPos.right = PhotoSelectionActivity.this.mPhotoView.getRight();
                PhotoSelectionActivity.this.mOriginalPos.bottom = PhotoSelectionActivity.this.mPhotoView.getBottom();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                capturePhotoPos();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                capturePhotoPos();
                if (PhotoSelectionActivity.this.mPhotoHandler != null) {
                    PhotoSelectionActivity.this.mPhotoHandler.onClick(PhotoSelectionActivity.this.mPhotoView);
                }
            }
        };
        animatePhoto(getPhotoEndParams());
    }

    private void attachPhotoHandler() {
        this.mPhotoHandler = new PhotoHandler(this, this.mPhotoView, (this.mPhotoUri == null ? 4 : 14) & (-3), this.mState);
        if (this.mPendingPhotoResult != null) {
            this.mPhotoHandler.handlePhotoActivityResult(this.mPendingPhotoResult.mRequestCode, this.mPendingPhotoResult.mResultCode, this.mPendingPhotoResult.mData);
            this.mPendingPhotoResult = null;
            return;
        }
        SchedulingUtils.doAfterLayout(this.mBackdrop, new Runnable() { // from class: com.android.contacts.activities.PhotoSelectionActivity.6
            @Override // java.lang.Runnable
            public void run() {
                PhotoSelectionActivity.this.animatePhotoOpen();
            }
        });
    }

    public static Intent buildIntent(Context context, Uri uri, Bitmap bitmap, byte[] bArr, Rect rect, RawContactDeltaList rawContactDeltaList, boolean z, boolean z2, boolean z3) {
        Intent intent = new Intent(context, PhotoSelectionActivity.class);
        if (!(uri == null || bitmap == null || bArr == null)) {
            intent.putExtra(PHOTO_URI, uri);
        }
        intent.setSourceBounds(rect);
        intent.putExtra(ENTITY_DELTA_LIST, (Parcelable) rawContactDeltaList);
        intent.putExtra(IS_PROFILE, z);
        intent.putExtra(IS_DIRECTORY_CONTACT, z2);
        intent.putExtra(EXPAND_PHOTO, z3);
        return intent;
    }

    public static Intent buildIntent(Context context, Uri uri, Bitmap bitmap, byte[] bArr, Rect rect, RawContactDeltaList rawContactDeltaList, boolean z, boolean z2, boolean z3, Uri uri2, int i) {
        Intent intent = new Intent(context, PhotoSelectionActivity.class);
        if (!(uri == null || bitmap == null || bArr == null)) {
            intent.putExtra(PHOTO_URI, uri);
        }
        intent.setSourceBounds(rect);
        intent.putExtra(ENTITY_DELTA_LIST, (Parcelable) rawContactDeltaList);
        intent.putExtra(IS_PROFILE, z);
        intent.putExtra(IS_DIRECTORY_CONTACT, z2);
        intent.putExtra(EXPAND_PHOTO, z3);
        intent.putExtra(LOOKUP_URI, uri2);
        intent.putExtra(RAW_CONTACTS_COUNT, i);
        return intent;
    }

    private void closePhotoAndFinish() {
        this.mAnimationListener = new AnimatorListenerAdapter() { // from class: com.android.contacts.activities.PhotoSelectionActivity.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ObjectAnimator duration = ObjectAnimator.ofFloat(PhotoSelectionActivity.this.mPhotoView, "alpha", 0.0f).setDuration(50L);
                duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.contacts.activities.PhotoSelectionActivity.5.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        PhotoSelectionActivity.this.finishImmediatelyWithNoAnimation();
                    }
                });
                duration.start();
            }
        };
        animatePhoto(this.mPhotoStartParams);
        animateAwayBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayPhoto() {
        int[] iArr = new int[2];
        this.mBackdrop.getLocationOnScreen(iArr);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.mSourceBounds.width(), this.mSourceBounds.height());
        this.mOriginalPos.left = this.mSourceBounds.left - iArr[0];
        this.mOriginalPos.top = this.mSourceBounds.top - iArr[1];
        this.mOriginalPos.right = this.mOriginalPos.left + this.mSourceBounds.width();
        this.mOriginalPos.bottom = this.mOriginalPos.top + this.mSourceBounds.height();
        layoutParams.setMargins(this.mOriginalPos.left, this.mOriginalPos.top, this.mOriginalPos.right, this.mOriginalPos.bottom);
        this.mPhotoStartParams = layoutParams;
        this.mPhotoView.setLayoutParams(layoutParams);
        this.mPhotoView.requestLayout();
        this.mPhotoView.setAlpha(0.0f);
        int i = getPhotoEndParams().width;
        if (this.mPhotoUri != null) {
            k.a(this).a(this.mPhotoView, this.mPhotoUri, i);
        } else {
            this.mPhotoView.setImageResource(2131165276);
        }
        this.mPhotoView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.contacts.activities.PhotoSelectionActivity.3
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                if (PhotoSelectionActivity.this.mAnimationPending) {
                    PhotoSelectionActivity.this.mAnimationPending = false;
                    PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("left", PhotoSelectionActivity.this.mOriginalPos.left, i2);
                    PropertyValuesHolder ofInt2 = PropertyValuesHolder.ofInt("top", PhotoSelectionActivity.this.mOriginalPos.top, i3);
                    PropertyValuesHolder ofInt3 = PropertyValuesHolder.ofInt("right", PhotoSelectionActivity.this.mOriginalPos.right, i4);
                    PropertyValuesHolder ofInt4 = PropertyValuesHolder.ofInt("bottom", PhotoSelectionActivity.this.mOriginalPos.bottom, i5);
                    int i10 = (PhotoSelectionActivity.this.mOriginalPos.right - PhotoSelectionActivity.this.mOriginalPos.left) - (i4 - i2);
                    ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(PhotoSelectionActivity.this.mPhotoView, ofInt, ofInt2, ofInt3, ofInt4, i10 < 0 ? PropertyValuesHolder.ofFloat("alpha", 0.0f, 1.0f) : i10 == 0 ? PropertyValuesHolder.ofFloat("alpha", 0.0f, 0.0f) : PropertyValuesHolder.ofFloat("alpha", 1.0f, 0.0f)).setDuration(100L);
                    if (PhotoSelectionActivity.this.mAnimationListener != null) {
                        duration.addListener(PhotoSelectionActivity.this.mAnimationListener);
                    }
                    duration.start();
                }
            }
        });
        attachPhotoHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishImmediatelyWithNoAnimation() {
        super.finish();
    }

    private int getAdjustedExpandedPhotoSize(View view, int i) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        float min = Math.min((rect.height() - i) / this.mExpandedPhotoSize, rect.width() / this.mExpandedPhotoSize);
        return min < 1.0f ? (int) (min * this.mExpandedPhotoSize) : this.mExpandedPhotoSize;
    }

    private FrameLayout.LayoutParams getPhotoEndParams() {
        if (this.mPhotoEndParams == null) {
            this.mPhotoEndParams = new FrameLayout.LayoutParams(this.mPhotoStartParams);
            if (this.mExpandPhoto) {
                int adjustedExpandedPhotoSize = getAdjustedExpandedPhotoSize(this.mBackdrop, this.mHeightOffset);
                int i = adjustedExpandedPhotoSize - this.mPhotoStartParams.width;
                int i2 = adjustedExpandedPhotoSize - this.mPhotoStartParams.height;
                if (i > 0 || i2 > 0) {
                    this.mPhotoEndParams.width = adjustedExpandedPhotoSize;
                    this.mPhotoEndParams.height = adjustedExpandedPhotoSize;
                    this.mPhotoEndParams.topMargin = Math.max(this.mPhotoStartParams.topMargin - i2, 0);
                    this.mPhotoEndParams.leftMargin = Math.max(this.mPhotoStartParams.leftMargin - i, 0);
                    this.mPhotoEndParams.bottomMargin = 0;
                    this.mPhotoEndParams.rightMargin = 0;
                }
            }
        }
        return this.mPhotoEndParams;
    }

    @Override // android.app.Activity
    public void finish() {
        if (!this.mSubActivityInProgress) {
            closePhotoAndFinish();
        } else {
            finishImmediatelyWithNoAnimation();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.mPhotoHandler != null) {
            this.mSubActivityInProgress = false;
            if (this.mPhotoHandler.handlePhotoActivityResult(i, i2, intent)) {
                this.mPendingPhotoResult = null;
            } else if (this.mCloseActivityWhenCameBackFromSubActivity) {
                finishImmediatelyWithNoAnimation();
            } else {
                this.mPhotoHandler.onClick(this.mPhotoView);
            }
        } else {
            this.mPendingPhotoResult = new PendingPhotoResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.mSubActivityInProgress) {
            finishImmediatelyWithNoAnimation();
        } else {
            this.mCloseActivityWhenCameBackFromSubActivity = true;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        setContentView(2131427617);
        if (bundle != null) {
            this.mCurrentPhotoFile = bundle.getString(KEY_CURRENT_PHOTO_FILE);
            this.mSubActivityInProgress = bundle.getBoolean(KEY_SUB_ACTIVITY_IN_PROGRESS);
        }
        Intent intent = getIntent();
        this.mPhotoUri = (Uri) intent.getParcelableExtra(PHOTO_URI);
        this.mState = (RawContactDeltaList) intent.getParcelableExtra(ENTITY_DELTA_LIST);
        this.mIsProfile = intent.getBooleanExtra(IS_PROFILE, false);
        this.mIsDirectoryContact = intent.getBooleanExtra(IS_DIRECTORY_CONTACT, false);
        this.mExpandPhoto = intent.getBooleanExtra(EXPAND_PHOTO, false);
        this.mLookupUri = (Uri) intent.getParcelableExtra(LOOKUP_URI);
        this.mRawContactsCount = intent.getIntExtra(RAW_CONTACTS_COUNT, 0);
        this.mExpandedPhotoSize = getResources().getDimensionPixelSize(2131100038);
        this.mHeightOffset = getResources().getDimensionPixelOffset(2131100092);
        this.mBackdrop = findViewById(2131296374);
        this.mPhotoView = (ImageView) findViewById(2131297153);
        this.mSourceBounds = intent.getSourceBounds();
        animateInBackground();
        this.mBackdrop.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.PhotoSelectionActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoSelectionActivity.this.finish();
            }
        });
        SchedulingUtils.doAfterLayout(this.mBackdrop, new Runnable() { // from class: com.android.contacts.activities.PhotoSelectionActivity.2
            @Override // java.lang.Runnable
            public void run() {
                PhotoSelectionActivity.this.displayPhoto();
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.mPhotoAnimator != null) {
            this.mPhotoAnimator.cancel();
            this.mPhotoAnimator = null;
        }
        if (this.mPhotoHandler != null) {
            this.mPhotoHandler.destroy();
            this.mPhotoHandler = null;
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CURRENT_PHOTO_FILE, this.mCurrentPhotoFile);
        bundle.putBoolean(KEY_SUB_ACTIVITY_IN_PROGRESS, this.mSubActivityInProgress);
    }
}
