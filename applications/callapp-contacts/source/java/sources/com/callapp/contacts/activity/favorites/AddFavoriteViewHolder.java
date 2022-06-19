package com.callapp.contacts.activity.favorites;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AddFavoriteViewHolder.class */
public class AddFavoriteViewHolder extends BaseFavoriteViewHolder {
    public AddFavoriteViewHolder(View view) {
        super(view, 2131363123, false);
        CardView cardView = (CardView) view.findViewById(2131362787);
        if (ThemeUtils.isThemeLight()) {
            cardView.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
            ((ImageView) view.findViewById(2131363099)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099920), PorterDuff.Mode.SRC_IN));
            view.findViewById(2131363348).setBackgroundColor(ThemeUtils.getColor(2131099920));
            view.findViewById(2131363500).setBackgroundColor(ThemeUtils.getColor(2131099920));
            view.findViewById(2131363565).setBackground(ViewUtils.getDrawable(2131231424));
        } else {
            cardView.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
            ((ImageView) view.findViewById(2131363099)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099923), PorterDuff.Mode.SRC_IN));
            view.findViewById(2131363348).setBackgroundColor(ThemeUtils.getColor(2131099923));
            view.findViewById(2131363500).setBackgroundColor(ThemeUtils.getColor(2131099919));
            view.findViewById(2131363565).setBackground(ViewUtils.getDrawable(2131231425));
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.AddFavoriteViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ContactUtils.m28335a(view2.getContext());
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return null;
    }
}
