package com.callapp.contacts.activity.analytics.cards.base;

import com.callapp.contacts.activity.contact.cards.MultiCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/base/AnalyticsMultiCardWrapper.class */
public class AnalyticsMultiCardWrapper extends MultiCard {
    public AnalyticsMultiCardWrapper(PresentersContainer presentersContainer, String str, int i) {
        super(presentersContainer, str, i);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public float getHeaderTextSize() {
        return 16.0f;
    }
}
