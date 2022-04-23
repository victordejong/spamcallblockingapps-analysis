package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MultiCardContainer.class */
public interface MultiCardContainer<T> {

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/MultiCardContainer$_CC.class */
    public final /* synthetic */ class _CC {
        public static boolean $default$shouldShowCardBackground(MultiCardContainer multiCardContainer) {
            return false;
        }
    }

    boolean addToMultiCard(ContactCard contactCard);

    T getData();

    PresentersContainer getPresentersContainer();

    boolean isInExpandMode();

    void onAnimatorEndListener();

    void removeFromMultiCard(ContactCard contactCard);

    boolean shouldShowCardBackground();

    void updateHeaderTitle(String str);
}
