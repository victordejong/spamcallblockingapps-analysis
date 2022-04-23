package com.callapp.contacts.activity.contact.details;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup;
import com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.MainThreadTimer;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
import com.callapp.contacts.util.servermessage.ValidateClientTask;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.a;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PostCallActivity.class */
public class PostCallActivity extends BaseTransparentActivity implements CallStateListener, ContactDataChangeListener {
    public static final String EXTRA_IS_BLOCKED = "isBlocked";
    public static final String EXTRA_IS_SPAMMER = "isSpammer";
    public static final String EXTRA_POST_CALL_DATA = "postCallData";
    private StoreItemAssetManager assetManager;
    private ContactData contact;
    private final EventBus eventBus;
    PresentersContainerImpl presenterContainer;
    private View tint;
    private FrameLayout topBarContainer;
    private TopSheetPresenter topSheetPresenter;
    private final PresenterManager presenterManager = new PresenterManager(PresentersContainer.MODE.POST_CALL_SCREEN);
    private MainThreadTimer finishTask = new MainThreadTimer(new MainThreadTimer.DelaytedTaskEvents() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.1
        @Override // com.callapp.contacts.manager.MainThreadTimer.DelaytedTaskEvents
        public final void a() {
            if (Activities.a((Activity) PostCallActivity.this)) {
                PopupManager.get().a();
                PostCallActivity.this.finishActivity();
            }
        }
    });

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration.class */
    public enum PostCallDuration {
        AFTER_2_SEC(2),
        AFTER_5_SEC(5),
        AFTER_10_SEC(10),
        AFTER_12_SEC(12),
        AFTER_20_SEC(20),
        AFTER_30_SEC(30);
        
        public final int duration;

        PostCallDuration(int i) {
            this.duration = i;
        }
    }

    public PostCallActivity() {
        EventBus eventBus = new EventBus();
        this.eventBus = eventBus;
        this.presenterContainer = new PresentersContainerImpl(eventBus, PresentersContainer.MODE.POST_CALL_SCREEN) { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.2
            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public View findViewById(int i) {
                return PostCallActivity.this.findViewById(i);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public void finish() {
                PostCallActivity.this.finish();
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public ContactData getContact() {
                return PostCallActivity.this.contact;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public EventBus getEventBus() {
                return PostCallActivity.this.eventBus;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public Context getRealContext() {
                return PostCallActivity.this;
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainerImpl, com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean hasIntentExtra(String str) {
                Intent intent = PostCallActivity.this.getIntent();
                if (intent == null || !StringUtils.b((CharSequence) str)) {
                    return false;
                }
                return intent.hasExtra(str);
            }

            @Override // com.callapp.contacts.activity.contact.details.PresentersContainer
            public boolean isFinishing() {
                return PostCallActivity.this.isFinishing();
            }
        };
    }

    private void callContact(Phone phone) {
        if (phone != null) {
            if (phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
                PhoneManager.a(this, phone, this.contact.getDeviceId(), this.contact.getFullName(), "Contact name or number", "Call", this.contact.isIncognito(), null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishActivity() {
        finish();
        overridePendingTransition(2130771997, 2130771998);
    }

    private void handlePostCallActions(CallData callData, boolean z, boolean z2) {
        final View findViewById;
        StringBuilder sb = new StringBuilder("handlePostCallActions: isMissedCall: ");
        sb.append(z);
        sb.append(", contact: ");
        boolean z3 = true;
        sb.append(this.contact != null);
        CLog.a(PostCallActivity.class, sb.toString());
        z3 = false;
        if (z) {
            if (Prefs.f15233a.get().booleanValue()) {
                PopupManager.get().b(this, new QuickResponseDialogPopup(callData.getNumber()));
                z3 = true;
            } else {
                new ValidateClientTask(null, this, Constants.POST_CALL_SCREEN).execute();
                z3 = false;
            }
        }
        if (z2 && this.contact != null && AppRater.a(CallAppApplication.get(), this.contact)) {
            this.finishTask.a();
        }
        if (!z3 && (findViewById = findViewById(2131364536)) != null) {
            findViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.9
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    findViewById.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    PostCallActivity.this.finishTask.a(((PostCallDuration) Prefs.bP.get()).duration * 1000, true);
                }
            });
        }
    }

    private void initLayout() {
        View findViewById = findViewById(2131362885);
        if (findViewById != null) {
            findViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.7
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0 || PostCallActivity.this.isFinishing()) {
                        return false;
                    }
                    PostCallActivity.this.finishActivity();
                    return false;
                }
            });
        }
        View findViewById2 = findViewById(2131363565);
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    PostCallActivity postCallActivity = PostCallActivity.this;
                    ContactDetailsActivity.startFullDetailsActivity(postCallActivity, postCallActivity.getIntent(), null, false, false, null, "PostCallActivity", false);
                    PostCallActivity.this.finishActivity();
                }
            });
        }
    }

    private void sendSMS(Phone phone) {
        if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
            SmsUtils.c(this, phone, "");
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        this.finishTask.a();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        this.finishTask.a();
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.finishTask.a();
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        this.finishTask.a();
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558464;
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getCallScreenTransparentTheme();
    }

    public /* synthetic */ void lambda$onCreate$0$PostCallActivity(View view) {
        AnalyticsManager.get().a(Constants.BOTTOM_ACTION_BAR, "Call button clicked");
        callContact(this.contact.getPhone());
        AndroidUtils.a((Activity) this);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.finishTask.a();
        finishActivity();
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (callData.getState() == CallState.RINGING_INCOMING || callData.getState() == CallState.RINGING_OUTGOING) {
            finishActivity();
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.presenterContainer.onContactChanged(contactData, set);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.POST_CALL_SCREEN);
        getLayoutInflater().inflate(2131558724, (ViewGroup) findViewById(2131362853), true);
        this.presenterManager.c(this.presenterContainer);
        TopSheetPresenter topSheetPresenter = (TopSheetPresenter) this.presenterManager.a(TopSheetPresenter.class);
        this.topSheetPresenter = topSheetPresenter;
        topSheetPresenter.setTopSheetListener(null);
        PhoneStateManager.get().addListener(this);
        ImageView imageView = (ImageView) findViewById(a.C0337a.closeButton);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    PostCallActivity.this.finish();
                }
            });
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
            imageView.setVisibility(0);
        }
        this.topBarContainer = (FrameLayout) findViewById(2131364169);
        View findViewById = findViewById(2131362117);
        this.tint = findViewById(2131363462);
        ViewUtils.b(findViewById, ThemeUtils.getColor(2131099686));
        ViewUtils.a(findViewById.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
        onNewIntent(getIntent());
        Bundle extras = getIntent().getExtras();
        ViewUtils.c(this.tint, 2131232225, ThemeUtils.getColor((extras.getBoolean(EXTRA_IS_BLOCKED) || extras.getBoolean(EXTRA_IS_SPAMMER)) ? 2131099675 : 2131099784));
        StoreItemAssetManager.Builder builder = new StoreItemAssetManager.Builder();
        builder.f14985c = new StoreItemAssetManager.AssetListener<String>() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.4
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public /* synthetic */ void onAssetReady(String str, String str2) {
                final String str3 = str;
                if (!StringUtils.a((CharSequence) str3)) {
                    final ImageView imageView2 = (ImageView) PostCallActivity.this.topBarContainer.findViewById(2131363461);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            imageView2.setVisibility(0);
                            PostCallActivity.this.tint.setAlpha(0.6f);
                            new GlideUtils.GlideRequestBuilder(imageView2, str3, PostCallActivity.this).a((int) Math.ceil(Activities.a(11.0f)), RoundedCornersTransformation.CornerType.TOP).d();
                        }
                    });
                }
            }
        };
        StoreItemAssetManager a2 = builder.a();
        this.assetManager = a2;
        a2.getAssets();
        findViewById(2131362228).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details._$$Lambda$PostCallActivity$Ab_QdjO8evhEq_rpGmZi8GWR6Ig
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostCallActivity.this.lambda$onCreate$0$PostCallActivity(view);
            }
        });
        ImageView imageView2 = (ImageView) findViewById(2131361988);
        ContactData contactData = this.contact;
        if (contactData == null || !contactData.isContactInDevice()) {
            imageView2.setVisibility(8);
        } else {
            imageView2.setVisibility(0);
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddNoteActivity.a(PostCallActivity.this.contact.getId(), PostCallActivity.this);
            }
        });
        findViewById(2131363416).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.PostCallActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PostCallActivity.this.topSheetPresenter != null) {
                    PostCallActivity.this.topSheetPresenter.b();
                    PostCallActivity.this.topSheetPresenter.c();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.finishTask.a();
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this);
        this.eventBus.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) null, false);
        this.presenterManager.a();
        this.presenterContainer.onDestroy();
        this.eventBus.a();
        PhoneStateManager.get().removeListener(this);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.POST_CALL_SCREEN);
        StoreItemAssetManager storeItemAssetManager = this.assetManager;
        if (storeItemAssetManager != null) {
            storeItemAssetManager.b();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.finishTask.a();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null) {
            CLog.a(PostCallActivity.class, "PCS initialized without extras");
            finish();
            return;
        }
        long j = extras.getLong(Constants.EXTRA_CONTACT_ID);
        Phone a2 = PhoneManager.get().a(extras.getString(Constants.EXTRA_PHONE_NUMBER));
        CallData callData = (CallData) extras.getSerializable(EXTRA_POST_CALL_DATA);
        if (callData != null) {
            boolean booleanValue = callData.isMissedCall().booleanValue();
            boolean booleanValue2 = callData.isCallAnswered().booleanValue();
            String stringExtra = intent.getStringExtra(ContactDetailsActivity.EXTRA_FULL_NAME);
            Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(a2, j, this, ContactFieldEnumSets.ALL);
            this.contact = (ContactData) registerForContactDetailsStack.first;
            if (((Set) registerForContactDetailsStack.second).size() > 0) {
                onContactChanged(this.contact, (Set) registerForContactDetailsStack.second);
            }
            this.eventBus.a((EventType<L, EventType<CallStateListener, CallData>>) CallStateListener.f15121d, (EventType<CallStateListener, CallData>) callData, false);
            if (StringUtils.b((CharSequence) stringExtra)) {
                this.contact.assertIntentDataExists();
                this.contact.getIntentData().setFullName(stringExtra);
                this.contact.updateFullName();
            } else {
                this.contact.fireChange(ContactField.phone);
            }
            handlePostCallActions(callData, booleanValue, booleanValue2);
            View findViewById = findViewById(2131364536);
            if (!Prefs.j.get().booleanValue()) {
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                finish();
                return;
            }
            initLayout();
            Animation loadAnimation = AnimationUtils.loadAnimation(this, 2130771997);
            if (findViewById != null) {
                findViewById.startAnimation(loadAnimation);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.eventBus.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) null, false);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.eventBus.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) null, false);
    }
}
