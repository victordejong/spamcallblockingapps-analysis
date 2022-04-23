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
    private final ContactData g;
    private final SimpleProgressDialog h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$2.class */
    public class AnonymousClass2 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f15362a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f15363b;

        AnonymousClass2(Activity activity, List list) {
            this.f15362a = activity;
            this.f15363b = list;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            SmsUtils.a(this.f15362a, this.f15363b, new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.2.1
                @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                public final void a(final Phone phone) {
                    new Task() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.2.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            SmsUtils.b(AnonymousClass2.this.f15362a, phone, ShareContactViaSmsOrEmailPopup.this.a(false));
                            SimpleProgressDialog.a(ShareContactViaSmsOrEmailPopup.this.h);
                        }
                    }.execute();
                }
            });
        }
    }

    public ShareContactViaSmsOrEmailPopup(ArrayList<ShareContactAction.ShareItem> arrayList, ContactData contactData, ContactData contactData2, ShareContactAction.ShareContactState shareContactState, Activity activity) {
        super(arrayList, contactData, shareContactState, activity);
        this.g = contactData2;
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.h = simpleProgressDialog;
        simpleProgressDialog.setIndeterminate(true);
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
    }

    private String getPhoneStr() {
        String a2 = this.g.getPhone().a();
        String str = a2;
        if (StringUtils.a((CharSequence) a2)) {
            str = !this.g.getPhones().isEmpty() ? this.g.getPhones().iterator().next().a() : null;
        }
        return str;
    }

    public final void a(Activity activity, List<Phone> list) {
        PopupManager.get().a(activity, this.h);
        new AnonymousClass2(activity, list).execute();
    }

    public final void a(final Activity activity, final String[] strArr) {
        PopupManager.get().a(activity, this.h);
        new Task() { // from class: com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String str;
                String nameOrNumber = ShareContactViaSmsOrEmailPopup.this.f15355a.getNameOrNumber();
                if ("0".equals(nameOrNumber)) {
                    str = Activities.getString(2131886645);
                } else {
                    str = Activities.getString(2131886645) + ": " + nameOrNumber;
                }
                Activities.a(activity, strArr, str, ShareContactViaSmsOrEmailPopup.this.a(true), "");
                SimpleProgressDialog.a(ShareContactViaSmsOrEmailPopup.this.h);
            }
        }.execute();
    }

    public String[] getEmailsFromContact() {
        String[] strArr = new String[1];
        Collection<JSONEmail> emails = this.g.getEmails();
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
            public final void a() {
                ArrayList<Integer> arrayList = new ArrayList<>();
                for (int i = 0; i < ShareContactViaSmsOrEmailPopup.this.f.size(); i++) {
                    if (((MultipleChoiceArrayAdapter.MultipleChoiceRowData) ShareContactViaSmsOrEmailPopup.this.f.get(i)).f16547c) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                if (arrayList.size() > 0) {
                    ShareContactViaSmsOrEmailPopup.this.setChoicesIndexes(arrayList);
                    String[] emailsFromContact = ShareContactViaSmsOrEmailPopup.this.getEmailsFromContact();
                    ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = ShareContactViaSmsOrEmailPopup.this;
                    shareContactViaSmsOrEmailPopup.a(shareContactViaSmsOrEmailPopup.getActivity(), emailsFromContact);
                } else {
                    FeedbackManager.get().b(Activities.getString(2131886755), (Integer) null);
                }
                ShareContactViaSmsOrEmailPopup.this.dismiss();
            }

            @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice.MultipleChoiceDialogListener
            public final void a(ArrayList<Integer> arrayList) {
                ShareContactViaSmsOrEmailPopup.this.setChoicesIndexes(arrayList);
                List phones = ShareContactViaSmsOrEmailPopup.this.getPhones();
                if (phones != null) {
                    ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = ShareContactViaSmsOrEmailPopup.this;
                    shareContactViaSmsOrEmailPopup.a(shareContactViaSmsOrEmailPopup.getActivity(), phones);
                }
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getNegativeBtnText() {
        return Activities.getString(2131887663);
    }

    public List<Phone> getPhones() {
        return this.g.getPhonesList();
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getPositiveBtnText() {
        return Activities.getString(2131887664);
    }

    @Override // com.callapp.contacts.popup.contact.DialogMultipleChoice
    public String getTitleText() {
        String str;
        if (this.f15357c.equals(ShareContactAction.ShareContactState.sendingOthersInfo)) {
            str = this.f15355a.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE;
        } else {
            str = "";
        }
        return Activities.a(2131887662, str);
    }

    @Override // com.callapp.contacts.popup.SelectContactDetailsPopup
    public boolean isNeedToShowPopup() {
        if (super.isNeedToShowPopup()) {
            return true;
        }
        return StringUtils.b((CharSequence) getEmailsFromContact()[0]) && StringUtils.b((CharSequence) getPhoneStr());
    }
}
