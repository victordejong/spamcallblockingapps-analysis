package com.callapp.contacts.activity.crop;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.util.Activities;
import com.mopub.mobileads.VastVideoViewController;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/crop/ChooseImageSourceDialogListener.class */
public class ChooseImageSourceDialogListener implements ChooseImageSourceDialog.OnChooseImageSourceClickListener {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f12813a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f12814b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Fragment> f12815c;

    /* renamed from: d  reason: collision with root package name */
    private String f12816d;
    private Intent e;
    private int f;
    private String g;
    private int h;
    private String i;

    public ChooseImageSourceDialogListener(Activity activity, Uri uri, String str) {
        this.f12813a = null;
        this.f12814b = null;
        this.f12815c = null;
        this.f12813a = new WeakReference<>(activity);
        this.f12814b = uri;
        this.f12816d = str;
    }

    public ChooseImageSourceDialogListener(Fragment fragment) {
        this.f12813a = null;
        this.f12814b = null;
        this.f12815c = null;
        this.f12815c = new WeakReference<>(fragment);
    }

    public final void a() {
        WeakReference<Fragment> weakReference;
        WeakReference<Activity> weakReference2 = this.f12813a;
        if (weakReference2 != null && weakReference2.get() != null) {
            this.f12813a.get().startActivityForResult(this.e, this.f);
        } else if (!Activities.a(this.e) || (weakReference = this.f12815c) == null || weakReference.get() == null || !this.f12815c.get().isAdded()) {
            FeedbackManager.get().a(Activities.getString(2131888143), (Integer) null);
        } else {
            this.f12815c.get().startActivityForResult(this.e, this.f);
        }
    }

    @Override // com.callapp.contacts.popup.ChooseImageSourceDialog.OnChooseImageSourceClickListener
    public final void a(DialogPopup dialogPopup, ChooseImageSourceDialog.ImageSourceType imageSourceType) {
        dialogPopup.dismiss();
        if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.IMAGE) {
            AnalyticsManager.get().a(this.f12816d, "Chosen local image", "Gallery");
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            Intent intent2 = new Intent("android.intent.action.PICK");
            intent2.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
            Intent createChooser = Intent.createChooser(intent, "Select Image");
            this.e = createChooser;
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent2});
            this.f = 25000;
        } else if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.VIDEO) {
            AnalyticsManager.get().a(this.f12816d, "Chosen local video", "Gallery");
            Intent dataAndType = new Intent("android.intent.action.PICK").setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*");
            this.e = dataAndType;
            if (!Activities.a(dataAndType)) {
                Intent intent3 = new Intent("android.intent.action.GET_CONTENT");
                this.e = intent3;
                intent3.setType("video/*");
            }
            this.f = 26000;
        }
        a();
    }

    @Override // com.callapp.contacts.popup.ChooseImageSourceDialog.OnChooseImageSourceClickListener
    public final void b(DialogPopup dialogPopup, ChooseImageSourceDialog.ImageSourceType imageSourceType) {
        dialogPopup.dismiss();
        if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.IMAGE) {
            AnalyticsManager.get().a(this.f12816d, "Chosen local image", "Camera");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            this.e = intent;
            intent.putExtra("output", this.f12814b);
            this.f = 15000;
        } else if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.VIDEO) {
            AnalyticsManager.get().a(this.f12816d, "Chosen local image", "Video");
            Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
            this.e = intent2;
            intent2.putExtra("android.intent.extra.videoQuality", 1);
            this.f = VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON;
        }
        a();
    }

    public String getContactId() {
        return this.i;
    }

    public int getFlowType() {
        return this.h;
    }

    public String getUpdatePersonalStoreItemUrl() {
        return this.g;
    }

    public void setCameraPhotoFile(Uri uri) {
        this.f12814b = uri;
    }

    public void setContactId(String str) {
        this.i = str;
    }

    public void setFlowType(int i) {
        this.h = i;
    }

    public void setFragmentWeakReference(WeakReference<Fragment> weakReference) {
        this.f12815c = weakReference;
    }

    public void setUpdatePersonalStoreItemUrl(String str) {
        this.g = str;
    }
}
