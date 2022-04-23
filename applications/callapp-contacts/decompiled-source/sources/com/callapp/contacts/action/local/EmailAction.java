package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/EmailAction.class */
public class EmailAction extends LocalAction {
    @Override // com.callapp.contacts.action.Action
    public final void b(final Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Email action", Constants.CLICK);
        Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
        if (!visibleEmails.isEmpty()) {
            int i = 0;
            if (visibleEmails.size() == 1) {
                Activities.a(context, new String[]{visibleEmails.iterator().next().getEmail()}, "");
                return;
            }
            if (baseAdapterItemData != null) {
                for (JSONEmail jSONEmail : visibleEmails) {
                    if (jSONEmail.getEmail().equals(baseAdapterItemData.displayName)) {
                        Activities.a(context, new String[]{jSONEmail.getEmail()}, "");
                        return;
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            final String[] strArr = new String[visibleEmails.size()];
            for (JSONEmail jSONEmail2 : visibleEmails) {
                arrayList.add(new AdapterText.ItemText(jSONEmail2.getEmail(), i));
                strArr[i] = jSONEmail2.getEmail();
                i++;
            }
            final DialogList dialogList = new DialogList(Activities.getString(2131886782));
            AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
            adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.local.EmailAction.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i2) {
                    dialogList.dismiss();
                    AndroidUtils.a((Activity) context);
                    Activities.a(context, new String[]{strArr[i2]}, "");
                }
            });
            dialogList.setAdapter(adapterText);
            PopupManager.get().a(context, dialogList);
            return;
        }
        Activities.a(context, (String[]) null, "");
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(2131886807);
    }
}
