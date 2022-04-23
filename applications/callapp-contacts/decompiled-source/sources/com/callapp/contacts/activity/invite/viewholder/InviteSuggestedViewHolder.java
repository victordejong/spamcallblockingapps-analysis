package com.callapp.contacts.activity.invite.viewholder;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.adapter.InviteHorizontalItemsAdapter;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder.class */
public class InviteSuggestedViewHolder extends BaseCallAppViewHolder {
    public final ScrollRecyclerStateTracker s;
    public RecyclerView t;
    public InviteHorizontalItemsAdapter u;
    public OnSuggestionClickListener v;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener.class */
    public interface OnSuggestionClickListener {
        void a(BadgeMemoryContactItem badgeMemoryContactItem, ProfilePictureView profilePictureView);

        void d();
    }

    public InviteSuggestedViewHolder(View view, OnSuggestionClickListener onSuggestionClickListener) {
        super(view);
        ScrollRecyclerStateTracker scrollRecyclerStateTracker = new ScrollRecyclerStateTracker();
        this.s = scrollRecyclerStateTracker;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131362982);
        this.t = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        RecyclerView.f itemAnimator = this.t.getItemAnimator();
        if (itemAnimator instanceof n) {
            ((n) itemAnimator).l = false;
        }
        scrollRecyclerStateTracker.setRecyclerView(this.t);
        this.v = onSuggestionClickListener;
    }
}
