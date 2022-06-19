package com.callapp.contacts.activity.favorites;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoriteViewHolder.class */
public class FavoriteViewHolder extends BaseFavoriteViewHolder {

    /* renamed from: A */
    private CardView f22997A;

    /* renamed from: B */
    private FrameLayout f22998B;

    /* renamed from: C */
    private FrameLayout f22999C;

    /* renamed from: w */
    private ProfilePictureView f23000w;

    /* renamed from: x */
    private TextView f23001x;

    /* renamed from: y */
    private TextView f23002y;

    /* renamed from: z */
    private CardView f23003z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask.class */
    final class FavoritesAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private FavoritesAdapterDataLoadTask() {
            super();
            FavoriteViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final String mo30271a(ContactData contactData) {
            return contactData.getPhotoUrl();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public FavoriteViewHolder(View view) {
        super(view, 2131363228, true);
        this.f22999C = (FrameLayout) view.findViewById(2131363228);
        this.f23000w = (ProfilePictureView) view.findViewById(2131363565);
        this.f23001x = (TextView) view.findViewById(2131363348);
        this.f23002y = (TextView) view.findViewById(2131363500);
        ((ImageView) view.findViewById(2131363099)).setColorFilter(ThemeUtils.getColor(2131099784));
        this.f23003z = (CardView) view.findViewById(2131362138);
        this.f22997A = (CardView) view.findViewById(2131364185);
        this.f22998B = (FrameLayout) view.findViewById(2131363101);
    }

    /* renamed from: a */
    static /* synthetic */ void m30272a(FavoriteViewHolder favoriteViewHolder, View view) {
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27484a(view.getContext(), favoriteViewHolder.f20280t, ContactUtils.m28326a(favoriteViewHolder.f20280t.getPhone(), favoriteViewHolder.f20280t.getContactId()), (ContactItemViewEvents) null);
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Calling contact from favorites", Constants.CLICK);
    }

    /* renamed from: a */
    static /* synthetic */ boolean m30274a(Context context, FavoriteMemoryContactItem favoriteMemoryContactItem, int i) {
        boolean z;
        if (PhoneManager.get().m28240a(favoriteMemoryContactItem.getPhone())) {
            FeedbackManager.get().m28669a(Activities.getString(2131887308), (Integer) null);
            z = false;
        } else {
            ListsUtils.m27485a(context, favoriteMemoryContactItem, "favorite", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), i, 8), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
            z = true;
        }
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Open contact details from favorites. successful: ".concat(String.valueOf(z)), Constants.CLICK);
        return z;
    }

    /* renamed from: a */
    public final void m30273a(final FavoriteMemoryContactItem favoriteMemoryContactItem, ScrollEvents scrollEvents, boolean z) {
        if (favoriteMemoryContactItem != null) {
            this.f23000w.setText(StringUtils.m26010r(favoriteMemoryContactItem.displayName));
            m31503a(favoriteMemoryContactItem.getCacheKey(), favoriteMemoryContactItem, scrollEvents, favoriteMemoryContactItem.contactId, favoriteMemoryContactItem.getPhone());
            this.f23001x.setText(StringUtils.m26020j(favoriteMemoryContactItem.displayName));
            this.f23002y.setText(favoriteMemoryContactItem.getPhone().m26087e());
            CardView cardView = this.f23003z;
            if (cardView != null) {
                if (z) {
                    cardView.setVisibility(8);
                } else {
                    cardView.setVisibility(0);
                }
            }
            this.f22999C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoriteViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FavoriteViewHolder.m30272a(FavoriteViewHolder.this, view);
                }
            });
            this.f22998B.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoriteViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    FavoriteViewHolder.m30274a(view.getContext(), favoriteMemoryContactItem, FavoriteViewHolder.this.getAdapterPosition());
                }
            });
            if (ThemeUtils.isThemeLight()) {
                this.f23001x.setTextColor(ThemeUtils.getColor(2131099918));
                this.f23002y.setTextColor(ThemeUtils.getColor(2131099923));
                this.f22997A.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
                this.f23003z.setCardBackgroundColor(ThemeUtils.getColor(2131099921));
                return;
            }
            this.f23001x.setTextColor(ThemeUtils.getColor(2131100228));
            this.f23002y.setTextColor(ThemeUtils.getColor(2131099919));
            this.f22997A.setCardBackgroundColor(ThemeUtils.getColor(2131099922));
            this.f23003z.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f23000w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new FavoritesAdapterDataLoadTask();
    }
}
