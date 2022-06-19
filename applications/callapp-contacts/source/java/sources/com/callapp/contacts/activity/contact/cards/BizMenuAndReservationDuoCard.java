package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.net.Uri;
import android.widget.ImageView;
import com.callapp.contacts.activity.contact.cards.ImageDuoCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard.class */
public class BizMenuAndReservationDuoCard extends ImageDuoCard {
    private static final EnumSet<ContactField> bizMenuListenFields = EnumSet.of(ContactField.menuUrl, ContactField.venueFoursquareId);
    private static final ContactField reservationListenField = ContactField.reserveUrl;
    private final ImageDuoCard.ItemHelper bizMenuHelper = new BizMenuHelper(getLeftItemBuilder());
    private final ImageDuoCard.ItemHelper reservationHelper = new ReservationHelper(getRightItemBuilder());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$BizMenuHelper.class */
    public class BizMenuHelper extends ImageDuoCard.ItemHelper {
        private final ImageDuoCard.ImageDuoObject.SingleImageObject.Builder itemBuilder;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        BizMenuHelper(ImageDuoCard.ImageDuoObject.SingleImageObject.Builder builder) {
            super();
            BizMenuAndReservationDuoCard.this = r4;
            this.itemBuilder = builder;
            builder.f21096a = Activities.getString(2131886365);
            builder.m31196a(ImageView.ScaleType.CENTER_CROP).m31193b(ImageView.ScaleType.FIT_XY).m31198a(2131231766).f21097b = getItemClickListener();
        }

        private void openMenuUrl(ContactData contactData) {
            String menuUrl = contactData.getMenuUrl();
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Duo card - Menu item clicked", StringUtils.m26045b((CharSequence) menuUrl) ? Activities.m27655b(BizMenuAndReservationDuoCard.this.presentersContainer.getRealContext(), menuUrl) ? "Success - opened via the menu url" : "Failed - no internt connection" : "Failed - no menu url");
        }

        @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
        public void onContactChanged(ContactData contactData, Set<ContactField> set) {
            synchronized (this.itemBuilder) {
                if (shouldLoadItem(contactData)) {
                    this.itemBuilder.m31197a(2131232053, 2131232052);
                } else {
                    this.itemBuilder.m31199a();
                }
                ImageDuoCard.ImageDuoObject.SingleImageObject.Builder builder = this.itemBuilder;
                builder.setShouldShowItem(builder.m31194b());
                BizMenuAndReservationDuoCard.this.updateCardData(null, false);
            }
        }

        @Override // com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper
        void onItemClicked() {
            openMenuUrl(BizMenuAndReservationDuoCard.this.presentersContainer.getContact());
        }

        @Override // com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper
        boolean shouldLoadItem(ContactData contactData) {
            return StringUtils.m26045b((CharSequence) contactData.getMenuUrl());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper.class */
    public class ReservationHelper extends ImageDuoCard.ItemHelper {
        private final ImageDuoCard.ImageDuoObject.SingleImageObject.Builder itemBuilder;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ReservationHelper(ImageDuoCard.ImageDuoObject.SingleImageObject.Builder builder) {
            super();
            BizMenuAndReservationDuoCard.this = r4;
            this.itemBuilder = builder;
            builder.f21096a = Activities.getString(2131887578);
            builder.m31196a(ImageView.ScaleType.CENTER_CROP).m31193b(ImageView.ScaleType.FIT_XY).m31198a(2131231866).f21097b = getItemClickListener();
        }

        private boolean isOpenTableInstalled() {
            return Activities.m27672a(new Intent("com.opentable.action.RESERVE", Uri.parse("reserve://opentable.com/1111")));
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00bd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void showReservation(android.content.Context r10, com.callapp.contacts.model.contact.ContactData r11) {
            /*
                Method dump skipped, instructions count: 219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.cards.BizMenuAndReservationDuoCard.ReservationHelper.showReservation(android.content.Context, com.callapp.contacts.model.contact.ContactData):void");
        }

        @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
        public void onContactChanged(ContactData contactData, Set<ContactField> set) {
            synchronized (this.itemBuilder) {
                if (shouldLoadItem(contactData)) {
                    this.itemBuilder.m31197a(2131232163, 2131232162);
                } else {
                    this.itemBuilder.m31199a();
                }
                ImageDuoCard.ImageDuoObject.SingleImageObject.Builder builder = this.itemBuilder;
                builder.setShouldShowItem(builder.m31194b());
                BizMenuAndReservationDuoCard.this.updateCardData(null, false);
            }
        }

        @Override // com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper
        void onItemClicked() {
            showReservation(BizMenuAndReservationDuoCard.this.presentersContainer.getRealContext(), BizMenuAndReservationDuoCard.this.presentersContainer.getContact());
        }

        @Override // com.callapp.contacts.activity.contact.cards.ImageDuoCard.ItemHelper
        boolean shouldLoadItem(ContactData contactData) {
            return StringUtils.m26045b((CharSequence) contactData.getReserveUrl());
        }
    }

    public BizMenuAndReservationDuoCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    public static boolean shouldShowDescrptionAsBizMenu(String str, int i) {
        return StringUtils.m26045b((CharSequence) str) || i > 0;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        EnumSet of = EnumSet.of(reservationListenField);
        of.addAll(bizMenuListenFields);
        return of;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 35;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (CollectionUtils.m26070a((Set) set, (Set) bizMenuListenFields)) {
            this.bizMenuHelper.onContactChanged(contactData, set);
        }
        if (set.contains(reservationListenField)) {
            this.reservationHelper.onContactChanged(contactData, set);
        }
    }
}
