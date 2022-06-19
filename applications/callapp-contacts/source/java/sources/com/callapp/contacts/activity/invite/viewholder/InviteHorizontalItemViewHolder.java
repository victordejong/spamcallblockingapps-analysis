package com.callapp.contacts.activity.invite.viewholder;

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

    /* renamed from: u */
    private static final int f23153u = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: v */
    private static final String f23154v = System.getProperty("line.separator");

    /* renamed from: w */
    private ProfilePictureView f23155w;

    /* renamed from: x */
    private TextView f23156x;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            InviteHorizontalItemViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public InviteHorizontalItemViewHolder(View view) {
        super(view);
        this.f23155w = (ProfilePictureView) view.findViewById(2131363565);
        TextView textView = (TextView) view.findViewById(2131362445);
        this.f23156x = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
    }

    /* renamed from: a */
    public final void m30190a(final BadgeMemoryContactItem badgeMemoryContactItem, final InviteSuggestedViewHolder.OnSuggestionClickListener onSuggestionClickListener, ScrollEvents scrollEvents) {
        m31503a(badgeMemoryContactItem.getCacheKey(), badgeMemoryContactItem, scrollEvents, badgeMemoryContactItem.getContactId(), badgeMemoryContactItem.getPhone());
        String[] split = badgeMemoryContactItem.displayName.split("\\s+");
        StringBuilder sb = new StringBuilder();
        for (String str : split) {
            sb.append(str.toUpperCase());
            sb.append(f23154v);
        }
        this.f23156x.setText(sb.toString());
        CharSequence m27307a = ViewUtils.m27307a(StringUtils.m26020j(badgeMemoryContactItem.displayName), badgeMemoryContactItem.textHighlights, f23153u);
        CharSequence charSequence = m27307a;
        if (StringUtils.m26059a(m27307a)) {
            charSequence = StringUtils.m26020j(badgeMemoryContactItem.displayName);
        }
        this.f23155w.setText(StringUtils.m26010r(charSequence.toString()));
        this.f23155w.m26682a(badgeMemoryContactItem.isChecked(), false);
        if (badgeMemoryContactItem.getBadgeResId() != 0) {
            this.f23155w.m26685a(ViewUtils.getDrawable(badgeMemoryContactItem.getBadgeResId()));
        }
        if (badgeMemoryContactItem.isShouldGrey()) {
            this.f23155w.setAlpha(0.4f);
        } else {
            this.f23155w.setAlpha(1.0f);
        }
        this.f23155w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.invite.viewholder.InviteHorizontalItemViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (badgeMemoryContactItem.isShouldGrey()) {
                    onSuggestionClickListener.mo30188a(badgeMemoryContactItem, InviteHorizontalItemViewHolder.this.f23155w);
                    return;
                }
                badgeMemoryContactItem.setChecked(!badgeMemoryContactItem.isChecked());
                InviteHorizontalItemViewHolder.this.f23155w.m26682a(badgeMemoryContactItem.isChecked(), true);
                onSuggestionClickListener.mo30187d();
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f23155w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactListAdapterDataLoadTask();
    }
}
