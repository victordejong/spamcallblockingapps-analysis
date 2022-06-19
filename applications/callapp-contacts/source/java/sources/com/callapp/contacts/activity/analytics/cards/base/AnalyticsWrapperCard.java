package com.callapp.contacts.activity.analytics.cards.base;

import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard.class */
public abstract class AnalyticsWrapperCard<ViewHolder, Data> extends ContactCard<ViewHolder, Data> implements UpdateAnalyticsCardEvent {
    public static final float HEADER_ANALYITICS_SIZE = 16.0f;

    public AnalyticsWrapperCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, i);
        this.presentersContainer.getEventBus().m29048a(UpdateAnalyticsCardEvent.f19922a, this);
    }

    public AnalyticsWrapperCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
        presentersContainer.getEventBus().m29048a(UpdateAnalyticsCardEvent.f19922a, this);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getCommonListenFields() {
        return Collections.EMPTY_SET;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public float getHeaderTextSize() {
        return 16.0f;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        this.presentersContainer.getEventBus().m29045b(UpdateAnalyticsCardEvent.f19922a, this);
    }
}
