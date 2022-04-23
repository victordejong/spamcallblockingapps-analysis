package com.callapp.contacts.activity.contact.cards;

import android.util.Pair;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/OpeningHoursCard.class */
public class OpeningHoursCard extends SimpleExpandableCard {
    public OpeningHoursCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
    }

    private String getOpeningHoursListText(Collection<String> collection) {
        String str = "";
        boolean z = true;
        for (String str2 : collection) {
            String str3 = str;
            if (!z) {
                str3 = str + " ,";
            }
            z = false;
            str = str3 + str2;
        }
        return str;
    }

    private List refreshListData(List<Pair<String, Collection<String>>> list) {
        ArrayList arrayList = new ArrayList();
        SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
        builder.a(2131231799).j = 2131100140;
        Collection<String> collection = (Collection) list.get(0).second;
        if (CollectionUtils.b(collection)) {
            builder.f11918d = Activities.getString(2131887361);
            builder.g = getOpeningHoursListText(collection);
        } else {
            builder.f11918d = Activities.getString(2131887359);
            builder.f = 2131099675;
        }
        arrayList.add(0, builder.a(this));
        for (int i = 0; i < 7; i++) {
            Collection<String> collection2 = (Collection) list.get(i).second;
            SimpleCardListObject.Builder builder2 = new SimpleCardListObject.Builder();
            SimpleCardListObject.Builder a2 = builder2.a(2131231799);
            a2.j = 2131100140;
            a2.w = 4;
            if (CollectionUtils.b(collection2)) {
                builder2.f11918d = (String) list.get(i).first;
                builder2.g = getOpeningHoursListText(collection2);
            } else {
                builder2.f11918d = (String) list.get(i).first;
                builder2.g = Activities.getString(2131886566);
                builder2.i = 2131099675;
            }
            arrayList.add(builder2.a(this));
        }
        return arrayList;
    }

    private void updateDataFromContact(ContactData contactData) {
        List<Pair<String, Collection<String>>> allWeekOpeningHours = contactData.getAllWeekOpeningHours();
        if (CollectionUtils.b(allWeekOpeningHours)) {
            updateCardData(refreshListData(allWeekOpeningHours));
            showCard(true);
            return;
        }
        hideCard();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.openingHours);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 30;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
        } else {
            updateDataFromContact(contactData);
        }
    }
}
