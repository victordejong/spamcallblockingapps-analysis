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

    /* renamed from: c  reason: collision with root package name */
    private ScrollEvents f12973c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12974d = false;
    private OnSelectChangeListener e;

    public InviteVerticalItemsAdapter(List<BaseViewTypeData> list, ScrollEvents scrollEvents, OnSelectChangeListener onSelectChangeListener) {
        super(list);
        this.f12973c = scrollEvents;
        this.e = onSelectChangeListener;
    }

    private void f() {
        this.e.c();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int viewType = baseViewTypeData.getViewType();
        if (viewType == 8) {
            SectionViewHolder sectionViewHolder = (SectionViewHolder) baseCallAppViewHolder;
            sectionViewHolder.setText(((SectionData) baseViewTypeData).getText());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(20, 0, 20, 0);
            sectionViewHolder.s.setLayoutParams(layoutParams);
        } else if (viewType == 9) {
            InviteSuggestedViewHolder inviteSuggestedViewHolder = (InviteSuggestedViewHolder) baseCallAppViewHolder;
            MultipleContactsData multipleContactsData = (MultipleContactsData) baseViewTypeData;
            boolean z = this.f12974d;
            if (inviteSuggestedViewHolder.t.getAdapter() == null) {
                inviteSuggestedViewHolder.u = new InviteHorizontalItemsAdapter(multipleContactsData.getMultipleContactsData(), inviteSuggestedViewHolder.v, inviteSuggestedViewHolder.s);
                inviteSuggestedViewHolder.t.setAdapter(inviteSuggestedViewHolder.u);
            } else if (z) {
                inviteSuggestedViewHolder.u.notifyDataSetChanged();
            }
            this.f12974d = false;
        } else if (viewType == 0 || viewType == 24) {
            ((InviteVerticalViewHolder) baseCallAppViewHolder).a((BadgeMemoryContactItem) baseViewTypeData, this.f12973c);
        }
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    public final void a(BadgeMemoryContactItem badgeMemoryContactItem) {
        this.e.a(badgeMemoryContactItem);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    public final void a(BadgeMemoryContactItem badgeMemoryContactItem, CallAppCheckBox callAppCheckBox) {
        this.e.a(badgeMemoryContactItem, callAppCheckBox);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder.OnSuggestionClickListener
    public final void a(BadgeMemoryContactItem badgeMemoryContactItem, ProfilePictureView profilePictureView) {
        this.e.a(badgeMemoryContactItem, profilePictureView);
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder.OnSuggestionClickListener
    public final void d() {
        notifyDataSetChanged();
        f();
    }

    @Override // com.callapp.contacts.activity.invite.viewholder.InviteVerticalViewHolder.OnInviteCheckChangeListener
    public final void e() {
        this.f12974d = true;
        if (getItemViewType(1) == 9) {
            notifyItemChanged(1);
        }
        f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11158b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder.f11159c = CallAppViewTypes.RIGHT_CHECKBOX;
            return new InviteVerticalViewHolder(builder.a(), this);
        } else if (i == 24) {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder2.f11158b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder2.f11159c = CallAppViewTypes.RIGHT_BUTTONS;
            return new InviteVerticalViewHolder(builder2.a(), this);
        } else if (i == 8) {
            return new SectionViewHolder(from.inflate(2131558766, viewGroup, false));
        } else {
            if (i != 9) {
                return null;
            }
            return new InviteSuggestedViewHolder(from.inflate(2131559173, viewGroup, false), this);
        }
    }

    public void setForceNotifyHorizontalItems(boolean z) {
        this.f12974d = z;
    }
}
