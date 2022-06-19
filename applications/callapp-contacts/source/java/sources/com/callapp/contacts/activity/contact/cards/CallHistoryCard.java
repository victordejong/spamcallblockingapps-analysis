package com.callapp.contacts.activity.contact.cards;

import android.util.Pair;
import android.view.View;
import com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.CallHistoryData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.date.DateUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CallHistoryCard.class */
public class CallHistoryCard extends SimpleExpandableCard {
    private static final int MAX_CALL_HISTORY_ROWS = 4;

    public CallHistoryCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
        setFooterData(new SimpleExpandableCard.FooterData(Activities.getString(2131887699), new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.CallHistoryCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ContactData contact = CallHistoryCard.this.presentersContainer.getContact();
                ContactCallLogActivity.m31313a(CallHistoryCard.this.presentersContainer.getRealContext(), contact.getDeviceId(), contact.getPhone());
            }
        }));
    }

    private ArrayList<SimpleCardListObject> getDataList(List<Pair<String, CallHistoryData>> list) {
        if (list.size() > 0) {
            int min = Math.min(list.size(), 4);
            ArrayList<SimpleCardListObject> arrayList = new ArrayList<>(min);
            int i = 0;
            while (i < min) {
                SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                builder.f21521d = DateUtils.m27116d(((CallHistoryData) list.get(i).second).getLastCallTimeStamp());
                SimpleCardListObject.Builder m31089a = builder.m31089a(2131231545);
                m31089a.f21527j = 2131100140;
                m31089a.f21540w = i == 0 ? 0 : 4;
                m31089a.f21524g = PhoneManager.get().m28239a((String) list.get(i).first).m26087e() + " (" + DateUtils.m27137a((int) ((CallHistoryData) list.get(i).second).getDuration()) + ")";
                m31089a.f21510G = CallLogUtils.getCallHistoryIcon(((CallHistoryData) list.get(i).second).getCallType());
                arrayList.add(m31089a.m31087a(this));
                i++;
            }
            return arrayList;
        }
        return null;
    }

    private void showCallHistory(List<Pair<String, CallHistoryData>> list) {
        if (list == null || list.size() <= 0) {
            hideCard();
            return;
        }
        updateCardData(getDataList(list));
        showCard(false);
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
        return EnumSet.of(ContactField.callHistoryData);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 75;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.mo30920a(contactData)) {
            hideCard();
        } else {
            showCallHistory(contactData.getAllCallHistoryData());
        }
    }
}
