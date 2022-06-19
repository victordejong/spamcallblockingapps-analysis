package com.callapp.contacts.activity.invite.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.base.SectionViewHolder;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.MultipleContactsData;
import com.callapp.contacts.activity.invite.OnSelectChangeListener;
import com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder;
import com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.ProfilePictureView;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter.class */
public class InviteVerticalItemsAdapter extends BaseCallAppListAdapter<BaseViewTypeData, BaseCallAppViewHolder> implements InviteSuggestedViewHolder.OnSuggestionClickListener, InviteVerticalViewHolder.OnInviteCheckChangeListener {

    /* renamed from: c */
    private ScrollEvents f23150c;

    /* renamed from: d */
    private boolean f23151d = false;

    /* renamed from: e */
    private OnSelectChangeListener f23152e;

    public InviteVerticalItemsAdapter(List<BaseViewTypeData> list, ScrollEvents scrollEvents, OnSelectChangeListener onSelectChangeListener) {
        super(list);
        this.f23150c = scrollEvents;
        this.f23152e = onSelectChangeListener;
    }

    /* renamed from: f */
    private void m30191f() {
        this.f23152e.mo26312c();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int viewType = baseViewTypeData.getViewType();
        if (viewType == 8) {
            SectionViewHolder sectionViewHolder = (SectionViewHolder) baseCallAppViewHolder;
            sectionViewHolder.setText(((SectionData) baseViewTypeData).getText());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(20, 0, 20, 0);
            sectionViewHolder.f20377s.setLayoutParams(layoutParams);
        } else if (viewType != 9) {
            if (viewType != 0 && viewType != 24) {
                return;
            }
            ((InviteVerticalViewHolder) baseCallAppViewHolder).m30186a((BadgeMemoryContactItem) baseViewTypeData, this.f23150c);
        } else {
            InviteSuggestedViewHolder inviteSuggestedViewHolder = (InviteSuggestedViewHolder) baseCallAppViewHolder;
            MultipleContactsData multipleContactsData = (MultipleContactsData) baseViewTypeData;
            boolean z = this.f23151d;
            if (inviteSuggestedViewHolder.f23162t.getAdapter() == null) {
                inviteSuggestedViewHolder.f23163u = new InviteHorizontalItemsAdapter(multipleContactsData.getMultipleContactsData(), inviteSuggestedViewHolder.f23164v, inviteSuggestedViewHolder.f23161s);
                inviteSuggestedViewHolder.f23162t.setAdapter(inviteSuggestedViewHolder.f23163u);
            } else if (z) {
                inviteSuggestedViewHolder.f23163u.notifyDataSetChanged();
            }
            this.f23151d = false;
        }
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    /* renamed from: a */
    public final void mo30182a(BadgeMemoryContactItem badgeMemoryContactItem) {
        this.f23152e.mo26322a(badgeMemoryContactItem);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    /* renamed from: a */
    public final void mo30181a(BadgeMemoryContactItem badgeMemoryContactItem, CallAppCheckBox callAppCheckBox) {
        this.f23152e.mo26321a(badgeMemoryContactItem, callAppCheckBox);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder.OnSuggestionClickListener
    /* renamed from: a */
    public final void mo30188a(BadgeMemoryContactItem badgeMemoryContactItem, ProfilePictureView profilePictureView) {
        this.f23152e.mo26321a(badgeMemoryContactItem, profilePictureView);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder.OnSuggestionClickListener
    /* renamed from: d */
    public final void mo30187d() {
        notifyDataSetChanged();
        m30191f();
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    /* renamed from: e */
    public final void mo30180e() {
        this.f23151d = true;
        if (getItemViewType(1) == 9) {
            notifyItemChanged(1);
        }
        m30191f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder.f20368b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder.f20369c = CallAppViewTypes.RIGHT_CHECKBOX;
            return new InviteVerticalViewHolder(builder.m31474a(), this);
        } else if (i != 24) {
            if (i == 8) {
                return new SectionViewHolder(from.inflate(2131558766, viewGroup, false));
            }
            if (i == 9) {
                return new InviteSuggestedViewHolder(from.inflate(2131559173, viewGroup, false), this);
            }
            return null;
        } else {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder2.f20368b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder2.f20369c = CallAppViewTypes.RIGHT_BUTTONS;
            return new InviteVerticalViewHolder(builder2.m31474a(), this);
        }
    }

    public void setForceNotifyHorizontalItems(boolean z) {
        this.f23151d = z;
    }
}
