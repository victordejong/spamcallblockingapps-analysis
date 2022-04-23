package com.callapp.contacts.action.shared;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareCameraAction.class */
public class ShareCameraAction extends AbstractPhotoAction {

    /* renamed from: a  reason: collision with root package name */
    private int f10564a;

    /* renamed from: b  reason: collision with root package name */
    private int f10565b;

    static /* synthetic */ void a(ShareCameraAction shareCameraAction, final ContactData contactData, String str) {
        final Bitmap a2 = ImageUtils.a(str);
        FeedbackManager.get().a(Activities.getString(2131886199), (Integer) null);
        new Task() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String a3 = ShareContactAction.a(a2);
                if (a3 != null) {
                    ShareCameraAction shareCameraAction2 = ShareCameraAction.this;
                    CallAppApplication.get();
                    shareCameraAction2.a(contactData, a3);
                    return;
                }
                FeedbackManager.get().a(Activities.getString(2131886198));
            }
        }.execute();
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contextType != Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET) {
            return false;
        }
        return super.a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Share camera action", Constants.CLICK);
        if (!HttpUtils.a()) {
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Didn't share Camera", "No internet");
            FeedbackManager.a(context);
            return;
        }
        String format = String.format("callApp-snapshot-%s.jpg", Long.valueOf(System.currentTimeMillis()));
        File a2 = IoUtils.a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), format);
        if (a2 == null) {
            a2 = IoUtils.a(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), format);
            if (a2 == null) {
                a2 = IoUtils.a(format);
            }
        }
        if (a2 == null) {
            FeedbackManager.get().a("Error creating photo file");
            return;
        }
        final Uri a3 = IoUtils.a(context, a2);
        final String absolutePath = a2.getAbsolutePath();
        if (context instanceof Activity) {
            View findViewById = ((Activity) context).getWindow().getDecorView().findViewById(16908290);
            this.f10564a = findViewById.getWidth();
            this.f10565b = findViewById.getHeight();
        }
        SmsUtils.a(context, contactData.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.1
            @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
            public final void a(Phone phone) {
                contactData.setPhone(phone);
                PopupManager.get().a(context, new ResultPopup() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.1.1
                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    public final void a(Activity activity) {
                        a(activity, new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", a3));
                    }

                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    public final void a(Intent intent) {
                        intent.addFlags(Activities.getIntentFlagForNewDocument());
                    }

                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        activity.finish();
                        if (i2 == -1) {
                            MediaScannerConnection.scanFile(activity, new String[]{absolutePath}, null, null);
                            ShareCameraAction.a(ShareCameraAction.this, contactData, absolutePath);
                        }
                        if (context instanceof Activity) {
                            View findViewById2 = ((Activity) context).getWindow().getDecorView().findViewById(16908290);
                            ViewGroup.LayoutParams layoutParams = findViewById2.getLayoutParams();
                            layoutParams.height = ShareCameraAction.this.f10565b;
                            layoutParams.width = ShareCameraAction.this.f10564a;
                            findViewById2.setLayoutParams(layoutParams);
                        }
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131886498);
    }
}
