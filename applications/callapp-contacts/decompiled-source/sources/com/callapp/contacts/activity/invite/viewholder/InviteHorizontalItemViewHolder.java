package com.callapp.contacts.activity.invite.viewholder;

import android.text.SpannableString;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder.class */
public class InviteHorizontalItemViewHolder extends BaseContactHolder {
    private static final int u = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private static final String v = System.getProperty("line.separator");
    private ProfilePictureView w;
    private TextView x;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public InviteHorizontalItemViewHolder(View view) {
        super(view);
        this.w = (ProfilePictureView) view.findViewById(2131363565);
        TextView textView = (TextView) view.findViewById(2131362445);
        this.x = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
    }

    public final void a(final BadgeMemoryContactItem badgeMemoryContactItem, final InviteSuggestedViewHolder.OnSuggestionClickListener onSuggestionClickListener, ScrollEvents scrollEvents) {
        a(badgeMemoryContactItem.getCacheKey(), badgeMemoryContactItem, scrollEvents, badgeMemoryContactItem.getContactId(), badgeMemoryContactItem.getPhone());
        String[] split = badgeMemoryContactItem.displayName.split("\\s+");
        StringBuilder sb = new StringBuilder();
        for (String str : split) {
            sb.append(str.toUpperCase());
            sb.append(v);
        }
        this.x.setText(sb.toString());
        SpannableString a2 = ViewUtils.a(StringUtils.j(badgeMemoryContactItem.displayName), badgeMemoryContactItem.textHighlights, u);
        CharSequence charSequence = a2;
        if (StringUtils.a(a2)) {
            charSequence = StringUtils.j(badgeMemoryContactItem.displayName);
        }
        this.w.setText(StringUtils.r(charSequence.toString()));
        this.w.a(badgeMemoryContactItem.isChecked(), false);
        if (badgeMemoryContactItem.getBadgeResId() != 0) {
            this.w.a(ViewUtils.getDrawable(badgeMemoryContactItem.getBadgeResId()));
        }
        if (badgeMemoryContactItem.isShouldGrey()) {
            this.w.setAlpha(0.4f);
        } else {
            this.w.setAlpha(1.0f);
        }
        this.w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteHorizontalItemViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (badgeMemoryContactItem.isShouldGrey()) {
                    onSuggestionClickListener.a(badgeMemoryContactItem, InviteHorizontalItemViewHolder.this.w);
                    return;
                }
                badgeMemoryContactItem.setChecked(!badgeMemoryContactItem.isChecked());
                InviteHorizontalItemViewHolder.this.w.a(badgeMemoryContactItem.isChecked(), true);
                onSuggestionClickListener.d();
            }
        });
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
        return new ContactListAdapterDataLoadTask();
    }
}
