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

    /* renamed from: a */
    private int f19336a;

    /* renamed from: b */
    private int f19337b;

    /* renamed from: a */
    static /* synthetic */ void m31817a(ShareCameraAction shareCameraAction, final ContactData contactData, String str) {
        final Bitmap m27524a = ImageUtils.m27524a(str);
        FeedbackManager.get().m28669a(Activities.getString(2131886199), (Integer) null);
        new Task() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String m31814a = ShareContactAction.m31814a(m27524a);
                if (m31814a == null) {
                    FeedbackManager.get().m28671a(Activities.getString(2131886198));
                    return;
                }
                ShareCameraAction shareCameraAction2 = ShareCameraAction.this;
                CallAppApplication.get();
                shareCameraAction2.m31797a(contactData, m31814a);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contextType != Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET) {
            return false;
        }
        return super.mo31798a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Share camera action", Constants.CLICK);
        if (!HttpUtils.m26985a()) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Didn't share Camera", "No internet");
            FeedbackManager.m28675a(context);
            return;
        }
        String format = String.format("callApp-snapshot-%s.jpg", Long.valueOf(System.currentTimeMillis()));
        File m27510a = IoUtils.m27510a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), format);
        if (m27510a == null) {
            m27510a = IoUtils.m27510a(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), format);
            if (m27510a == null) {
                m27510a = IoUtils.m27508a(format);
            }
        }
        if (m27510a == null) {
            FeedbackManager.get().m28671a("Error creating photo file");
            return;
        }
        final Uri m27518a = IoUtils.m27518a(context, m27510a);
        final String absolutePath = m27510a.getAbsolutePath();
        if (context instanceof Activity) {
            View findViewById = ((Activity) context).getWindow().getDecorView().findViewById(16908290);
            this.f19336a = findViewById.getWidth();
            this.f19337b = findViewById.getHeight();
        }
        SmsUtils.m27394a(context, contactData.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.1
            @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
            /* renamed from: a */
            public final void mo27390a(Phone phone) {
                contactData.setPhone(phone);
                PopupManager.get().m28207a(context, new ResultPopup() { // from class: com.callapp.contacts.action.shared.ShareCameraAction.1.1
                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    /* renamed from: a */
                    public final void mo27637a(Activity activity) {
                        m28185a(activity, new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", m27518a));
                    }

                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    /* renamed from: a */
                    public final void mo27902a(Intent intent) {
                        intent.addFlags(Activities.getIntentFlagForNewDocument());
                    }

                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        activity.finish();
                        if (i2 == -1) {
                            MediaScannerConnection.scanFile(activity, new String[]{absolutePath}, null, null);
                            ShareCameraAction.m31817a(ShareCameraAction.this, contactData, absolutePath);
                        }
                        if (context instanceof Activity) {
                            View findViewById2 = ((Activity) context).getWindow().getDecorView().findViewById(16908290);
                            ViewGroup.LayoutParams layoutParams = findViewById2.getLayoutParams();
                            layoutParams.height = ShareCameraAction.this.f19337b;
                            layoutParams.width = ShareCameraAction.this.f19336a;
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
