package com.callapp.contacts.activity.crop;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.loader.UserMediaManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.facebook.ads.AdError;
import com.theartofdev.edmodo.cropper.C17191g;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/crop/CallAppCropActivity.class */
public class CallAppCropActivity extends BaseNoTitleActivity {

    /* renamed from: a */
    private CropImageView f22885a;

    /* renamed from: b */
    private boolean f22886b;

    /* renamed from: c */
    private long f22887c;

    /* renamed from: d */
    private String f22888d;

    /* renamed from: e */
    private Uri f22889e;

    /* renamed from: f */
    private Uri f22890f;

    /* renamed from: g */
    private boolean f22891g;

    /* renamed from: h */
    private DefaultInterfaceImplUtils.ClickListener f22892h = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.crop.CallAppCropActivity.1
        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        /* renamed from: a */
        public final void mo26371a(View view) {
            int id = view.getId();
            if (id == 2131362247) {
                CallAppCropActivity.this.m30350a();
                CallAppCropActivity.this.setResult(-100);
                CallAppCropActivity.this.finish();
            } else if (id != 2131362620) {
                if (id != 2131363712) {
                    return;
                }
                CallAppCropActivity.this.f22885a.m5813a(-90);
            } else {
                final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                simpleProgressDialog.setMessage(CallAppCropActivity.this.getString(2131887865));
                simpleProgressDialog.setCancelable(false);
                PopupManager.get().m28209a(CallAppCropActivity.this, simpleProgressDialog);
                CallAppCropActivity.this.f22885a.setOnCropImageCompleteListener(new CropImageView.AbstractC17169d() { // from class: com.callapp.contacts.activity.crop.CallAppCropActivity.1.1
                    @Override // com.theartofdev.edmodo.cropper.CropImageView.AbstractC17169d
                    /* renamed from: a */
                    public final void mo5797a(CropImageView.C17166a c17166a) {
                        Intent intent = new Intent();
                        intent.putExtra("EXTRA_RESULT_URI", c17166a.getUri());
                        CallAppCropActivity.this.setResult(1000, intent);
                        SimpleProgressDialog.m27939a(simpleProgressDialog);
                        CallAppCropActivity.this.finish();
                    }
                });
                if (CallAppCropActivity.this.f22891g) {
                    CallAppCropActivity callAppCropActivity = CallAppCropActivity.this;
                    CallAppCropActivity.m30345a(callAppCropActivity, callAppCropActivity.f22887c, CallAppCropActivity.this.f22888d);
                }
                CallAppCropActivity.this.f22885a.m5809a(CallAppCropActivity.this.f22890f, Bitmap.CompressFormat.JPEG, 90, 0, 0, CropImageView.EnumC17174i.NONE);
            }
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder.class */
    public static class ImageCropBuilder implements Parcelable {
        public static final Parcelable.Creator<ImageCropBuilder> CREATOR = new Parcelable.Creator<ImageCropBuilder>() { // from class: com.callapp.contacts.activity.crop.CallAppCropActivity.ImageCropBuilder.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ImageCropBuilder createFromParcel(Parcel parcel) {
                return new ImageCropBuilder(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ ImageCropBuilder[] newArray(int i) {
                return new ImageCropBuilder[i];
            }
        };
        private long contactId;
        private Uri imagePathUri;
        private boolean isFromGallery;
        private String phoneNumber;
        private Uri savePathUri;
        private boolean shouldDelete;

        public ImageCropBuilder() {
        }

        protected ImageCropBuilder(Parcel parcel) {
            this.imagePathUri = (Uri) parcel.readParcelable(ImageCropBuilder.class.getClassLoader());
            this.savePathUri = (Uri) parcel.readParcelable(ImageCropBuilder.class.getClassLoader());
            this.phoneNumber = parcel.readString();
            this.isFromGallery = parcel.readByte() == 1;
            this.shouldDelete = parcel.readByte() == 1;
            this.contactId = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getContactId() {
            return this.contactId;
        }

        public Uri getImagePathUri() {
            return this.imagePathUri;
        }

        public String getPhoneNumber() {
            return this.phoneNumber;
        }

        public Uri getSavePathUri() {
            return this.savePathUri;
        }

        public boolean isFromGallery() {
            return this.isFromGallery;
        }

        public boolean isShouldDelete() {
            return this.shouldDelete;
        }

        public ImageCropBuilder setContactId(long j) {
            this.contactId = j;
            return this;
        }

        public ImageCropBuilder setImagePathUri(Uri uri) {
            this.imagePathUri = uri;
            return this;
        }

        public ImageCropBuilder setIsFromGallery(boolean z) {
            this.isFromGallery = z;
            return this;
        }

        public ImageCropBuilder setPhoneNumber(String str) {
            this.phoneNumber = str;
            return this;
        }

        public ImageCropBuilder setSavePathUri(Uri uri) {
            this.savePathUri = uri;
            return this;
        }

        public ImageCropBuilder setShouldDelete(boolean z) {
            this.shouldDelete = z;
            return this;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.imagePathUri, i);
            parcel.writeParcelable(this.savePathUri, i);
            parcel.writeString(this.phoneNumber);
            parcel.writeByte(this.isFromGallery ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.shouldDelete ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.contactId);
        }
    }

    /* renamed from: a */
    public static Uri m30348a(Intent intent) {
        return (Uri) intent.getParcelableExtra("EXTRA_RESULT_URI");
    }

    /* renamed from: a */
    public void m30350a() {
        if (!this.f22886b) {
            File file = new File(this.f22889e.getPath());
            if (!file.exists()) {
                return;
            }
            file.delete();
        }
    }

    /* renamed from: a */
    public static void m30349a(Activity activity, ImageCropBuilder imageCropBuilder) {
        Intent intent = new Intent(activity, CallAppCropActivity.class);
        intent.putExtra("EXTRA_IMAGE_CROP_BUILDER", imageCropBuilder);
        activity.startActivityForResult(intent, 20000);
    }

    /* renamed from: a */
    public static void m30347a(Fragment fragment, ImageCropBuilder imageCropBuilder) {
        Intent intent = new Intent(fragment.getContext(), CallAppCropActivity.class);
        intent.putExtra("EXTRA_IMAGE_CROP_BUILDER", imageCropBuilder);
        fragment.startActivityForResult(intent, 20000);
    }

    /* renamed from: a */
    static /* synthetic */ void m30345a(CallAppCropActivity callAppCropActivity, long j, String str) {
        ContactData contactData = (ContactData) Singletons.get().getContactLoaderManager().registerForContactDetailsStack(PhoneManager.get().m28239a(str), j, null, ContactFieldEnumSets.ALL).first;
        UserMediaData userMediaData = contactData.getUserMediaData();
        if (userMediaData != null && !TextUtils.isEmpty(userMediaData.getPhotoUrl())) {
            try {
                File file = new File(Uri.parse(userMediaData.getPhotoUrl()).getPath());
                if (file.exists()) {
                    file.delete();
                } else {
                    callAppCropActivity.getContentResolver().delete(Uri.parse(userMediaData.getPhotoUrl()), null, null);
                }
            } catch (Exception e) {
                CLog.m27609a(CallAppCropActivity.class, e);
            }
        }
        UserMediaManager.m28892b(contactData.getDeviceId(), contactData.getPhone());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558438;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m30350a();
        setResult(-100);
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ImageCropBuilder imageCropBuilder = (ImageCropBuilder) getIntent().getParcelableExtra("EXTRA_IMAGE_CROP_BUILDER");
        if (imageCropBuilder == null) {
            setResult(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
            finish();
            return;
        }
        this.f22885a = (CropImageView) findViewById(C17191g.C17192a.cropImageView);
        this.f22889e = imageCropBuilder.getImagePathUri();
        this.f22886b = imageCropBuilder.isFromGallery();
        this.f22887c = imageCropBuilder.getContactId();
        this.f22888d = imageCropBuilder.getPhoneNumber();
        this.f22891g = imageCropBuilder.isShouldDelete();
        this.f22890f = imageCropBuilder.getSavePathUri();
        if (this.f22889e == null) {
            setResult(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
            finish();
            return;
        }
        this.f22885a.setAspectRatio(Activities.getScreenWidth(1), Activities.getScreenHeight(1) / 2);
        this.f22885a.setImageUriAsync(this.f22889e);
        View findViewById = findViewById(2131363712);
        TextView textView = (TextView) findViewById(2131362620);
        TextView textView2 = (TextView) findViewById(2131362247);
        textView2.setText(Activities.getString(2131886506));
        textView.setText(Activities.getString(2131886784));
        textView.setOnClickListener(this.f22892h);
        findViewById.setOnClickListener(this.f22892h);
        textView2.setOnClickListener(this.f22892h);
    }
}
