package com.callapp.contacts.activity.analytics.progressGraph.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter;
import com.callapp.contacts.activity.analytics.progressGraph.data.BaseProgressBarData;
import com.callapp.contacts.databinding.ProgressGraphLayoutBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u000fH\u0016J\u001a\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;", "adapter", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "getAdapter", "()Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "setAdapter", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;)V", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/ProgressGraphLayoutBinding;", "notifyDataSetChanged", "", "baseProgressBarData", "", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment.class */
public final class GraphFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private ProgressGraphLayoutBinding f11029a;

    /* renamed from: b  reason: collision with root package name */
    private ProgressBarAdapter f11030b = new ProgressBarAdapter();

    private final ProgressGraphLayoutBinding getBinding() {
        ProgressGraphLayoutBinding progressGraphLayoutBinding = this.f11029a;
        p.a(progressGraphLayoutBinding);
        return progressGraphLayoutBinding;
    }

    public final void a(List<? extends BaseProgressBarData> baseProgressBarData) {
        p.d(baseProgressBarData, "baseProgressBarData");
        this.f11030b.a(baseProgressBarData);
        this.f11030b.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.f11029a = ProgressGraphLayoutBinding.a(inflater, viewGroup);
        LinearLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f11029a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = getBinding().f14347a;
        p.b(recyclerView, "binding.graphList");
        recyclerView.setAdapter(this.f11030b);
    }
}
