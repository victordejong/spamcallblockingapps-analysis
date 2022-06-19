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
        /* renamed from: a */
        void mo28001a(int i);

        /* renamed from: b */
        void mo28000b(int i);

        /* renamed from: c */
        void mo27999c(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder.class */
    public static class ViewHolder {

        /* renamed from: a */
        private TextView f21304a;

        /* renamed from: b */
        private ProfilePictureView f21305b;

        /* renamed from: c */
        private View f21306c;

        /* renamed from: d */
        private View f21307d;

        public ViewHolder(View view) {
            this.f21304a = (TextView) view.findViewById(2131362399);
            this.f21305b = (ProfilePictureView) view.findViewById(2131363565);
            this.f21306c = view.findViewById(2131362397);
            this.f21307d = view.findViewById(2131362537);
        }

        /* renamed from: a */
        public final void m31151a(final ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject, boolean z) {
            if (z) {
                this.f21306c.setVisibility(4);
            }
            this.f21305b.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().mo27999c(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            this.f21306c.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().mo28001a(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            this.f21307d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    if (confirmSocialProfileObject.getClickListener() != null) {
                        confirmSocialProfileObject.getClickListener().mo28000b(confirmSocialProfileObject.getSocialId());
                    }
                }
            });
            if (confirmSocialProfileObject == null) {
                this.f21304a.setText("");
                this.f21305b.m26688a();
                return;
            }
            this.f21304a.setText(Activities.m27697a(2131886921, confirmSocialProfileObject.getName()));
            ProfilePictureView profilePictureView = this.f21305b;
            GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(confirmSocialProfileObject.getDefaultPhotoImage()).m27025a(confirmSocialProfileObject.getDefaultPhotoImageTintColor().intValue(), PorterDuff.Mode.SRC_IN);
            m27025a.f28246l = true;
            profilePictureView.m26684a(m27025a);
            ProfilePictureView profilePictureView2 = this.f21305b;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(confirmSocialProfileObject.getPhotoUrl());
            glideRequestBuilder.f28246l = true;
            glideRequestBuilder.f28245k = VastError.ERROR_CODE_GENERAL_WRAPPER;
            profilePictureView2.m26684a(glideRequestBuilder);
            this.f21305b.m26685a(ViewUtils.getDrawable(RemoteAccountHelper.getSocialBadgeResId(confirmSocialProfileObject.getSocialId())));
            this.f21305b.m26687a(confirmSocialProfileObject.getBgColor());
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* synthetic */ ViewHolder mo26363a(View view) {
        return new ViewHolder(view);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* synthetic */ void mo26362a(ViewHolder viewHolder, ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject) {
        ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject2 = confirmSocialProfileObject;
        viewHolder.m31151a(confirmSocialProfileObject2, false);
        if (confirmSocialProfileObject2 != null) {
            setBackgroundColor(ThemeUtils.m27388a(confirmSocialProfileObject2.getBgColor()));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public int getLayoutResId() {
        return 2131558560;
    }
}
