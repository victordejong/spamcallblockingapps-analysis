package com.callapp.contacts.activity.contact.cards;

import android.view.View;
import android.widget.AdapterView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImCommunicationCard.class */
public class ImCommunicationCard extends HorizontalCircleImageGalleryCard<ImIconData> {
    private final AdapterView.OnItemClickListener itemClickedListener = new AdapterView.OnItemClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ImCommunicationCard.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AndroidUtils.a(view, 1);
            ImIconData imIconData = (ImIconData) ImCommunicationCard.this.getGalleryAdapter().getItem(i);
            if (imIconData != null) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.CONTACT_DETAILS, "Im communication card", "Pressed on " + imIconData.f11628a);
                Singletons.get();
                ImSender a2 = Singletons.a(imIconData.f11628a);
                if (a2.isAppInstalled()) {
                    a2.openIm(ImCommunicationCard.this.presentersContainer.getRealContext(), ImCommunicationCard.this.presentersContainer.getContact());
                } else {
                    FeedbackManager.get().a(Activities.getString(2131886832));
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData.class */
    public static class ImIconData extends HorizontalIconGalleryItemData implements Comparable<ImIconData> {

        /* renamed from: a  reason: collision with root package name */
        final Singletons.SenderType f11628a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ImIconData(int r4, com.callapp.contacts.manager.Singletons.SenderType r5) {
            /*
                r3 = this;
                com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData$Builder r0 = new com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData$Builder
                r1 = r0
                r1.<init>()
                r6 = r0
                r0 = r6
                r1 = r4
                r0.f11874a = r1
                r0 = r3
                r1 = r6
                r0.<init>(r1)
                r0 = r3
                r1 = r5
                r0.f11628a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.cards.ImCommunicationCard.ImIconData.<init>(int, com.callapp.contacts.manager.Singletons$SenderType):void");
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ImIconData imIconData) {
            return (int) (imIconData.f11628a.getUseCount() - this.f11628a.getUseCount());
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f11628a == ((ImIconData) obj).f11628a;
        }

        @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalIconGalleryItemData
        public int hashCode() {
            Singletons.SenderType senderType = this.f11628a;
            if (senderType != null) {
                return senderType.hashCode();
            }
            return 0;
        }
    }

    public ImCommunicationCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165961);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public String getFooterText() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderTextColor() {
        return ThemeUtils.a(CallAppApplication.get(), 2131100108);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887011);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone, ContactField.imAddresses, ContactField.skype, ContactField.yahoo, ContactField.googlePlusHangoutDataId, ContactField.emails, ContactField.gmailData, ContactField.facebookId);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnFooterClickedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public AdapterView.OnItemClickListener getOnItemClickedListener() {
        return this.itemClickedListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRightIconClickedListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalGalleryCard
    public View.OnClickListener getOnRowClickListener() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 120;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        Singletons.SenderType[] values;
        if (contactData.isUnknownNumber() || this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            hideCard();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Singletons.SenderType senderType : Singletons.SenderType.values()) {
            Singletons.get();
            ImSender a2 = Singletons.a(senderType);
            if (a2.canUseIm(contactData)) {
                arrayList.add(new ImIconData(a2.getImIconResId(), senderType));
            }
        }
        Collections.sort(arrayList);
        if (arrayList.size() > 0) {
            boolean z = !CollectionUtils.a(arrayList, getDataList());
            if (z) {
                updateCardData((List) arrayList, false);
            }
            showCard(z);
            return;
        }
        hideCard();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
