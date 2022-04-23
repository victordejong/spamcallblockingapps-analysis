package com.callapp.contacts.activity.invite.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.viewholder.InviteHorizontalItemViewHolder;
import com.callapp.contacts.activity.invite.viewholder.InviteSuggestedViewHolder;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter.class */
public class InviteHorizontalItemsAdapter extends RecyclerView.a<InviteHorizontalItemViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<BadgeMemoryContactItem> f12970a;

    /* renamed from: b  reason: collision with root package name */
    private InviteSuggestedViewHolder.OnSuggestionClickListener f12971b;

    /* renamed from: c  reason: collision with root package name */
    private ScrollEvents f12972c;

    public InviteHorizontalItemsAdapter(List<BadgeMemoryContactItem> list, InviteSuggestedViewHolder.OnSuggestionClickListener onSuggestionClickListener, ScrollRecyclerStateTracker scrollRecyclerStateTracker) {
        this.f12970a = list;
        this.f12971b = onSuggestionClickListener;
        this.f12972c = scrollRecyclerStateTracker;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f12970a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(InviteHorizontalItemViewHolder inviteHorizontalItemViewHolder, int i) {
        inviteHorizontalItemViewHolder.a(this.f12970a.get(i), this.f12971b, this.f12972c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ InviteHorizontalItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new InviteHorizontalItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559165, viewGroup, false));
    }
}
