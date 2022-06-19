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

    /* renamed from: a */
    private WeakReference<Activity> f22896a;

    /* renamed from: b */
    private Uri f22897b;

    /* renamed from: c */
    private WeakReference<Fragment> f22898c;

    /* renamed from: d */
    private String f22899d;

    /* renamed from: e */
    private Intent f22900e;

    /* renamed from: f */
    private int f22901f;

    /* renamed from: g */
    private String f22902g;

    /* renamed from: h */
    private int f22903h;

    /* renamed from: i */
    private String f22904i;

    public ChooseImageSourceDialogListener(Activity activity, Uri uri, String str) {
        this.f22896a = null;
        this.f22897b = null;
        this.f22898c = null;
        this.f22896a = new WeakReference<>(activity);
        this.f22897b = uri;
        this.f22899d = str;
    }

    public ChooseImageSourceDialogListener(Fragment fragment) {
        this.f22896a = null;
        this.f22897b = null;
        this.f22898c = null;
        this.f22898c = new WeakReference<>(fragment);
    }

    /* renamed from: a */
    public final void m30339a() {
        WeakReference<Fragment> weakReference;
        WeakReference<Activity> weakReference2 = this.f22896a;
        if (weakReference2 != null && weakReference2.get() != null) {
            this.f22896a.get().startActivityForResult(this.f22900e, this.f22901f);
        } else if (!Activities.m27672a(this.f22900e) || (weakReference = this.f22898c) == null || weakReference.get() == null || !this.f22898c.get().isAdded()) {
            FeedbackManager.get().m28669a(Activities.getString(2131888143), (Integer) null);
        } else {
            this.f22898c.get().startActivityForResult(this.f22900e, this.f22901f);
        }
    }

    @Override // com.callapp.contacts.popup.ChooseImageSourceDialog.OnChooseImageSourceClickListener
    /* renamed from: a */
    public final void mo28062a(DialogPopup dialogPopup, ChooseImageSourceDialog.ImageSourceType imageSourceType) {
        dialogPopup.dismiss();
        if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.IMAGE) {
            AnalyticsManager.get().m28449a(this.f22899d, "Chosen local image", "Gallery");
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            Intent intent2 = new Intent("android.intent.action.PICK");
            intent2.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
            Intent createChooser = Intent.createChooser(intent, "Select Image");
            this.f22900e = createChooser;
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent2});
            this.f22901f = 25000;
        } else if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.VIDEO) {
            AnalyticsManager.get().m28449a(this.f22899d, "Chosen local video", "Gallery");
            Intent dataAndType = new Intent("android.intent.action.PICK").setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*");
            this.f22900e = dataAndType;
            if (!Activities.m27672a(dataAndType)) {
                Intent intent3 = new Intent("android.intent.action.GET_CONTENT");
                this.f22900e = intent3;
                intent3.setType("video/*");
            }
            this.f22901f = 26000;
        }
        m30339a();
    }

    @Override // com.callapp.contacts.popup.ChooseImageSourceDialog.OnChooseImageSourceClickListener
    /* renamed from: b */
    public final void mo28061b(DialogPopup dialogPopup, ChooseImageSourceDialog.ImageSourceType imageSourceType) {
        dialogPopup.dismiss();
        if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.IMAGE) {
            AnalyticsManager.get().m28449a(this.f22899d, "Chosen local image", "Camera");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            this.f22900e = intent;
            intent.putExtra("output", this.f22897b);
            this.f22901f = 15000;
        } else if (imageSourceType == ChooseImageSourceDialog.ImageSourceType.VIDEO) {
            AnalyticsManager.get().m28449a(this.f22899d, "Chosen local image", "Video");
            Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
            this.f22900e = intent2;
            intent2.putExtra("android.intent.extra.videoQuality", 1);
            this.f22901f = VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON;
        }
        m30339a();
    }

    public String getContactId() {
        return this.f22904i;
    }

    public int getFlowType() {
        return this.f22903h;
    }

    public String getUpdatePersonalStoreItemUrl() {
        return this.f22902g;
    }

    public void setCameraPhotoFile(Uri uri) {
        this.f22897b = uri;
    }

    public void setContactId(String str) {
        this.f22904i = str;
    }

    public void setFlowType(int i) {
        this.f22903h = i;
    }

    public void setFragmentWeakReference(WeakReference<Fragment> weakReference) {
        this.f22898c = weakReference;
    }

    public void setUpdatePersonalStoreItemUrl(String str) {
        this.f22902g = str;
    }
}
