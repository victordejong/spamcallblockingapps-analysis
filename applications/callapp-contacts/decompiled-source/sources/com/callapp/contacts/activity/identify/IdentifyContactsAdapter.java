package com.callapp.contacts.activity.identify;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.identify.IdentifyContactsViewHolder;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsAdapter.class */
public class IdentifyContactsAdapter extends RecyclerView.a<IdentifyContactsViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<IdentifyContactsData> f12911a;

    /* renamed from: b  reason: collision with root package name */
    private OnIdentifyContactClickListener f12912b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener.class */
    public interface OnIdentifyContactClickListener {
        void a(int i);

        void b(int i);
    }

    public IdentifyContactsAdapter(List<IdentifyContactsData> list, OnIdentifyContactClickListener onIdentifyContactClickListener) {
        this.f12911a = list;
        this.f12912b = onIdentifyContactClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f12911a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(IdentifyContactsViewHolder identifyContactsViewHolder, int i) {
        final IdentifyContactsViewHolder identifyContactsViewHolder2 = identifyContactsViewHolder;
        final IdentifyContactsData identifyContactsData = this.f12911a.get(i);
        final OnIdentifyContactClickListener onIdentifyContactClickListener = this.f12912b;
        identifyContactsViewHolder2.x = identifyContactsData;
        new IdentifyContactsViewHolder.IdentifyContactsTask(identifyContactsData).execute();
        identifyContactsViewHolder2.t.setText(identifyContactsData.getSuggestedPhone().e());
        identifyContactsViewHolder2.v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Contact Opt. card ", "Dismiss", 0.0d, new String[0]);
                onIdentifyContactClickListener.b(identifyContactsViewHolder2.getAdapterPosition());
            }
        });
        identifyContactsViewHolder2.w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Contact Opt. card ", "Save", 0.0d, new String[0]);
                IdentifyContactsViewHolder.a(identifyContactsViewHolder2, onIdentifyContactClickListener);
            }
        });
        identifyContactsViewHolder2.r.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                view.getContext().startActivity(ContactDetailsActivity.createIntent(view.getContext(), identifyContactsData.getSuggestedContactId(), identifyContactsData.getSuggestedPhone().getRawNumber(), null, false, null, Constants.OPTIMIZE_CONTACTS, ENTRYPOINT.CALL_LOG_CONTACT_LIST));
            }
        });
        ((FrameLayout.LayoutParams) identifyContactsViewHolder2.s.getLayoutParams()).leftMargin = identifyContactsViewHolder2.y;
        identifyContactsViewHolder2.s.requestLayout();
        identifyContactsViewHolder2.u.setAlpha(1.0f);
        identifyContactsViewHolder2.u.setVisibility(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ IdentifyContactsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new IdentifyContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559129, viewGroup, false));
    }
}
