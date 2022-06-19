package com.callapp.contacts.activity.contact.cards;

import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/DummyTransparentCard.class */
public class DummyTransparentCard extends SimpleCard<SimpleCardListObject, SimpleLayoutViewHolder<SimpleCardListObject>> implements CallStateListener {
    private int cardInitHeight;

    public DummyTransparentCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer);
        this.cardInitHeight = i;
        presentersContainer.getEventBus().m29048a(CallStateListener.f26070d, this);
        updateCardData((DummyTransparentCard) new SimpleCardListObject.Builder().m31087a(this), true);
        showCard(true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return this.cardInitHeight;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return Integer.MAX_VALUE;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (callData.getState().isPreCall() || callData.getState().isPostCall()) {
            this.cardInitHeight = CallAppApplication.get().getResources().getDimensionPixelSize(2131165420);
            showCard(true);
        }
        if (callData.getState().isOutgoing() || callData.getState().isTalking()) {
            this.cardInitHeight = CallAppApplication.get().getResources().getDimensionPixelSize(2131165419);
            showCard(true);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder<SimpleCardListObject> onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder<>(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        this.presentersContainer.getEventBus().m29045b(CallStateListener.f26070d, this);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void setBackground(CardView cardView) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void setElevation() {
    }
}
