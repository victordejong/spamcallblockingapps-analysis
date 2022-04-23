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
    private CardView A;
    private FrameLayout B;
    private FrameLayout C;
    private ProfilePictureView w;
    private TextView x;
    private TextView y;
    private CardView z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask.class */
    final class FavoritesAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private FavoritesAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final String a(ContactData contactData) {
            return contactData.getPhotoUrl();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public FavoriteViewHolder(View view) {
        super(view, 2131363228, true);
        this.C = (FrameLayout) view.findViewById(2131363228);
        this.w = (ProfilePictureView) view.findViewById(2131363565);
        this.x = (TextView) view.findViewById(2131363348);
        this.y = (TextView) view.findViewById(2131363500);
        ((ImageView) view.findViewById(2131363099)).setColorFilter(ThemeUtils.getColor(2131099784));
        this.z = (CardView) view.findViewById(2131362138);
        this.A = (CardView) view.findViewById(2131364185);
        this.B = (FrameLayout) view.findViewById(2131363101);
    }

    static /* synthetic */ void a(FavoriteViewHolder favoriteViewHolder, View view) {
        AndroidUtils.a(view, 1);
        ListsUtils.a(view.getContext(), favoriteViewHolder.t, ContactUtils.a(favoriteViewHolder.t.getPhone(), favoriteViewHolder.t.getContactId()), (ContactItemViewEvents) null);
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Calling contact from favorites", Constants.CLICK);
    }

    static /* synthetic */ boolean a(Context context, FavoriteMemoryContactItem favoriteMemoryContactItem, int i) {
        boolean z;
        if (PhoneManager.get().a(favoriteMemoryContactItem.getPhone())) {
            FeedbackManager.get().a(Activities.getString(2131887308), (Integer) null);
            z = false;
        } else {
            ListsUtils.a(context, favoriteMemoryContactItem, "favorite", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), i, 8), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
            z = true;
        }
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Open contact details from favorites. successful: ".concat(String.valueOf(z)), Constants.CLICK);
        return z;
    }

    public final void a(final FavoriteMemoryContactItem favoriteMemoryContactItem, ScrollEvents scrollEvents, boolean z) {
        if (favoriteMemoryContactItem != null) {
            this.w.setText(StringUtils.r(favoriteMemoryContactItem.displayName));
            a(favoriteMemoryContactItem.getCacheKey(), favoriteMemoryContactItem, scrollEvents, favoriteMemoryContactItem.contactId, favoriteMemoryContactItem.getPhone());
            this.x.setText(StringUtils.j(favoriteMemoryContactItem.displayName));
            this.y.setText(favoriteMemoryContactItem.getPhone().e());
            CardView cardView = this.z;
            if (cardView != null) {
                if (z) {
                    cardView.setVisibility(8);
                } else {
                    cardView.setVisibility(0);
                }
            }
            this.C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoriteViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FavoriteViewHolder.a(FavoriteViewHolder.this, view);
                }
            });
            this.B.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoriteViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    FavoriteViewHolder.a(view.getContext(), favoriteMemoryContactItem, FavoriteViewHolder.this.getAdapterPosition());
                }
            });
            if (ThemeUtils.isThemeLight()) {
                this.x.setTextColor(ThemeUtils.getColor(2131099918));
                this.y.setTextColor(ThemeUtils.getColor(2131099923));
                this.A.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
                this.z.setCardBackgroundColor(ThemeUtils.getColor(2131099921));
                return;
            }
            this.x.setTextColor(ThemeUtils.getColor(2131100228));
            this.y.setTextColor(ThemeUtils.getColor(2131099919));
            this.A.setCardBackgroundColor(ThemeUtils.getColor(2131099922));
            this.z.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new FavoritesAdapterDataLoadTask();
    }
}
