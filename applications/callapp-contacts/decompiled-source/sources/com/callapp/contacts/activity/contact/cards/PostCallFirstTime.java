package com.callapp.contacts.activity.contact.cards;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/PostCallFirstTime.class */
public class PostCallFirstTime extends AnalyticsWrapperCard<PostCallFirstTimeHolder, Object> implements ShowToolTipOnPostCard {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/PostCallFirstTime$PostCallFirstTimeHolder.class */
    public class PostCallFirstTimeHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f11731b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f11732c;

        public PostCallFirstTimeHolder(View view) {
            this.f11731b = (TextView) view.findViewById(2131364130);
            this.f11732c = (TextView) view.findViewById(2131364011);
        }
    }

    public PostCallFirstTime(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558663);
        presentersContainer.getEventBus().a(ShowToolTipOnPostCard.f11762a, this);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return ThemeUtils.a(CallAppApplication.get(), 2131100145);
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
        return 14;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(PostCallFirstTimeHolder postCallFirstTimeHolder) {
        postCallFirstTimeHolder.f11732c.setTextColor(ThemeUtils.getColor(2131100108));
        postCallFirstTimeHolder.f11731b.setTextColor(ThemeUtils.getColor(2131100140));
        postCallFirstTimeHolder.f11732c.setText(Activities.getString(2131886910));
        postCallFirstTimeHolder.f11731b.setText(Activities.getString(2131886911));
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public PostCallFirstTimeHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new PostCallFirstTimeHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        this.presentersContainer.getEventBus().b(ShowToolTipOnPostCard.f11762a, this);
    }

    @Override // com.callapp.contacts.activity.contact.cards.ShowToolTipOnPostCard
    public void onPostCallNeedToShowToolTip(boolean z) {
        if (z) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.PostCallFirstTime.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Prefs.hj.get().booleanValue()) {
                        if (Prefs.hi.get().intValue() % 2 == 0 && Prefs.hi.get().intValue() < 5) {
                            PostCallFirstTime.this.showCard(true);
                        }
                        Prefs.hi.b(1);
                        return;
                    }
                    PostCallFirstTime.this.hideCard();
                }
            });
        } else {
            hideCard();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void updateCardData(Object obj, boolean z) {
    }
}
