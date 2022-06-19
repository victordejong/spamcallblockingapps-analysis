package com.callapp.contacts.action.shared;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.MediaStore;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.io.FileNotFoundException;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareFileAction.class */
public class ShareFileAction extends AbstractPhotoAction {
    /* renamed from: a */
    static /* synthetic */ void m31804a(ShareFileAction shareFileAction, final ContactData contactData, final Intent intent, final Context context) {
        new Task() { // from class: com.callapp.contacts.action.shared.ShareFileAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                Bitmap bitmap;
                Uri data = intent.getData();
                if (data == null) {
                    return;
                }
                try {
                    bitmap = ImageUtils.m27525a(CallAppApplication.get().getContentResolver().openInputStream(data));
                } catch (FileNotFoundException e) {
                    bitmap = null;
                }
                Bitmap bitmap2 = bitmap;
                if (bitmap == null) {
                    String str = (String) new ContentQuery(data).m29017a("_data").m29025a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.action.shared.ShareFileAction.2.1
                        @Override // com.callapp.contacts.framework.dao.RowCallback
                        public /* synthetic */ String onRow(RowContext rowContext) {
                            return rowContext.m29002a("_data");
                        }
                    }, (RowCallback<String>) null);
                    if (StringUtils.m26045b((CharSequence) str)) {
                        bitmap2 = ImageUtils.m27524a(str);
                    } else {
                        GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(data.toString()).m27023a(contactData.getPhotoDataSource());
                        m27023a.f28239e = context;
                        bitmap2 = m27023a.getBitmap();
                    }
                }
                if (bitmap2 == null) {
                    FeedbackManager.get().m28671a(Activities.getString(2131886194));
                    return;
                }
                FeedbackManager.get().m28669a(Activities.getString(2131886195), (Integer) null);
                String m31814a = ShareContactAction.m31814a(bitmap2);
                if (m31814a == null) {
                    FeedbackManager.get().m28671a(Activities.getString(2131886192));
                    return;
                }
                ShareFileAction shareFileAction2 = ShareFileAction.this;
                CallAppApplication.get();
                shareFileAction2.m31797a(contactData, m31814a);
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
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Share file action", Constants.CLICK);
        if (HttpUtils.m26985a()) {
            SmsUtils.m27394a(context, contactData.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareFileAction.1
                @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                /* renamed from: a */
                public final void mo27390a(Phone phone) {
                    contactData.setPhone(phone);
                    PopupManager.get().m28207a(context, new ResultPopup() { // from class: com.callapp.contacts.action.shared.ShareFileAction.1.1
                        @Override // com.callapp.contacts.manager.popup.ResultPopup
                        /* renamed from: a */
                        public final void mo27637a(Activity activity) {
                            m28185a(activity, new Intent("android.intent.action.PICK").setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI));
                        }

                        @Override // com.callapp.contacts.manager.popup.ResultPopup
                        /* renamed from: a */
                        public final void mo27902a(Intent intent) {
                            intent.addFlags(Activities.getIntentFlagForNewDocument());
                            intent.addFlags(536870912);
                        }

                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                            activity.finish();
                            if (i2 == -1) {
                                ShareFileAction.m31804a(ShareFileAction.this, contactData, intent, activity);
                            }
                        }
                    });
                }
            });
            return;
        }
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Didn't share photo", "No internet");
        FeedbackManager.m28675a(context);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887404);
    }
}
