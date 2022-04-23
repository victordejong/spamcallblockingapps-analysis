package com.callapp.contacts.activity.contact.cards;

import android.content.ClipData;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/PhonesCard.class */
public class PhonesCard extends SimpleExpandableCard implements CallStateListener {
    private static final int FADE_START_DELAY_MILLIS = 2000;
    private int verificationIcon;
    private String verificationText;

    public PhonesCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
        this.presentersContainer.addCallStateListener(this);
    }

    private SimpleCardListObject buildSimpleObject(final Phone phone, boolean z, boolean z2) {
        String e = phone.e();
        SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
        builder.f11918d = e;
        builder.g = phone.getPhoneInfo();
        SimpleCardListObject.Builder a2 = builder.a(2131231835);
        a2.j = 2131100140;
        a2.f = 2131100140;
        a2.l = 2131231896;
        a2.o = 2131099784;
        a2.t = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                PhonesCard.this.sendSMS(phone);
            }
        };
        a2.f11916b = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                PhonesCard.this.callNumber(phone);
            }
        };
        a2.k = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                PhonesCard.this.callNumber(phone);
            }
        };
        a2.f11917c = new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PhonesCard.this.showPhoneNumberPopup(phone);
                return true;
            }
        };
        if (z2 && StringUtils.b((CharSequence) this.verificationText)) {
            a2.g = phone.getPhoneInfo() + " (" + this.verificationText + ")";
            a2.G = this.verificationIcon;
        }
        if (!z) {
            a2.w = 4;
        }
        return a2.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNumber(Phone phone) {
        if (!PhoneStateManager.get().isAnyCallActive() && !PhoneStateManager.get().isIncomingCallRingingState()) {
            PhoneManager.a(this.presentersContainer.getRealContext(), phone, this.presentersContainer.getContact().getDeviceId(), this.presentersContainer.getContact().getFullName(), Constants.CONTACT_DETAILS, "Dial", this.presentersContainer.a(this.presentersContainer.getContact()), null);
            if (this.presentersContainer.a(this.presentersContainer.getContact())) {
                this.presentersContainer.getEventBus().a((EventType<L, EventType<OnIncognitoCallStartedListener, ContactData>>) OnIncognitoCallStartedListener.f12952a, (EventType<OnIncognitoCallStartedListener, ContactData>) this.presentersContainer.getContact(), false);
            }
        }
    }

    private ArrayList<SimpleCardListObject> getDataList(ContactData contactData, boolean z) {
        if (contactData == null) {
            return null;
        }
        String e = contactData.getPhone().e();
        if (!CollectionUtils.b(contactData.getPhonesList())) {
            return null;
        }
        HashSet<Phone> hashSet = new HashSet(contactData.getPhonesList());
        ArrayList<SimpleCardListObject> arrayList = new ArrayList<>(hashSet.size());
        for (Phone phone : hashSet) {
            if (phone != null && phone.isNotEmpty()) {
                boolean z2 = true;
                if (!e.equals(phone.e())) {
                    z2 = hashSet.size() == 1;
                }
                SimpleCardListObject buildSimpleObject = buildSimpleObject(phone, z2, z);
                if (z2) {
                    arrayList.add(0, buildSimpleObject);
                } else {
                    arrayList.add(buildSimpleObject);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSMS(Phone phone) {
        SmsUtils.c(this.presentersContainer.getRealContext(), phone, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPhoneNumberPopup(final Phone phone) {
        final Context realContext = this.presentersContainer.getRealContext();
        final DialogList dialogList = new DialogList(phone.e());
        dialogList.setDialogType(Popup.DialogType.withInset);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterText.ItemText(Activities.getString(2131886664), 2131886664));
        arrayList.add(new AdapterText.ItemText(Activities.getString(2131888147), 2131888147));
        if (this.presentersContainer.getContact().getPhonesList().size() > 1) {
            arrayList.add(new AdapterText.ItemText(Activities.getString(2131887634), 2131887634));
        }
        AdapterText adapterText = new AdapterText(realContext, 2131558570, arrayList);
        adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.7
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                dialogList.dismiss();
                if (i == 2131886664) {
                    CallAppClipboardManager.get().setPrimaryClip$387437e0(ClipData.newPlainText(Activities.getString(2131887392), phone.getRawNumber()));
                    FeedbackManager.get().a(Activities.getString(2131887864), (Integer) null);
                } else if (i == 2131887634) {
                    new Task() { // from class: com.callapp.contacts.activity.contact.cards.PhonesCard.7.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            ContactUtils.a(PhonesCard.this.presentersContainer.getContact().getDeviceId(), phone);
                            PhonesCard.this.presentersContainer.getContact().setPhone(phone);
                            FeedbackManager.get().a(Activities.getString(2131887329), (Integer) null);
                        }
                    }.execute();
                } else if (i == 2131888147) {
                    ContactCallLogActivity.a(realContext, PhonesCard.this.presentersContainer.getContact().getDeviceId(), phone);
                }
            }
        });
        dialogList.setAdapter(adapterText);
        PopupManager.get().a(realContext, dialogList);
    }

    private void updatePhones(ContactData contactData, boolean z) {
        updateCardData(getDataList(contactData, z));
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public boolean alignRowsWithFirstRowExpandButton() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phones, ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00cc, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.s.get().booleanValue() != false) goto L_0x00cf;
     */
    @Override // com.callapp.contacts.manager.phone.CallStateListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCallStateChanged(com.callapp.contacts.model.call.CallData r7) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.cards.PhonesCard.onCallStateChanged(com.callapp.contacts.model.call.CallData):void");
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (contactData.isUnknownNumber()) {
            hideCard();
            return;
        }
        updatePhones(contactData, false);
        showCard(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return super.onCreateViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean shouldHideCardOnThemeChange() {
        return false;
    }
}
