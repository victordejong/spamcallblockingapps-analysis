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
    private ProfilePictureView u;
    private OnProfilePictureListener v;
    private TextView w;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask.class */
    final class CallAppPlusSummeryAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private CallAppPlusSummeryAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(ContactData contactData) {
            super.b(contactData);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener.class */
    public interface OnProfilePictureListener {
        void a(CallAppPlusSummaryItem callAppPlusSummaryItem);
    }

    public CallAppPlusSummaryItemHolder(View view, OnProfilePictureListener onProfilePictureListener) {
        super(view);
        ProfilePictureView profilePictureView = (ProfilePictureView) view.findViewById(2131363565);
        this.u = profilePictureView;
        profilePictureView.setClickable(true);
        this.w = (TextView) view.findViewById(2131363347);
        this.v = onProfilePictureListener;
    }

    private void setOnClickListener(final CallAppPlusSummaryItem callAppPlusSummaryItem) {
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItemHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CallAppPlusSummaryItemHolder.this.v != null) {
                    CallAppPlusSummaryItemHolder.this.v.a(callAppPlusSummaryItem);
                }
            }
        });
    }

    public final void a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        a(callAppPlusSummaryItem.getCacheKey(), callAppPlusSummaryItem, null, callAppPlusSummaryItem.getContactId(), callAppPlusSummaryItem.getPhone());
        this.w.setText(callAppPlusSummaryItem.getName());
        if (callAppPlusSummaryItem.isNeedToShowBorder()) {
            this.u.a(true, true);
            this.u.setAlpha(1.0f);
            this.w.setTextColor(ThemeUtils.getColor(2131099918));
            if (ThemeUtils.isThemeLight()) {
                this.w.setTextColor(ThemeUtils.getColor(2131099918));
            } else {
                this.w.setTextColor(ThemeUtils.getColor(2131100228));
            }
        } else {
            this.u.a(false, false);
            this.u.setAlpha(0.6f);
            if (ThemeUtils.isThemeLight()) {
                this.w.setTextColor(ThemeUtils.getColor(2131099917));
            } else {
                this.w.setTextColor(ThemeUtils.getColor(2131099919));
            }
        }
        String j = StringUtils.j(callAppPlusSummaryItem.getName());
        if (StringUtils.a((CharSequence) j)) {
            this.u.setText("?");
        } else {
            this.u.setText(StringUtils.r(j));
        }
        setOnClickListener(callAppPlusSummaryItem);
        try {
            this.u.a(ViewUtils.getDrawable(callAppPlusSummaryItem.getBadgeDrawableId()));
        } catch (Exception e) {
        }
        this.u.a(callAppPlusSummaryItem.getBadgeColor());
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.u;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new CallAppPlusSummeryAdapterDataLoadTask();
    }
}
