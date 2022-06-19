package com.callapp.contacts.activity.contact.list.search;

import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.contacts.widget.RatingView;
import java.text.DecimalFormat;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/PlacesViewHolder.class */
public class PlacesViewHolder extends BaseContactHolder {

    /* renamed from: B */
    private TextView f22780B;

    /* renamed from: C */
    private TextView f22781C;

    /* renamed from: D */
    private RatingView f22782D;

    /* renamed from: E */
    private TextView f22783E;

    /* renamed from: F */
    private TextView f22784F;

    /* renamed from: G */
    private ImageView f22785G;

    /* renamed from: u */
    CallAppRow f22787u;

    /* renamed from: v */
    ProfilePictureView f22788v;

    /* renamed from: w */
    TextView f22789w;

    /* renamed from: x */
    FrameLayout f22790x;

    /* renamed from: y */
    int f22791y = ThemeUtils.getColor(2131099675);

    /* renamed from: z */
    int f22792z = ThemeUtils.getColor(2131099914);

    /* renamed from: H */
    private int f22786H = ThemeUtils.getColor(2131100140);

    /* renamed from: A */
    final int f22779A = ThemeUtils.getColor(2131100108);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            PlacesViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public PlacesViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f22787u = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f22788v = profilePictureView;
        profilePictureView.setClickable(true);
        int m27386a = ThemeUtils.m27386a(callAppRow.getContext(), 2131099784);
        this.f22780B = (TextView) callAppRow.findViewById(2131363516);
        this.f22781C = (TextView) callAppRow.findViewById(2131363517);
        this.f22782D = (RatingView) callAppRow.findViewById(2131363618);
        this.f22783E = (TextView) callAppRow.findViewById(2131363518);
        this.f22784F = (TextView) callAppRow.findViewById(2131363512);
        this.f22789w = (TextView) callAppRow.findViewById(2131363515);
        TextView textView = (TextView) callAppRow.findViewById(2131363304);
        textView.setText(Activities.getString(2131887214));
        textView.setTextColor(m27386a);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.f22785G = imageView;
        imageView.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        this.f22785G.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        this.f22790x = (FrameLayout) callAppRow.findViewById(2131362211);
        callAppRow.setSwipeable(false);
    }

    /* renamed from: a */
    static /* synthetic */ void m30421a(View view, PlaceItemData placeItemData, ContactsClickEvents contactsClickEvents) {
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27479a(view.getContext(), placeItemData.displayName, placeItemData.getPhone(), "search places");
        if (contactsClickEvents != null) {
            contactsClickEvents.mo30422d(2);
        }
    }

    private void setPlaceRatingNumber(double d) {
        this.f22781C.setTextColor(this.f22786H);
        if (d <= 0.0d) {
            this.f22781C.setText(Activities.getString(2131887884));
            return;
        }
        this.f22781C.setText(new DecimalFormat("#.#").format(d));
    }

    /* renamed from: a */
    public final void m30419a(DataSource dataSource, String str) {
        ProfilePictureView profilePictureView = this.f22788v;
        GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(str).m27023a(dataSource);
        m27023a.f28246l = true;
        m27023a.f28245k = 0;
        profilePictureView.m26684a(m27023a);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f22788v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactListAdapterDataLoadTask();
    }

    public void setPlaceAddress(String str) {
        this.f22784F.setText(str);
        this.f22784F.setTextColor(this.f22786H);
    }

    public void setPlaceName(CharSequence charSequence) {
        this.f22780B.setText(charSequence);
        this.f22780B.setTextColor(this.f22786H);
    }

    public void setPlaceType(String str) {
        this.f22783E.setText(str);
        this.f22783E.setTextColor(this.f22779A);
    }

    public void setProfileText(String str) {
        this.f22788v.setText(str);
    }

    public void setRating(double d) {
        if (d > 0.0d) {
            this.f22782D.setVisibility(0);
            this.f22782D.setRating(d);
        } else {
            this.f22782D.setVisibility(8);
        }
        setPlaceRatingNumber(d);
    }
}
