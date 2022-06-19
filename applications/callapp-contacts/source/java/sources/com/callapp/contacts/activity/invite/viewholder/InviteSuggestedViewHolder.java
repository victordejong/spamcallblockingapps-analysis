package com.callapp.contacts.activity.invite.viewholder;

import android.view.View;
import androidx.recyclerview.widget.AbstractC2702n;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.adapter.InviteHorizontalItemsAdapter;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder.class */
public class InviteSuggestedViewHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    public final ScrollRecyclerStateTracker f23161s;

    /* renamed from: t */
    public RecyclerView f23162t;

    /* renamed from: u */
    public InviteHorizontalItemsAdapter f23163u;

    /* renamed from: v */
    public OnSuggestionClickListener f23164v;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener.class */
    public interface OnSuggestionClickListener {
        /* renamed from: a */
        void mo30188a(BadgeMemoryContactItem badgeMemoryContactItem, ProfilePictureView profilePictureView);

        /* renamed from: d */
        void mo30187d();
    }

    public InviteSuggestedViewHolder(View view, OnSuggestionClickListener onSuggestionClickListener) {
        super(view);
        ScrollRecyclerStateTracker scrollRecyclerStateTracker = new ScrollRecyclerStateTracker();
        this.f23161s = scrollRecyclerStateTracker;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131362982);
        this.f23162t = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        RecyclerView.AbstractC2632f itemAnimator = this.f23162t.getItemAnimator();
        if (itemAnimator instanceof AbstractC2702n) {
            ((AbstractC2702n) itemAnimator).f10307l = false;
        }
        scrollRecyclerStateTracker.setRecyclerView(this.f23162t);
        this.f23164v = onSuggestionClickListener;
    }
}
