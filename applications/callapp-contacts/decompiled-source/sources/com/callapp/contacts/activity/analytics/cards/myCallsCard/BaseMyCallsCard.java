package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard.class */
public abstract class BaseMyCallsCard<T, R> extends AnalyticsWrapperCard<T, R> {
    public PresentersContainer.MODE mode;

    public BaseMyCallsCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, i);
    }

    public BaseMyCallsCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887264);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 10;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    public abstract void refreshCardData();

    public void setDefaultDialer() {
        PopupManager.get().a(this.presentersContainer.getRealContext(), new OutgoingCallsLockDialog(this.presentersContainer));
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
