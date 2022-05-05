package com.android.contacts.detail;

import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.editor.f;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.a;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/PhotoSelectionHandler.class */
public abstract class PhotoSelectionHandler implements View.OnClickListener {
    private static final int REQUEST_CODE_CAMERA_WITH_DATA = 1001;
    private static final int REQUEST_CODE_PHOTO_CROP_WITH_DATA = 1003;
    private static final int REQUEST_CODE_PHOTO_PICKED_WITH_DATA = 1002;
    private static final String TAG = PhotoSelectionHandler.class.getSimpleName();
    protected final Context mContext;
    private final Uri mCroppedPhotoUri;
    private final boolean mIsDirectoryContact;
    private final int mPhotoMode;
    private final int mPhotoPickSize;
    private final View mPhotoView;
    private ListPopupWindow mPopup;
    private int mRawContactsCount;
    private final RawContactDeltaList mState;
    private final Uri mTempPhotoUri;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener.class */
    public abstract class PhotoActionListener implements f.b {
        public PhotoActionListener() {
        }

        public abstract String getCurrentPhotoFile();

        @Override // com.android.contacts.editor.f.b
        public abstract void onChangePhotoChosen();

        public abstract void onPhotoSelected(Uri uri);

        public abstract void onPhotoSelectionDismissed();

        @Override // com.android.contacts.editor.f.b
        public void onPickFromCloudApp() {
            try {
                PhotoSelectionHandler.this.startPickFromCloudActivity(ContactPhotoUtils.generateTempPhotoFileName());
            } catch (ActivityNotFoundException e) {
                Toast.makeText(PhotoSelectionHandler.this.mContext, 2131755946, 1).show();
            }
        }

        @Override // com.android.contacts.editor.f.b
        public void onPickFromGalleryChosen() {
            try {
                PhotoSelectionHandler.this.startPickFromGalleryActivity(PhotoSelectionHandler.this.mTempPhotoUri);
            } catch (ActivityNotFoundException e) {
                Toast.makeText(PhotoSelectionHandler.this.mContext, 2131755946, 1).show();
            }
        }

        @Override // com.android.contacts.editor.f.b
        public void onRemovePictureChosen() {
        }

        @Override // com.android.contacts.editor.f.b
        public void onTakePhotoChosen() {
            try {
                PhotoSelectionHandler.this.startTakePhotoActivity(PhotoSelectionHandler.this.mTempPhotoUri);
            } catch (ActivityNotFoundException e) {
                Toast.makeText(PhotoSelectionHandler.this.mContext, 2131755946, 1).show();
            }
        }

        @Override // com.android.contacts.editor.f.b
        public void onUseAsPrimaryChosen() {
        }
    }

    public PhotoSelectionHandler(Context context, View view, int i, boolean z, RawContactDeltaList rawContactDeltaList) {
        this.mRawContactsCount = 0;
        this.mContext = context;
        this.mPhotoView = view;
        this.mPhotoMode = i;
        this.mIsDirectoryContact = z;
        this.mState = rawContactDeltaList;
        this.mPhotoPickSize = getPhotoPickSize(context);
        this.mTempPhotoUri = ContactPhotoUtils.generateTempImageUri(context);
        this.mCroppedPhotoUri = ContactPhotoUtils.generateTempCroppedImageUri(context);
    }

    public PhotoSelectionHandler(Context context, View view, int i, boolean z, RawContactDeltaList rawContactDeltaList, int i2) {
        this.mRawContactsCount = 0;
        this.mContext = context;
        this.mPhotoView = view;
        this.mPhotoMode = i;
        this.mIsDirectoryContact = z;
        this.mState = rawContactDeltaList;
        this.mPhotoPickSize = getPhotoPickSize(context);
        this.mRawContactsCount = i2;
        this.mTempPhotoUri = ContactPhotoUtils.generateTempImageUri(context);
        this.mCroppedPhotoUri = ContactPhotoUtils.generateTempCroppedImageUri(context);
    }

