package p193o8;

import android.content.Context;
import android.widget.Toast;
import com.mglab.scm.visual.FragmentStat;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2780h;
/* renamed from: o8.v */
/* loaded from: classes2-dex2jar.jar:o8/v.class */
public final /* synthetic */ class C3969v implements View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f12475a;

    /* renamed from: b */
    public final /* synthetic */ FragmentStat f12476b;

    public /* synthetic */ C3969v(FragmentStat fragmentStat, int i) {
        this.f12475a = i;
        this.f12476b = fragmentStat;
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f12475a) {
            case 0:
                FragmentStat fragmentStat = this.f12476b;
                C3948e c3948e = FragmentStat.f7603g;
                C2780h.m3049g0(fragmentStat.getContext(), "psetdebug", true ^ C2780h.m3080I(fragmentStat.getContext()));
                Context context = fragmentStat.getContext();
                StringBuilder sb = new StringBuilder();
                sb.append("DEBUG ");
                sb.append(C2780h.m3080I(fragmentStat.getContext()) ? "UNLOCKED" : "LOCKED");
                Toast.makeText(context, sb.toString(), 0).show();
                return;
            default:
                FragmentStat fragmentStat2 = this.f12476b;
                C3948e c3948e2 = FragmentStat.f7603g;
                C2780h.m3049g0(fragmentStat2.getContext(), "preventunloadsuggest", true);
                return;
        }
    }
}
