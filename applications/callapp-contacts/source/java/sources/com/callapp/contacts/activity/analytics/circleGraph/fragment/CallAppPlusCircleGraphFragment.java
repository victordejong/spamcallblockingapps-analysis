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
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aJ$\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020\u0015H\u0016J\u001a\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u001e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006("}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;", "callAppPlusAdapter", "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;", "getCallAppPlusAdapter", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;", "setCallAppPlusAdapter", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;)V", "circleGraphAdapter", "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "getCircleGraphAdapter", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "setCircleGraphAdapter", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;)V", "notifyDataSetChanged", "", "circleGraphData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "callAppPlusData", "", "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment.class */
public final class CallAppPlusCircleGraphFragment extends Fragment {

    /* renamed from: a */
    private CircleGraphAdapter f19904a = new CircleGraphAdapter();

    /* renamed from: b */
    private CallAppPlusCircleGraphAdapter f19905b = new CallAppPlusCircleGraphAdapter();

    /* renamed from: c */
    private CallappPlusCircleGraphLayoutBinding f19906c;

    private final CallappPlusCircleGraphLayoutBinding getBinding() {
        CallappPlusCircleGraphLayoutBinding callappPlusCircleGraphLayoutBinding = this.f19906c;
        C18524p.m3851a(callappPlusCircleGraphLayoutBinding);
        return callappPlusCircleGraphLayoutBinding;
    }

    /* renamed from: a */
    public final void m31637a(List<MultiCircleGraphData> circleGraphData, Map<IMDataExtractionUtils.RecognizedPersonOrigin, CallAppPlusData> callAppPlusData) {
        C18524p.m3840d(circleGraphData, "circleGraphData");
        C18524p.m3840d(callAppPlusData, "callAppPlusData");
        this.f19904a.m31641a(circleGraphData);
        Map a = C18247ai.m4256a(C18282n.m4145a((Iterable) C18247ai.m4246d(callAppPlusData), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.circleGraph.fragment.CallAppPlusCircleGraphFragment$notifyDataSetChanged$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C18299a.m4103a(Integer.valueOf(((CallAppPlusData) ((C18538n) t2).f63625b).getNumberOfIdentification()), Integer.valueOf(((CallAppPlusData) ((C18538n) t).f63625b).getNumberOfIdentification()));
            }
        }));
        ArrayList arrayList = new ArrayList();
        for (CallAppPlusData callAppPlusData2 : a.values()) {
            if (callAppPlusData2.getMustShow()) {
                arrayList.add(callAppPlusData2);
            } else if (callAppPlusData2.getNumberOfIdentification() > 0) {
                arrayList.add(callAppPlusData2);
            }
        }
        this.f19905b.m31642a(arrayList);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f19906c = CallappPlusCircleGraphLayoutBinding.m29070a(inflater, viewGroup);
        LinearLayout root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f19906c = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = getBinding().f25000b;
        C18524p.m3843b(recyclerView, "binding.callAppPlusDataList");
        recyclerView.setAdapter(this.f19904a);
        RecyclerView recyclerView2 = getBinding().f24999a;
        C18524p.m3843b(recyclerView2, "binding.callAppPlusCircleGraph");
        recyclerView2.setAdapter(this.f19905b);
        getBinding().f25001c.setBackgroundColor(ThemeUtils.getColor(2131099891));
    }
}
