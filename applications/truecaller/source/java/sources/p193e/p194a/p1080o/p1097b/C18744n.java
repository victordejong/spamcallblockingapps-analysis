package p193e.p194a.p1080o.p1097b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p160ui.custommessage.ondemand.MidCallCustomMessageActivityContainer;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1089g.p1093j.C18628e;
import p193e.p194a.p1080o.p1081a.p1095i.C18653a;
import p193e.p194a.p1080o.p1081a.p1095i.View$OnClickListenerC18656b;
import p193e.p194a.p1080o.p1102o.C18793f;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.o.b.n */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/n.class */
public final class C18744n implements AbstractC18742m {
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18742m
    /* renamed from: a */
    public void mo14562a(FragmentManager fragmentManager, OnDemandMessageSource.MidCall midCall, String str) {
        l.e(fragmentManager, "fragmentManager");
        l.e(midCall, "onDemandMessageSource");
        C18628e.C18629a.m14705b(C18628e.f52433k, fragmentManager, null, midCall, str, 2);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18742m
    /* renamed from: b */
    public PopupWindow mo14561b(ViewGroup viewGroup) {
        l.e(viewGroup, "parentView");
        l.e(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.d(context, "parent.context");
        float dimension = context.getResources().getDimension(C3771R.dimen.context_call_info_dialog_horizontal_margin);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        l.d(from, "LayoutInflater.from(parent.context)");
        C18793f m14464a = C18793f.m14464a(C17422k.m16050u0(from, true).inflate(C3771R.layout.context_call_dialog_on_demand_info, (ViewGroup) null, false));
        l.d(m14464a, "ContextCallDialogOnDeman…null,\n        false\n    )");
        PopupWindow popupWindow = new PopupWindow((View) m14464a.f52792a, -2, -2, true);
        popupWindow.setClippingEnabled(false);
        popupWindow.setElevation(4.0f);
        m14464a.f52793b.setOnClickListener(new View$OnClickListenerC18656b(popupWindow));
        popupWindow.showAtLocation(viewGroup, 8388611, (int) dimension, 0);
        return popupWindow;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18742m
    /* renamed from: c */
    public void mo14560c(FragmentManager fragmentManager) {
        l.e(fragmentManager, "fragmentManager");
        new C18653a().show(fragmentManager, d0.a(C18653a.class).c());
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18742m
    /* renamed from: d */
    public void mo14559d(Context context, OnDemandMessageSource.MidCall midCall, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(midCall, "onDemandMessageSource");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(midCall, "onDemandSource");
        Intent intent = new Intent(context, MidCallCustomMessageActivityContainer.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("onDemandMessageSource", midCall);
        intent.putExtra("sourceBundle", bundle);
        intent.putExtra("onDemandMessageHint", str);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18742m
    /* renamed from: e */
    public void mo14558e(FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource, String str) {
        l.e(fragmentManager, "fragmentManager");
        l.e(onDemandMessageSource, "onDemandMessageSource");
        C18628e.f52433k.m14706a(fragmentManager, callOptions, onDemandMessageSource, str);
    }
}
