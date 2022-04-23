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
    private TextView B;
    private TextView C;
    private RatingView D;
    private TextView E;
    private TextView F;
    private ImageView G;
    CallAppRow u;
    ProfilePictureView v;
    TextView w;
    FrameLayout x;
    int y = ThemeUtils.getColor(2131099675);
    int z = ThemeUtils.getColor(2131099914);
    private int H = ThemeUtils.getColor(2131100140);
    final int A = ThemeUtils.getColor(2131100108);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/PlacesViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public PlacesViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.u = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.v = profilePictureView;
        profilePictureView.setClickable(true);
        int a2 = ThemeUtils.a(callAppRow.getContext(), 2131099784);
        this.B = (TextView) callAppRow.findViewById(2131363516);
        this.C = (TextView) callAppRow.findViewById(2131363517);
        this.D = (RatingView) callAppRow.findViewById(2131363618);
        this.E = (TextView) callAppRow.findViewById(2131363518);
        this.F = (TextView) callAppRow.findViewById(2131363512);
        this.w = (TextView) callAppRow.findViewById(2131363515);
        TextView textView = (TextView) callAppRow.findViewById(2131363304);
        textView.setText(Activities.getString(2131887214));
        textView.setTextColor(a2);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.G = imageView;
        imageView.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        this.G.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        this.x = (FrameLayout) callAppRow.findViewById(2131362211);
        callAppRow.setSwipeable(false);
    }

    static /* synthetic */ void a(View view, PlaceItemData placeItemData, ContactsClickEvents contactsClickEvents) {
        AndroidUtils.a(view, 1);
        ListsUtils.a(view.getContext(), placeItemData.displayName, placeItemData.getPhone(), "search places");
        if (contactsClickEvents != null) {
            contactsClickEvents.d(2);
        }
    }

    private void setPlaceRatingNumber(double d2) {
        this.C.setTextColor(this.H);
        if (d2 > 0.0d) {
            this.C.setText(new DecimalFormat("#.#").format(d2));
            return;
        }
        this.C.setText(Activities.getString(2131887884));
    }

    public final void a(DataSource dataSource, String str) {
        ProfilePictureView profilePictureView = this.v;
        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(str).a(dataSource);
        a2.l = true;
        a2.k = 0;
        profilePictureView.a(a2);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new ContactListAdapterDataLoadTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaceAddress(String str) {
        this.F.setText(str);
        this.F.setTextColor(this.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaceName(CharSequence charSequence) {
        this.B.setText(charSequence);
        this.B.setTextColor(this.H);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlaceType(String str) {
        this.E.setText(str);
        this.E.setTextColor(this.A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setProfileText(String str) {
        this.v.setText(str);
    }

    public void setRating(double d2) {
        if (d2 > 0.0d) {
            this.D.setVisibility(0);
            this.D.setRating(d2);
        } else {
            this.D.setVisibility(8);
        }
        setPlaceRatingNumber(d2);
    }
}
