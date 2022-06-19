package com.callapp.contacts.activity.contact.cards;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.DefaultListObject;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018��2\u001a\u0012\n\u0012\b\u0018\u00010\u0002R\u00020��\u0012\n\u0012\b\u0018\u00010\u0003R\u00020��0\u0001:\u0002\u001d\u001eB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0018\u00010\u0002R\u00020��H\u0014J\"\u0010\u0011\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J\u0018\u0010\u0015\u001a\b\u0018\u00010\u0002R\u00020��2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\u001a\u001a\u00020\u000f2\f\u0010\u001b\u001a\b\u0018\u00010\u0003R\u00020��2\u0006\u0010\u001c\u001a\u00020\u0019H\u0014¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;", "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;", "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;", "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getPriority", "", "onBindViewHolder", "", "cardViewHolder", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "showShouldExpandButton", "", "updateCardData", "data", "forceRefresh", "VideoRingtoneObject", "VideoRingtoneViewHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoRingtoneCard.class */
public final class VideoRingtoneCard extends ContactCard<VideoRingtoneViewHolder, VideoRingtoneObject> {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;", "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;", "parentCard", "Lit/gmariotti/cardslib/library/internal/Card;", "(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Lit/gmariotti/cardslib/library/internal/Card;)V", "equals", "", "other", "", "hashCode", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject.class */
    public final class VideoRingtoneObject extends DefaultListObject {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private VideoRingtoneObject(C18073b c18073b) {
            super(c18073b);
            VideoRingtoneCard.this = r4;
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

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0019\u0010\f\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;", "", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Landroid/view/View;)V", "cardText", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "getCardText", "()Landroid/widget/TextView;", "tryItButton", "getTryItButton", "tryItButtonContainer", "getTryItButtonContainer", "()Landroid/view/View;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder.class */
    public final class VideoRingtoneViewHolder {

        /* renamed from: a */
        final /* synthetic */ VideoRingtoneCard f21287a;

        /* renamed from: b */
        private final TextView f21288b;

        /* renamed from: c */
        private final TextView f21289c;

        /* renamed from: d */
        private final View f21290d;

        public VideoRingtoneViewHolder(VideoRingtoneCard videoRingtoneCard, View itemView) {
            C18524p.m3840d(itemView, "itemView");
            this.f21287a = videoRingtoneCard;
            TextView cardText = (TextView) itemView.findViewById(2131362258);
            this.f21288b = cardText;
            TextView tryItButton = (TextView) itemView.findViewById(2131364223);
            this.f21289c = tryItButton;
            View findViewById = itemView.findViewById(2131364224);
            this.f21290d = findViewById;
            C18524p.m3843b(cardText, "cardText");
            cardText.setText(Activities.getString(2131888145));
            C18524p.m3843b(tryItButton, "tryItButton");
            tryItButton.setText(Activities.getString(2131887920));
            cardText.setTextColor(ThemeUtils.getColor(2131100140));
            tryItButton.setTextColor(ThemeUtils.getColor(2131100228));
            ViewUtils.m27299b(tryItButton, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.VideoRingtoneCard.VideoRingtoneViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Prefs.f26431dw.set(Boolean.TRUE);
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Banner clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", CD card");
                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                    VideoRingtoneViewHolder.this.f21287a.getContext().startActivity(PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(VideoRingtoneViewHolder.this.f21287a.getContext(), PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE)));
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoRingtoneCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558741);
        C18524p.m3840d(presentersContainer, "presentersContainer");
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        return 25;
    }

    public final void onBindViewHolder(VideoRingtoneViewHolder videoRingtoneViewHolder) {
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (Prefs.f26430dv.get().booleanValue() || Prefs.f26432dx.get().intValue() >= 4) {
            hideCard();
            return;
        }
        Integer num = Prefs.f26327by.get();
        if (num != null && num.intValue() == 50) {
            showCard(false);
            return;
        }
        Boolean bool = Prefs.f26431dw.get();
        C18524p.m3843b(bool, "Prefs.isPersonalCallScreenCardClicked.get()");
        if (bool.booleanValue()) {
            if (Prefs.f26327by.get().intValue() % DrawableConstants.CtaButton.WIDTH_DIPS != 0 || Prefs.f26327by.get().intValue() >= 301) {
                return;
            }
            showCard(false);
            Prefs.f26432dx.m28170a(4);
        } else if (Prefs.f26327by.get().intValue() % 75 != 0 || Prefs.f26327by.get().intValue() >= 151) {
        } else {
            showCard(false);
            Prefs.f26432dx.m28170a(4);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final VideoRingtoneViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        if (viewGroup != null) {
            return new VideoRingtoneViewHolder(this, viewGroup);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    public final void updateCardData(VideoRingtoneObject videoRingtoneObject, boolean z) {
    }
}
