package com.callapp.contacts.activity.callappplus.daySummary;

import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder.class */
public class CallAppPlusSummaryItemHolder extends BaseContactHolder {

    /* renamed from: u */
    private ProfilePictureView f20663u;

    /* renamed from: v */
    private OnProfilePictureListener f20664v;

    /* renamed from: w */
    private TextView f20665w;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask.class */
    final class CallAppPlusSummeryAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private CallAppPlusSummeryAdapterDataLoadTask() {
            super();
            CallAppPlusSummaryItemHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(ContactData contactData) {
            super.mo29326b(contactData);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener.class */
    public interface OnProfilePictureListener {
        /* renamed from: a */
        void mo31372a(CallAppPlusSummaryItem callAppPlusSummaryItem);
    }

    public CallAppPlusSummaryItemHolder(View view, OnProfilePictureListener onProfilePictureListener) {
        super(view);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363565);
        this.f20663u = profilePictureView;
        profilePictureView.setClickable(true);
        this.f20665w = (TextView) view.findViewById(2131363347);
        this.f20664v = onProfilePictureListener;
    }

    private void setOnClickListener(final CallAppPlusSummaryItem callAppPlusSummaryItem) {
        this.f20663u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItemHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CallAppPlusSummaryItemHolder.this.f20664v != null) {
                    CallAppPlusSummaryItemHolder.this.f20664v.mo31372a(callAppPlusSummaryItem);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m31374a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        m31503a(callAppPlusSummaryItem.getCacheKey(), callAppPlusSummaryItem, null, callAppPlusSummaryItem.getContactId(), callAppPlusSummaryItem.getPhone());
        this.f20665w.setText(callAppPlusSummaryItem.getName());
        if (callAppPlusSummaryItem.isNeedToShowBorder()) {
            this.f20663u.m26682a(true, true);
            this.f20663u.setAlpha(1.0f);
            this.f20665w.setTextColor(ThemeUtils.getColor(2131099918));
            if (ThemeUtils.isThemeLight()) {
                this.f20665w.setTextColor(ThemeUtils.getColor(2131099918));
            } else {
                this.f20665w.setTextColor(ThemeUtils.getColor(2131100228));
            }
        } else {
            this.f20663u.m26682a(false, false);
            this.f20663u.setAlpha(0.6f);
            if (ThemeUtils.isThemeLight()) {
                this.f20665w.setTextColor(ThemeUtils.getColor(2131099917));
            } else {
                this.f20665w.setTextColor(ThemeUtils.getColor(2131099919));
            }
        }
        String m26020j = StringUtils.m26020j(callAppPlusSummaryItem.getName());
        if (StringUtils.m26059a((CharSequence) m26020j)) {
            this.f20663u.setText("?");
        } else {
            this.f20663u.setText(StringUtils.m26010r(m26020j));
        }
        setOnClickListener(callAppPlusSummaryItem);
        try {
            this.f20663u.m26685a(ViewUtils.getDrawable(callAppPlusSummaryItem.getBadgeDrawableId()));
        } catch (Exception e) {
        }
        this.f20663u.m26687a(callAppPlusSummaryItem.getBadgeColor());
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20663u;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new CallAppPlusSummeryAdapterDataLoadTask();
    }
}
