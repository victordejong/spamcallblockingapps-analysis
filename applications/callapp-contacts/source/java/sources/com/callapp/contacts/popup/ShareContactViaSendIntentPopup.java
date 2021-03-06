package com.callapp.contacts.popup;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.action.shared.ShareContactAction;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogMultipleChoice;
import com.callapp.contacts.util.Activities;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareContactViaSendIntentPopup.class */
public class ShareContactViaSendIntentPopup extends SelectContactDetailsPopup {
    public ShareContactViaSendIntentPopup(ArrayList<ShareContactAction.ShareItem> arrayList, ContactData contactData, ShareContactAction.ShareContactState shareContactState, Activity activity) {
        super(arrayList, contactData, shareContactState, activity);
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public DialogMultipleChoice.MultipleChoiceDialogListener getListener() {
        return new DialogMultipleChoice.MultipleChoiceDialogListener() { // from class: com.callapp.contacts.popup.ShareContactViaSendIntentPopup.1
            @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
            /* renamed from: a */
            public final void mo27956a() {
                ShareContactViaSendIntentPopup.this.dismiss();
            }

            @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
            /* renamed from: a */
            public final void mo27955a(ArrayList<Integer> arrayList) {
                ShareContactViaSendIntentPopup.this.setChoicesIndexes(arrayList);
                String a = ShareContactViaSendIntentPopup.this.m28039a(false);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", a);
                intent.setType("text/plain");
                ShareContactViaSendIntentPopup.this.f26925e.startActivity(Intent.createChooser(intent, Activities.getString(2131887665)));
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getPositiveBtnText() {
        return Activities.getString(2131887624);
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getTitleText() {
        return Activities.m27697a(2131887662, this.f26921a.getFirstName() + StringUtils.SPACE);
    }
}
