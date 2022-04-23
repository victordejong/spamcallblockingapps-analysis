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
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.g;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/crop/CallAppCropActivity.class */
public class CallAppCropActivity extends BaseNoTitleActivity {

    /* renamed from: a  reason: collision with root package name */
    private CropImageView f12806a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12807b;

    /* renamed from: c  reason: collision with root package name */
    private long f12808c;

    /* renamed from: d  reason: collision with root package name */
    private String f12809d;
    private Uri e;
    private Uri f;
    private boolean g;
    private DefaultInterfaceImplUtils.ClickListener h = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.crop.CallAppCropActivity.1
        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        public final void a(View view) {
            int id = view.getId();
            if (id == 2131362247) {
                CallAppCropActivity.this.a();
                CallAppCropActivity.this.setResult(-100);
                CallAppCropActivity.this.finish();
            } else if (id == 2131362620) {
                final SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
                simpleProgressDialog.setMessage(CallAppCropActivity.this.getString(2131887865));
                simpleProgressDialog.setCancelable(false);
                PopupManager.get().a(CallAppCropActivity.this, simpleProgressDialog);
                CallAppCropActivity.this.f12806a.setOnCropImageCompleteListener(new CropImageView.d() { // from class: com.callapp.contacts.activity.crop.CallAppCropActivity.1.1
                    @Override // com.theartofdev.edmodo.cropper.CropImageView.d
                    public final void a(CropImageView.a aVar) {
                        Intent intent = new Intent();
                        intent.putExtra("EXTRA_RESULT_URI", aVar.getUri());
                        CallAppCropActivity.this.setResult(1000, intent);
                        SimpleProgressDialog.a(simpleProgressDialog);
                        CallAppCropActivity.this.finish();
                    }
                });
                if (CallAppCropActivity.this.g) {
                    CallAppCropActivity callAppCropActivity = CallAppCropActivity.this;
                    CallAppCropActivity.a(callAppCropActivity, callAppCropActivity.f12808c, CallAppCropActivity.this.f12809d);
                }
                CallAppCropActivity.this.f12806a.a(CallAppCropActivity.this.f, Bitmap.CompressFormat.JPEG, 90, 0, 0, CropImageView.i.NONE);
            } else if (id == 2131363712) {
                CallAppCropActivity.this.f12806a.a(-90);
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
            boolean z = false;
            this.isFromGallery = parcel.readByte() == 1;
            this.shouldDelete = parcel.readByte() == 1 ? true : z;
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

    public static Uri a(Intent intent) {
        return (Uri) intent.getParcelableExtra("EXTRA_RESULT_URI");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (!this.f12807b) {
            File file = new File(this.e.getPath());
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void a(Activity activity, ImageCropBuilder imageCropBuilder) {
        Intent intent = new Intent(activity, CallAppCropActivity.class);
        intent.putExtra("EXTRA_IMAGE_CROP_BUILDER", imageCropBuilder);
        activity.startActivityForResult(intent, 20000);
    }

    public static void a(Fragment fragment, ImageCropBuilder imageCropBuilder) {
        Intent intent = new Intent(fragment.getContext(), CallAppCropActivity.class);
        intent.putExtra("EXTRA_IMAGE_CROP_BUILDER", imageCropBuilder);
        fragment.startActivityForResult(intent, 20000);
    }

    static /* synthetic */ void a(CallAppCropActivity callAppCropActivity, long j, String str) {
        ContactData contactData = (ContactData) Singletons.get().getContactLoaderManager().registerForContactDetailsStack(PhoneManager.get().a(str), j, null, ContactFieldEnumSets.ALL).first;
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
                CLog.a(CallAppCropActivity.class, e);
            }
        }
        UserMediaManager.b(contactData.getDeviceId(), contactData.getPhone());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558438;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        a();
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
        this.f12806a = (CropImageView) findViewById(g.a.cropImageView);
        this.e = imageCropBuilder.getImagePathUri();
        this.f12807b = imageCropBuilder.isFromGallery();
        this.f12808c = imageCropBuilder.getContactId();
        this.f12809d = imageCropBuilder.getPhoneNumber();
        this.g = imageCropBuilder.isShouldDelete();
        this.f = imageCropBuilder.getSavePathUri();
        if (this.e == null) {
            setResult(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE);
            finish();
            return;
        }
        this.f12806a.setAspectRatio(Activities.getScreenWidth(1), Activities.getScreenHeight(1) / 2);
        this.f12806a.setImageUriAsync(this.e);
        View findViewById = findViewById(2131363712);
        TextView textView = (TextView) findViewById(2131362620);
        TextView textView2 = (TextView) findViewById(2131362247);
        textView2.setText(Activities.getString(2131886506));
        textView.setText(Activities.getString(2131886784));
        textView.setOnClickListener(this.h);
        findViewById.setOnClickListener(this.h);
        textView2.setOnClickListener(this.h);
    }
}
