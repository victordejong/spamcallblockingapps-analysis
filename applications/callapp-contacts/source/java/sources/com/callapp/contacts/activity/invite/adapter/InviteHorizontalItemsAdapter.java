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
public class InviteHorizontalItemsAdapter extends RecyclerView.AbstractC2626a<InviteHorizontalItemViewHolder> {

    /* renamed from: a */
    private List<BadgeMemoryContactItem> f23147a;

    /* renamed from: b */
    private InviteSuggestedViewHolder.OnSuggestionClickListener f23148b;

    /* renamed from: c */
    private ScrollEvents f23149c;

    public InviteHorizontalItemsAdapter(List<BadgeMemoryContactItem> list, InviteSuggestedViewHolder.OnSuggestionClickListener onSuggestionClickListener, ScrollRecyclerStateTracker scrollRecyclerStateTracker) {
        this.f23147a = list;
        this.f23148b = onSuggestionClickListener;
        this.f23149c = scrollRecyclerStateTracker;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f23147a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(InviteHorizontalItemViewHolder inviteHorizontalItemViewHolder, int i) {
        inviteHorizontalItemViewHolder.m30190a(this.f23147a.get(i), this.f23148b, this.f23149c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ InviteHorizontalItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new InviteHorizontalItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559165, viewGroup, false));
    }
}
