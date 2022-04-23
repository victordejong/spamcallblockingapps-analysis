package com.callapp.contacts.activity.analytics.circleGraph.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.circleGraph.CallAppPlusCircleGraphAdapter;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphAdapter;
import com.callapp.contacts.activity.analytics.circleGraph.data.CallAppPlusData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.databinding.CallappPlusCircleGraphLayoutBinding;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.b.a;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aJ$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020\u0015H\u0016J\u001a\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u001e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006("}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;", "callAppPlusAdapter", "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;", "getCallAppPlusAdapter", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;", "setCallAppPlusAdapter", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;)V", "circleGraphAdapter", "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "getCircleGraphAdapter", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "setCircleGraphAdapter", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;)V", "notifyDataSetChanged", "", "circleGraphData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "callAppPlusData", "", "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment.class */
public final class CallAppPlusCircleGraphFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private CircleGraphAdapter f10880a = new CircleGraphAdapter();

    /* renamed from: b  reason: collision with root package name */
    private CallAppPlusCircleGraphAdapter f10881b = new CallAppPlusCircleGraphAdapter();

    /* renamed from: c  reason: collision with root package name */
    private CallappPlusCircleGraphLayoutBinding f10882c;

    private final CallappPlusCircleGraphLayoutBinding getBinding() {
        CallappPlusCircleGraphLayoutBinding callappPlusCircleGraphLayoutBinding = this.f10882c;
        p.a(callappPlusCircleGraphLayoutBinding);
        return callappPlusCircleGraphLayoutBinding;
    }

    public final void a(List<MultiCircleGraphData> circleGraphData, Map<IMDataExtractionUtils.RecognizedPersonOrigin, CallAppPlusData> callAppPlusData) {
        p.d(circleGraphData, "circleGraphData");
        p.d(callAppPlusData, "callAppPlusData");
        this.f10880a.a(circleGraphData);
        Map a2 = ai.a(n.a((Iterable) ai.d(callAppPlusData), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.circleGraph.fragment.CallAppPlusCircleGraphFragment$notifyDataSetChanged$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return a.a(Integer.valueOf(((CallAppPlusData) ((kotlin.n) t2).f36811b).getNumberOfIdentification()), Integer.valueOf(((CallAppPlusData) ((kotlin.n) t).f36811b).getNumberOfIdentification()));
            }
        }));
        ArrayList arrayList = new ArrayList();
        for (CallAppPlusData callAppPlusData2 : a2.values()) {
            if (callAppPlusData2.getMustShow()) {
                arrayList.add(callAppPlusData2);
            } else if (callAppPlusData2.getNumberOfIdentification() > 0) {
                arrayList.add(callAppPlusData2);
            }
        }
        this.f10881b.a(arrayList);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.f10882c = CallappPlusCircleGraphLayoutBinding.a(inflater, viewGroup);
        LinearLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f10882c = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = getBinding().f14296b;
        p.b(recyclerView, "binding.callAppPlusDataList");
        recyclerView.setAdapter(this.f10880a);
        RecyclerView recyclerView2 = getBinding().f14295a;
        p.b(recyclerView2, "binding.callAppPlusCircleGraph");
        recyclerView2.setAdapter(this.f10881b);
        getBinding().f14297c.setBackgroundColor(ThemeUtils.getColor(2131099891));
    }
}
