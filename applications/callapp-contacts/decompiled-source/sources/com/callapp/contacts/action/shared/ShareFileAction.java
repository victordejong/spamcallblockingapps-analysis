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
    static /* synthetic */ void a(ShareFileAction shareFileAction, final ContactData contactData, final Intent intent, final Context context) {
        new Task() { // from class: com.callapp.contacts.action.shared.ShareFileAction.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                Bitmap bitmap;
                Uri data = intent.getData();
                if (data != null) {
                    try {
                        bitmap = ImageUtils.a(CallAppApplication.get().getContentResolver().openInputStream(data));
                    } catch (FileNotFoundException e) {
                        bitmap = null;
                    }
                    Bitmap bitmap2 = bitmap;
                    if (bitmap == null) {
                        String str = (String) new ContentQuery(data).a("_data").a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.action.shared.ShareFileAction.2.1
                            @Override // com.callapp.contacts.framework.dao.RowCallback
                            public /* synthetic */ String onRow(RowContext rowContext) {
                                return rowContext.a("_data");
                            }
                        }, (RowCallback<String>) null);
                        if (StringUtils.b((CharSequence) str)) {
                            bitmap2 = ImageUtils.a(str);
                        } else {
                            GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(data.toString()).a(contactData.getPhotoDataSource());
                            a2.e = context;
                            bitmap2 = a2.getBitmap();
                        }
                    }
                    if (bitmap2 == null) {
                        FeedbackManager.get().a(Activities.getString(2131886194));
                        return;
                    }
                    FeedbackManager.get().a(Activities.getString(2131886195), (Integer) null);
                    String a3 = ShareContactAction.a(bitmap2);
                    if (a3 != null) {
                        ShareFileAction shareFileAction2 = ShareFileAction.this;
                        CallAppApplication.get();
                        shareFileAction2.a(contactData, a3);
                        return;
                    }
                    FeedbackManager.get().a(Activities.getString(2131886192));
                }
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
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Share file action", Constants.CLICK);
        if (!HttpUtils.a()) {
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Didn't share photo", "No internet");
            FeedbackManager.a(context);
            return;
        }
        SmsUtils.a(context, contactData.getPhonesList(), new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareFileAction.1
            @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
            public final void a(Phone phone) {
                contactData.setPhone(phone);
                PopupManager.get().a(context, new ResultPopup() { // from class: com.callapp.contacts.action.shared.ShareFileAction.1.1
                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    public final void a(Activity activity) {
                        a(activity, new Intent("android.intent.action.PICK").setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI));
                    }

                    @Override // com.callapp.contacts.manager.popup.ResultPopup
                    public final void a(Intent intent) {
                        intent.addFlags(Activities.getIntentFlagForNewDocument());
                        intent.addFlags(536870912);
                    }

                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        activity.finish();
                        if (i2 == -1) {
                            ShareFileAction.a(ShareFileAction.this, contactData, intent, activity);
                        }
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131887404);
    }
}