    private void doCropPhoto(Uri uri, Uri uri2) {
        try {
            startPhotoActivity(getCropImageIntent(uri, uri2), REQUEST_CODE_PHOTO_CROP_WITH_DATA, uri.toString());
        } catch (Exception e) {
            Log.e(TAG, "Cannot crop image", e);
            Toast.makeText(this.mContext, 2131755946, 1).show();
        }
    }

    private void doCropPhoto(String str) {
        try {
            String pathForNewCameraPhoto = ContactPhotoUtils.pathForNewCameraPhoto(str);
            String pathForCroppedPhoto = ContactPhotoUtils.pathForCroppedPhoto(this.mContext, str);
            MediaScannerConnection.scanFile(this.mContext, new String[]{pathForNewCameraPhoto}, new String[]{null}, null);
            startPhotoActivity(getCropImageIntent(pathForNewCameraPhoto, pathForCroppedPhoto), REQUEST_CODE_PHOTO_CROP_WITH_DATA, str);
        } catch (Exception e) {
            Log.e(TAG, "Cannot crop image", e);
            Toast.makeText(this.mContext, 2131755946, 1).show();
        }
    }

    private void doCropPhotoOther(Uri uri) {
        String generateTempPhotoFileName = ContactPhotoUtils.generateTempPhotoFileName();
        startPhotoActivity(getCropImageIntent(uri, ContactPhotoUtils.pathForCroppedPhoto(this.mContext, generateTempPhotoFileName)), REQUEST_CODE_PHOTO_CROP_WITH_DATA, generateTempPhotoFileName);
    }

    private void doCropPhotoOther(String str) {
        try {
            String generateTempPhotoFileName = ContactPhotoUtils.generateTempPhotoFileName();
            String pathForCroppedPhoto = ContactPhotoUtils.pathForCroppedPhoto(this.mContext, generateTempPhotoFileName);
            MediaScannerConnection.scanFile(this.mContext, new String[]{str}, new String[]{null}, null);
            startPhotoActivity(getCropImageIntent(str, pathForCroppedPhoto), REQUEST_CODE_PHOTO_CROP_WITH_DATA, generateTempPhotoFileName);
        } catch (Exception e) {
            Log.e(TAG, "Cannot crop image", e);
            Toast.makeText(this.mContext, 2131755946, 1).show();
        }
    }

    private Intent getCloudPickIntent(String str) {
        Uri fromFile = Uri.fromFile(new File(ContactPhotoUtils.pathForCroppedPhoto(this.mContext, str)));
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setPackage("com.vcast.mediamanager");
        intent.setType("image/*");
        ContactPhotoUtils.addGalleryIntentExtras(intent, fromFile, this.mPhotoPickSize);
        return intent;
    }

    private Intent getCropImageIntent(Uri uri, Uri uri2) {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        ContactPhotoUtils.addPhotoPickerExtras(intent, uri2);
        ContactPhotoUtils.addCropExtras(intent, this.mPhotoPickSize);
        return intent;
    }

    private Intent getCropImageIntent(Uri uri, String str) {
        Uri fromFile = Uri.fromFile(new File(str));
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        ContactPhotoUtils.addGalleryIntentExtras(intent, fromFile, this.mPhotoPickSize);
        return intent;
    }

    private Intent getCropImageIntent(String str, String str2) {
        Uri parse = Uri.parse(str);
        Uri parse2 = Uri.parse(str2);
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(parse, "image/*");
        ContactPhotoUtils.addPhotoPickerExtras(intent, parse2);
        ContactPhotoUtils.addCropExtras(intent, this.mPhotoPickSize);
        return intent;
    }

    private Intent getPhotoPickIntent(Uri uri) {
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setType("image/*");
        ContactPhotoUtils.addPhotoPickerExtras(intent, uri);
        return intent;
    }

