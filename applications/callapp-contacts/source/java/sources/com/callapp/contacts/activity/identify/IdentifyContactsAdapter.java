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
public class IdentifyContactsAdapter extends RecyclerView.AbstractC2626a<IdentifyContactsViewHolder> {

    /* renamed from: a */
    private List<IdentifyContactsData> f23075a;

    /* renamed from: b */
    private OnIdentifyContactClickListener f23076b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener.class */
    public interface OnIdentifyContactClickListener {
        /* renamed from: a */
        void mo30241a(int i);

        /* renamed from: b */
        void mo30240b(int i);
    }

    public IdentifyContactsAdapter(List<IdentifyContactsData> list, OnIdentifyContactClickListener onIdentifyContactClickListener) {
        this.f23075a = list;
        this.f23076b = onIdentifyContactClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f23075a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(IdentifyContactsViewHolder identifyContactsViewHolder, int i) {
        final IdentifyContactsViewHolder identifyContactsViewHolder2 = identifyContactsViewHolder;
        final IdentifyContactsData identifyContactsData = this.f23075a.get(i);
        final OnIdentifyContactClickListener onIdentifyContactClickListener = this.f23076b;
        identifyContactsViewHolder2.f23091x = identifyContactsData;
        new IdentifyContactsViewHolder.IdentifyContactsTask(identifyContactsData).execute();
        identifyContactsViewHolder2.f23087t.setText(identifyContactsData.getSuggestedPhone().m26087e());
        identifyContactsViewHolder2.f23089v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().mo28444a(Constants.OPTIMIZE_CONTACTS, "Contact Opt. card ", "Dismiss", 0.0d, new String[0]);
                onIdentifyContactClickListener.mo30240b(identifyContactsViewHolder2.getAdapterPosition());
            }
        });
        identifyContactsViewHolder2.f23090w.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().mo28444a(Constants.OPTIMIZE_CONTACTS, "Contact Opt. card ", "Save", 0.0d, new String[0]);
                IdentifyContactsViewHolder.m30235a(identifyContactsViewHolder2, onIdentifyContactClickListener);
            }
        });
        identifyContactsViewHolder2.f23085r.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                view.getContext().startActivity(ContactDetailsActivity.createIntent(view.getContext(), identifyContactsData.getSuggestedContactId(), identifyContactsData.getSuggestedPhone().getRawNumber(), null, false, null, Constants.OPTIMIZE_CONTACTS, ENTRYPOINT.CALL_LOG_CONTACT_LIST));
            }
        });
        ((FrameLayout.LayoutParams) identifyContactsViewHolder2.f23086s.getLayoutParams()).leftMargin = identifyContactsViewHolder2.f23092y;
        identifyContactsViewHolder2.f23086s.requestLayout();
        identifyContactsViewHolder2.f23088u.setAlpha(1.0f);
        identifyContactsViewHolder2.f23088u.setVisibility(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ IdentifyContactsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new IdentifyContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559129, viewGroup, false));
    }
}
