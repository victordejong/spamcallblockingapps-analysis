package com.callapp.contacts.activity.analytics.progressGraph.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.progressGraph.ProgressBarAdapter;
import com.callapp.contacts.activity.analytics.progressGraph.data.FavoriteCallersData;
import com.callapp.contacts.activity.analytics.progressGraph.data.ProfilePictureProgressBarData;
import com.callapp.contacts.databinding.CallDurationGraphLayoutBinding;
import com.callapp.contacts.util.ThemeUtils;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020\u0012H\u0016J\u001a\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006#"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;", "adapterA", "Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "getAdapterA", "()Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;", "setAdapterA", "(Lcom/callapp/contacts/activity/analytics/progressGraph/ProgressBarAdapter;)V", "adapterB", "getAdapterB", "setAdapterB", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallDurationGraphLayoutBinding;", "notifyDataSetChanged", "", "profilePictureProgressBarData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "callDurationData", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment.class */
public final class CallDurationGraphFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBarAdapter f11026a = new ProgressBarAdapter();

    /* renamed from: b  reason: collision with root package name */
    private ProgressBarAdapter f11027b = new ProgressBarAdapter();

    /* renamed from: c  reason: collision with root package name */
    private CallDurationGraphLayoutBinding f11028c;

    private final CallDurationGraphLayoutBinding getBinding() {
        CallDurationGraphLayoutBinding callDurationGraphLayoutBinding = this.f11028c;
        p.a(callDurationGraphLayoutBinding);
        return callDurationGraphLayoutBinding;
    }

    public final void a(ArrayList<ProfilePictureProgressBarData> profilePictureProgressBarData, ArrayList<FavoriteCallersData> callDurationData) {
        p.d(profilePictureProgressBarData, "profilePictureProgressBarData");
        p.d(callDurationData, "callDurationData");
        this.f11026a.a(callDurationData);
        this.f11026a.notifyDataSetChanged();
        this.f11027b.a(profilePictureProgressBarData);
        this.f11027b.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.f11028c = CallDurationGraphLayoutBinding.a(inflater, viewGroup);
        LinearLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f11028c = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().f14281c.setBackgroundColor(ThemeUtils.getColor(2131099891));
        RecyclerView recyclerView = getBinding().f14280b;
        p.b(recyclerView, "binding.callTimeList");
        recyclerView.setAdapter(this.f11026a);
        RecyclerView recyclerView2 = getBinding().f14279a;
        p.b(recyclerView2, "binding.callTimeGraph");
        recyclerView2.setAdapter(this.f11027b);
    }
}
