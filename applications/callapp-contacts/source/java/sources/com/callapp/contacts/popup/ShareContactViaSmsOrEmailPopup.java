package com.callapp.contacts.popup;

import android.app.Activity;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.contacts.action.shared.ShareContactAction;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogMultipleChoice;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.widget.MultipleChoiceArrayAdapter;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup.class */
public class ShareContactViaSmsOrEmailPopup extends SelectContactDetailsPopup {

    /* renamed from: g */
    private final ContactData f26929g;

    /* renamed from: h */
    private final SimpleProgressDialog f26930h;

    /* renamed from: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2.class */
    public class C76282 extends Task {

        /* renamed from: a */
        final /* synthetic */ Activity f26932a;

        /* renamed from: b */
        final /* synthetic */ List f26933b;

        C76282(Activity activity, List list) {
            ShareContactViaSmsOrEmailPopup.this = r4;
            this.f26932a = activity;
            this.f26933b = list;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            SmsUtils.m27394a(this.f26932a, this.f26933b, new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.2.1
                @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                /* renamed from: a */
                public final void mo27390a(final Phone phone) {
                    new Task() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.2.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            SmsUtils.m27392b(C76282.this.f26932a, phone, ShareContactViaSmsOrEmailPopup.this.m28039a(false));
                            SimpleProgressDialog.m27939a(ShareContactViaSmsOrEmailPopup.this.f26930h);
                        }
                    }.execute();
                }
            });
        }
    }

    public ShareContactViaSmsOrEmailPopup(ArrayList<ShareContactAction.ShareItem> arrayList, ContactData contactData, ContactData contactData2, ShareContactAction.ShareContactState shareContactState, Activity activity) {
        super(arrayList, contactData, shareContactState, activity);
        this.f26929g = contactData2;
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f26930h = simpleProgressDialog;
        simpleProgressDialog.setIndeterminate(true);
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
    }

    private String getPhoneStr() {
        String m26101a = this.f26929g.getPhone().m26101a();
        String str = m26101a;
        if (StringUtils.m26059a((CharSequence) m26101a)) {
            str = !this.f26929g.getPhones().isEmpty() ? this.f26929g.getPhones().iterator().next().m26101a() : null;
        }
        return str;
    }

    /* renamed from: a */
    public final void m28038a(Activity activity, List<Phone> list) {
        PopupManager.get().m28209a(activity, this.f26930h);
        new C76282(activity, list).execute();
    }

    /* renamed from: a */
    public final void m28037a(final Activity activity, final String[] strArr) {
        PopupManager.get().m28209a(activity, this.f26930h);
        new Task() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String str;
                String nameOrNumber = ShareContactViaSmsOrEmailPopup.this.f26921a.getNameOrNumber();
                if ("0".equals(nameOrNumber)) {
                    str = Activities.getString(2131886645);
                } else {
                    str = Activities.getString(2131886645) + ": " + nameOrNumber;
                }
                Activities.m27673a(activity, strArr, str, ShareContactViaSmsOrEmailPopup.this.m28039a(true), "");
                SimpleProgressDialog.m27939a(ShareContactViaSmsOrEmailPopup.this.f26930h);
            }
        }.execute();
    }

    public String[] getEmailsFromContact() {
        String[] strArr = new String[1];
        Collection<JSONEmail> emails = this.f26929g.getEmails();
        if (emails.isEmpty()) {
            strArr[0] = null;
        } else {
            strArr[0] = emails.iterator().next().getEmail();
        }
        return strArr;
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public DialogMultipleChoice.MultipleChoiceDialogListener getListener() {
        return new DialogMultipleChoice.MultipleChoiceDialogListener() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.1
            @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
            /* renamed from: a */
            public final void mo27956a() {
                ArrayList<Integer> arrayList = new ArrayList<>();
                for (int i = 0; i < ShareContactViaSmsOrEmailPopup.this.f27209f.size(); i++) {
                    if (((MultipleChoiceArrayAdapter.MultipleChoiceRowData) ShareContactViaSmsOrEmailPopup.this.f27209f.get(i)).f28781c) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                if (arrayList.size() > 0) {
                    ShareContactViaSmsOrEmailPopup.this.setChoicesIndexes(arrayList);
                    String[] emailsFromContact = ShareContactViaSmsOrEmailPopup.this.getEmailsFromContact();
                    ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = ShareContactViaSmsOrEmailPopup.this;
                    shareContactViaSmsOrEmailPopup.m28037a(shareContactViaSmsOrEmailPopup.getActivity(), emailsFromContact);
                } else {
                    FeedbackManager.get().m28664b(Activities.getString(2131886755), (Integer) null);
                }
                ShareContactViaSmsOrEmailPopup.this.dismiss();
            }

            @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
            /* renamed from: a */
            public final void mo27955a(ArrayList<Integer> arrayList) {
                ShareContactViaSmsOrEmailPopup.this.setChoicesIndexes(arrayList);
                List phones = ShareContactViaSmsOrEmailPopup.this.getPhones();
                if (phones != null) {
                    ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = ShareContactViaSmsOrEmailPopup.this;
                    shareContactViaSmsOrEmailPopup.m28038a(shareContactViaSmsOrEmailPopup.getActivity(), phones);
                }
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getNegativeBtnText() {
        return Activities.getString(2131887663);
    }

    public List<Phone> getPhones() {
        return this.f26929g.getPhonesList();
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getPositiveBtnText() {
        return Activities.getString(2131887664);
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getTitleText() {
        String str;
        if (this.f26923c.equals(ShareContactAction.ShareContactState.sendingOthersInfo)) {
            str = this.f26921a.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE;
        } else {
            str = "";
        }
        return Activities.m27697a(2131887662, str);
    }

    @Override // com.callapp.contacts.popup.SelectContactDetailsPopup
    public boolean isNeedToShowPopup() {
        if (super.isNeedToShowPopup()) {
            return true;
        }
        return StringUtils.m26045b((CharSequence) getEmailsFromContact()[0]) && StringUtils.m26045b((CharSequence) getPhoneStr());
    }
}
