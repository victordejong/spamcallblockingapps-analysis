package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.EnumSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� #2\u001a\u0012\n\u0012\b\u0018\u00010\u0002R\u00020��\u0012\n\u0012\b\u0018\u00010\u0003R\u00020��0\u0001:\u0003#$%B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016J\u0016\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0018\u00010\u0002R\u00020��H\u0014J\u001e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0018\u0010\u001c\u001a\b\u0018\u00010\u0002R\u00020��2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\b\u0010\u001f\u001a\u00020\nH\u0016J\u001e\u0010 \u001a\u00020\u00162\f\u0010!\u001a\b\u0018\u00010\u0003R\u00020��2\u0006\u0010\"\u001a\u00020\nH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006&"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;", "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;", "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;", "Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V", "cardPriority", "", "shouldShowCard", "", "getShouldShowCard", "()Z", "setShouldShowCard", "(Z)V", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getPriority", "onBindViewHolder", "", "cardViewHolder", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "showShouldExpandButton", "updateCardData", "data", "forceRefresh", "Companion", "ShareAppCViewHolder", "ShareAppObject", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ReferAndEarnCard.class */
public final class ReferAndEarnCard extends ContactCard<ShareAppCViewHolder, ShareAppObject> {
    public static final Companion Companion = new Companion(null);
    public static final int NUMBER_OF_CALLS_TO_CHANGE_PRIORITY = 75;
    private int cardPriority = 12;
    private boolean shouldShowCard;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion;", "", "()V", "NUMBER_OF_CALLS_TO_CHANGE_PRIORITY", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ReferAndEarnCard$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u000bR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder;", "", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;Landroid/view/View;)V", "divider", "getDivider", "()Landroid/view/View;", "shareCardButton", "Landroid/widget/TextView;", "getShareCardButton", "()Landroid/widget/TextView;", "shareCardDescription", "getShareCardDescription", "shareCardIcon", "Landroid/widget/ImageView;", "getShareCardIcon", "()Landroid/widget/ImageView;", "shareCardName", "getShareCardName", "shareCardProfilePicture", "Lcom/callapp/contacts/widget/ProfilePictureView;", "getShareCardProfilePicture", "()Lcom/callapp/contacts/widget/ProfilePictureView;", "setShareCardProfilePicture", "(Lcom/callapp/contacts/widget/ProfilePictureView;)V", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppCViewHolder.class */
    public final class ShareAppCViewHolder {

        /* renamed from: a */
        final /* synthetic */ ReferAndEarnCard f21226a;

        /* renamed from: b */
        private final ImageView f21227b;

        /* renamed from: c */
        private ProfilePictureView f21228c;

        /* renamed from: d */
        private final TextView f21229d;

        /* renamed from: e */
        private final TextView f21230e;

        /* renamed from: f */
        private final TextView f21231f;

        /* renamed from: g */
        private final View f21232g;

        public ShareAppCViewHolder(ReferAndEarnCard referAndEarnCard, View itemView) {
            C18524p.m3840d(itemView, "itemView");
            this.f21226a = referAndEarnCard;
            View findViewById = itemView.findViewById(2131363843);
            C18524p.m3843b(findViewById, "itemView.findViewById(R.id.shareCardIcon)");
            this.f21227b = (ImageView) findViewById;
            View findViewById2 = itemView.findViewById(2131363845);
            C18524p.m3843b(findViewById2, "itemView.findViewById(R.….shareCardProfilePicture)");
            this.f21228c = (ProfilePictureView) findViewById2;
            View findViewById3 = itemView.findViewById(2131363844);
            C18524p.m3843b(findViewById3, "itemView.findViewById(R.id.shareCardName)");
            this.f21229d = (TextView) findViewById3;
            View findViewById4 = itemView.findViewById(2131363842);
            C18524p.m3843b(findViewById4, "itemView.findViewById(R.id.shareCardDescription)");
            this.f21230e = (TextView) findViewById4;
            View findViewById5 = itemView.findViewById(2131363840);
            C18524p.m3843b(findViewById5, "itemView.findViewById(R.id.shareCardButton)");
            this.f21231f = (TextView) findViewById5;
            View findViewById6 = itemView.findViewById(2131362611);
            C18524p.m3843b(findViewById6, "itemView.findViewById(R.id.divider)");
            this.f21232g = findViewById6;
        }

        public final View getDivider() {
            return this.f21232g;
        }

        public final TextView getShareCardButton() {
            return this.f21231f;
        }

        public final TextView getShareCardDescription() {
            return this.f21230e;
        }

        public final ImageView getShareCardIcon() {
            return this.f21227b;
        }

        public final TextView getShareCardName() {
            return this.f21229d;
        }

        public final ProfilePictureView getShareCardProfilePicture() {
            return this.f21228c;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject;", "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;", "parentCard", "Lit/gmariotti/cardslib/library/internal/Card;", "(Lcom/callapp/contacts/activity/contact/cards/ReferAndEarnCard;Lit/gmariotti/cardslib/library/internal/Card;)V", "equals", "", "other", "", "hashCode", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ReferAndEarnCard$ShareAppObject.class */
    public final class ShareAppObject extends DefaultListObject {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ShareAppObject(C18073b c18073b) {
            super(c18073b);
            ReferAndEarnCard.this = r4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && !(C18524p.m3850a(getClass(), obj.getClass()) ^ true);
        }

        public final int hashCode() {
            return 0;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReferAndEarnCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131559013);
        boolean z;
        C18524p.m3840d(presentersContainer, "presentersContainer");
        if (CallAppRemoteConfigManager.get().m28698c("ReferAndEarnFeature")) {
            ReferAndEarnShareOptionsFragment.Companion companion = ReferAndEarnShareOptionsFragment.f29376a;
            Context context = getContext();
            C18524p.m3843b(context, "context");
            if (ReferAndEarnShareOptionsFragment.Companion.m26335a(context)) {
                z = true;
                this.shouldShowCard = z;
            }
        }
        z = false;
        this.shouldShowCard = z;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.fullName, ContactField.photoUrl, ContactField.genomeData);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        Boolean bool = Prefs.f26339cJ.get();
        C18524p.m3843b(bool, "Prefs.isPremium.get()");
        int i = bool.booleanValue() ? 195 : Prefs.f26642hv.get().intValue() % 75 == 0 ? 12 : 175;
        this.cardPriority = i;
        return i;
    }

    public final boolean getShouldShowCard() {
        return this.shouldShowCard;
    }

    public final void onBindViewHolder(ShareAppCViewHolder shareAppCViewHolder) {
        if (shareAppCViewHolder != null) {
            shareAppCViewHolder.getShareCardIcon().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
            shareAppCViewHolder.getShareCardDescription().setText(Activities.getString(2131887534));
            shareAppCViewHolder.getShareCardDescription().setTextColor(ThemeUtils.getColor(2131100108));
            shareAppCViewHolder.getShareCardName().setTextColor(ThemeUtils.getColor(2131100140));
            shareAppCViewHolder.getDivider().setBackgroundColor(ThemeUtils.getColor(2131099891));
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
            DialogMessageWithTopImageNew.Companion.m27968a(shareAppCViewHolder.getShareCardButton(), 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099729)), Integer.valueOf(ThemeUtils.getColor(2131099729)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887530)), null, true, true);
            ProfilePictureView shareCardProfilePicture = shareAppCViewHolder.getShareCardProfilePicture();
            PresentersContainer presentersContainer = this.presentersContainer;
            C18524p.m3843b(presentersContainer, "presentersContainer");
            ContactData contact = presentersContainer.getContact();
            C18524p.m3843b(contact, "presentersContainer.contact");
            shareCardProfilePicture.setText(StringUtils.m26010r(contact.getNameOrNumber()));
            ProfilePictureView shareCardProfilePicture2 = shareAppCViewHolder.getShareCardProfilePicture();
            PresentersContainer presentersContainer2 = this.presentersContainer;
            C18524p.m3843b(presentersContainer2, "presentersContainer");
            ContactData contact2 = presentersContainer2.getContact();
            C18524p.m3843b(contact2, "presentersContainer.contact");
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(contact2.getPhotoUrl());
            glideRequestBuilder.f28246l = true;
            glideRequestBuilder.f28244j = true;
            shareCardProfilePicture2.m26684a(glideRequestBuilder);
            TextView shareCardName = shareAppCViewHolder.getShareCardName();
            String str = Activities.getString(2131887065) + org.apache.commons.lang3.StringUtils.SPACE;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            PresentersContainer presentersContainer3 = this.presentersContainer;
            C18524p.m3843b(presentersContainer3, "presentersContainer");
            ContactData contact3 = presentersContainer3.getContact();
            C18524p.m3843b(contact3, "presentersContainer.contact");
            sb.append(contact3.getNameOrNumber());
            shareCardName.setText(sb.toString());
            shareAppCViewHolder.getShareCardButton().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ReferAndEarnCard$onBindViewHolder$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i;
                    PresentersContainer presentersContainer4;
                    PresentersContainer presentersContainer5;
                    AndroidUtils.m27630a(view, 1);
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb2 = new StringBuilder("priority: ");
                    i = ReferAndEarnCard.this.cardPriority;
                    sb2.append(i);
                    analyticsManager.m28449a(Constants.REFER_AND_EARN, "ClickInviteContactCard", sb2.toString());
                    ShareCallAppDialogFragment.Companion companion2 = ShareCallAppDialogFragment.f29434g;
                    presentersContainer4 = ReferAndEarnCard.this.presentersContainer;
                    C18524p.m3843b(presentersContainer4, "presentersContainer");
                    ShareCallAppDialogFragment m26293a = ShareCallAppDialogFragment.Companion.m26293a(presentersContainer4.getContact(), 0, "cc", 2);
                    presentersContainer5 = ReferAndEarnCard.this.presentersContainer;
                    C18524p.m3843b(presentersContainer5, "presentersContainer");
                    m26293a.mo19242a(presentersContainer5.getFragmentManager(), ShareCallAppDialogFragment.f29434g.getTAG());
                }
            });
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contact, Set<ContactField> changedFields) {
        C18524p.m3840d(contact, "contact");
        C18524p.m3840d(changedFields, "changedFields");
        if (changedFields.contains(ContactField.newContact)) {
            hideCard();
        }
        Boolean bool = Prefs.f26641hu.get();
        C18524p.m3843b(bool, "Prefs.alwaysShowReferAndEarnCard.get()");
        if (bool.booleanValue()) {
            showCard(true);
        } else if (!changedFields.contains(ContactField.genomeData) || contact.isInstalledApp() || Prefs.f26339cJ.get().booleanValue() || !this.shouldShowCard || !StringUtils.m26045b((CharSequence) contact.getFullName())) {
        } else {
            ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
            String m26101a = contact.getPhone().m26101a();
            C18524p.m3843b(m26101a, "contact.phone.asGlobalNumber()");
            if (companion.isContactInvited(m26101a) || this.presentersContainer.mo30920a(contact)) {
                return;
            }
            Prefs.f26642hv.m28169b(1);
            showCard(true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final ShareAppCViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        if (viewGroup != null) {
            return new ShareAppCViewHolder(this, viewGroup);
        }
        return null;
    }

    public final void setShouldShowCard(boolean z) {
        this.shouldShowCard = z;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    public final void updateCardData(ShareAppObject shareAppObject, boolean z) {
    }
}
