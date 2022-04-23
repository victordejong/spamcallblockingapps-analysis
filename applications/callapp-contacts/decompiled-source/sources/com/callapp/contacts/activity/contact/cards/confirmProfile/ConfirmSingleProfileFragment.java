package com.callapp.contacts.activity.contact.cards.confirmProfile;

import android.graphics.PorterDuff;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.explorestack.iab.vast.VastError;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment.class */
public class ConfirmSingleProfileFragment extends HorizontalPagerFragment<ViewHolder, ConfirmSocialProfileCard.ConfirmSocialProfileObject> {

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked.class */
    public interface ConfirmOrDismissClicked {
        void a(int i);

        void b(int i);

        void c(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder.class */
    public static class ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f11820a;

        /* renamed from: b  reason: collision with root package name */
        private ProfilePictureView f11821b;

        /* renamed from: c  reason: collision with root package name */
        private View f11822c;

        /* renamed from: d  reason: collision with root package name */
        private View f11823d;

        public ViewHolder(View view) {
            this.f11820a = (TextView) view.findViewById(2131362399);
            this.f11821b = (ProfilePictureView) view.findViewById(2131363565);
            this.f11822c = view.findViewById(2131362397);
            this.f11823d = view.findViewById(2131362537);
        }

        public final void a(final ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject, boolean z) {
            if (z) {
                this.f11822c.setVisibility(4);
            }
            this.f11821b.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().c(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            this.f11822c.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().a(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            this.f11823d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().b(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            if (confirmSocialProfileObject == null) {
                this.f11820a.setText("");
                this.f11821b.a();
                return;
            }
            this.f11820a.setText(Activities.a(2131886921, confirmSocialProfileObject.getName()));
            ProfilePictureView profilePictureView = this.f11821b;
            GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(confirmSocialProfileObject.getDefaultPhotoImage()).a(confirmSocialProfileObject.getDefaultPhotoImageTintColor().intValue(), PorterDuff.Mode.SRC_IN);
            a2.l = true;
            profilePictureView.a(a2);
            ProfilePictureView profilePictureView2 = this.f11821b;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(confirmSocialProfileObject.getPhotoUrl());
            glideRequestBuilder.l = true;
            glideRequestBuilder.k = VastError.ERROR_CODE_GENERAL_WRAPPER;
            profilePictureView2.a(glideRequestBuilder);
            this.f11821b.a(ViewUtils.getDrawable(RemoteAccountHelper.getSocialBadgeResId(confirmSocialProfileObject.getSocialId())));
            this.f11821b.a(confirmSocialProfileObject.getBgColor());
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public final /* synthetic */ ViewHolder a(View view) {
        return new ViewHolder(view);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public final /* synthetic */ void a(ViewHolder viewHolder, ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject) {
        ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject2 = confirmSocialProfileObject;
        viewHolder.a(confirmSocialProfileObject2, false);
        if (confirmSocialProfileObject2 != null) {
            setBackgroundColor(ThemeUtils.a(confirmSocialProfileObject2.getBgColor()));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public int getLayoutResId() {
        return 2131558560;
    }
}