    private int getPhotoPickSize(Context context) {
        int i;
        if (NecessaryPermissionDenyActivity.startPermissionActivity(this.mContext)) {
            i = 0;
        } else {
            Cursor query = this.mContext.getContentResolver().query(ContactsContract.DisplayPhoto.CONTENT_MAX_DIMENSIONS_URI, new String[]{"display_max_dim"}, null, null, null);
            int i2 = -1;
            try {
                if (query != null) {
                    i2 = -1;
                    try {
                        if (query.moveToFirst()) {
                            i2 = query.getColumnIndex("display_max_dim");
                        }
                    } catch (Exception e) {
                        Log.d(TAG, e.toString());
                        if (query != null) {
                            query.close();
                        }
                        i = 480;
                    }
                }
                if (i2 >= 0) {
                    Log.d(TAG, "c.getInt(primaryColumnIndex):" + query.getInt(i2));
                    int i3 = query.getInt(i2);
                    i = i3;
                    if (query != null) {
                        query.close();
                        i = i3;
                    }
                } else {
                    if (query != null) {
                        query.close();
                    }
                    i = 480;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        return i;
    }

    private Intent getTakePhotoIntent(Uri uri) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE", (Uri) null);
        ContactPhotoUtils.addPhotoPickerExtras(intent, uri);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPickFromCloudActivity(String str) {
        startPhotoActivity(getCloudPickIntent(str), REQUEST_CODE_PHOTO_PICKED_WITH_DATA, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPickFromGalleryActivity(Uri uri) {
        Intent photoPickIntent = getPhotoPickIntent(uri);
        if (uri != null) {
            startPhotoActivity(photoPickIntent, REQUEST_CODE_PHOTO_PICKED_WITH_DATA, uri.toString());
        } else {
            Log.d(TAG, "startPickFromGalleryActivity photoUri is null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTakePhotoActivity(Uri uri) {
        Intent takePhotoIntent = getTakePhotoIntent(uri);
        if (uri != null) {
            startPhotoActivity(takePhotoIntent, 1001, uri.toString());
        } else {
            Log.d(TAG, "startTakePhotoActivity photoUri is null.");
        }
    }

    public void destroy() {
        if (this.mPopup != null) {
            this.mPopup.dismiss();
        }
    }

    public RawContactDeltaList getDeltaForAttachingPhotoToContact() {
        RawContactDeltaList rawContactDeltaList;
        int writableEntityIndex = getWritableEntityIndex();
        if (writableEntityIndex != -1) {
            RawContactDelta rawContactDelta = this.mState.get(writableEntityIndex);
            ContentValues p = rawContactDelta.f1987a.p();
            RawContactDelta.ValuesDelta a2 = com.android.contacts.model.f.a(rawContactDelta, a.a(this.mContext).a(p.getAsString(SelectAccountActivity.ACCOUNT_TYPE), p.getAsString(SelectAccountActivity.DATA_SET)), "vnd.android.cursor.item/photo");
            if (a2 != null) {
                a2.e = false;
                a2.r();
            }
            rawContactDeltaList = this.mState;
        } else {
            rawContactDeltaList = null;
        }
        return rawContactDeltaList;
    }

    public abstract PhotoActionListener getListener();

    public String getRealPathFromURI(Uri uri) {
        Throwable th;
        Cursor query;
        String str;
        String str2;
        Cursor cursor = null;
        if (uri == null) {
            Log.d(TAG, "getRealPathFromURI uri is null");
            str2 = null;
        } else {
            try {
                query = this.mContext.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                if (query != null) {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("_data");
                    query.moveToFirst();
                    str = query.getString(columnIndexOrThrow);
                } else {
                    Log.d(TAG, "contentUri = " + uri + " cursor is null");
                    str = null;
                }
                str2 = str;
                if (query != null) {
                    query.close();
                    str2 = str;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = query;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getWritableEntityId() {
        int writableEntityIndex = getWritableEntityIndex();
        return writableEntityIndex == -1 ? -1L : this.mState.get(writableEntityIndex).f1987a.a().longValue();
    }

    public int getWritableEntityIndex() {
        return this.mIsDirectoryContact ? -1 : this.mState.a(this.mContext);
    }

    public boolean handlePhotoActivityResult(int i, int i2, Intent intent) {
        PhotoActionListener listener;
        Uri parse;
        boolean z;
        boolean z2 = true;
        try {
            listener = getListener();
        } catch (Exception e) {
            Log.d(TAG, "exctption" + e.toString());
        }
        if (i2 == -1) {
            switch (i) {
                case 1001:
                case REQUEST_CODE_PHOTO_PICKED_WITH_DATA /* 1002 */:
                    if (intent == null || intent.getData() == null) {
                        parse = Uri.parse(listener.getCurrentPhotoFile());
                        z = true;
                    } else {
                        parse = intent.getData();
                        z = false;
                    }
                    if (!z) {
                        Uri uri = this.mTempPhotoUri;
                        try {
                            if (!ContactPhotoUtils.savePhotoFromUriToUri(this.mContext, parse, uri, false)) {
                                z2 = false;
                                break;
                            } else {
                                parse = uri;
                            }
                        } catch (SecurityException e2) {
                            Log.d(TAG, "Did not have read-access to uri : " + parse);
                            z2 = false;
                            break;
                        }
                    }
                    doCropPhoto(parse, this.mCroppedPhotoUri);
                    break;
                case REQUEST_CODE_PHOTO_CROP_WITH_DATA /* 1003 */:
                    Uri data = (intent == null || intent.getData() == null) ? this.mCroppedPhotoUri : intent.getData();
                    try {
                        if (!(this.mContext == null || this.mTempPhotoUri == null)) {
                            this.mContext.getContentResolver().delete(this.mTempPhotoUri, null, null);
                        }
                        listener.onPhotoSelected(data);
                        break;
                    } catch (FileNotFoundException e3) {
                        z2 = false;
                        break;
                    }
                    break;
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        final PhotoActionListener listener = getListener();
        if (listener != null && getWritableEntityIndex() != -1) {
            Context context = this.mContext;
            View view2 = this.mPhotoView;
            int i = this.mPhotoMode;
            int i2 = this.mRawContactsCount;
            final ArrayList arrayList = new ArrayList(4);
            if ((i & 1) > 0) {
                arrayList.add(new f.a(0, context.getString(2131756353)));
            }
            if ((i & 2) > 0) {
                arrayList.add(new f.a(3, context.getString(2131756057)));
            }
            if ((i & 4) > 0) {
                boolean z = (i & 8) > 0;
                String string = context.getString(z ? 2131756229 : 2131756230);
                String string2 = context.getString(z ? 2131755950 : 2131755951);
                String string3 = context.getString(z ? 2131755949 : 2131755948);
                arrayList.add(new f.a(1, string));
                arrayList.add(new f.a(2, string2));
                if (PhoneCapabilityTester.isVerizon() && MainDialtactsActivity.supportClouldapp(context)) {
                    arrayList.add(new f.a(5, string3));
                }
                if (i2 > 1 && PhoneCapabilityTester.IsAsusDevice()) {
                    arrayList.add(new f.a(4, context.getString(2131755089)));
                }
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, 2131427652, arrayList);
            final ListPopupWindow listPopupWindow = new ListPopupWindow(context);
            AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.editor.f.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view3, int i3, long j) {
                    switch (((a) arrayList.get(i3)).f1226a) {
                        case 0:
                            listener.onUseAsPrimaryChosen();
                            break;
                        case 1:
                            listener.onTakePhotoChosen();
                            break;
                        case 2:
                            listener.onPickFromGalleryChosen();
                            break;
                        case 3:
                            listener.onRemovePictureChosen();
                            break;
                        case 4:
                            listener.onChangePhotoChosen();
                            break;
                        case 5:
                            listener.onPickFromCloudApp();
                            break;
                    }
                    listPopupWindow.dismiss();
                }
            };
            listPopupWindow.setAnchorView(view2);
            listPopupWindow.setAdapter(arrayAdapter);
            listPopupWindow.setOnItemClickListener(onItemClickListener);
            listPopupWindow.setModal(true);
            listPopupWindow.setInputMethodMode(2);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131100256);
            if (view2.getWidth() < dimensionPixelSize) {
                listPopupWindow.setWidth(dimensionPixelSize);
            }
            this.mPopup = listPopupWindow;
            this.mPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.android.contacts.detail.PhotoSelectionHandler.1
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    listener.onPhotoSelectionDismissed();
                }
            });
            this.mPopup.show();
        }
    }

    public abstract void startPhotoActivity(Intent intent, int i, String str);
}
