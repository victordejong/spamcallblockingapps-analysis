package p193e.p194a.p1164r.p1166a0;

import android.content.DialogInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.truecaller.multisim.SimInfo;
import e.a.r.a0.m;
import java.util.List;
import p1727n3.p1859r.p1860a.C26907a;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.a0;
/* renamed from: e.a.r.a0.o */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/o.class */
public final class DialogInterface$OnDismissListenerC19720o implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ m f54745a;

    /* renamed from: b */
    public final /* synthetic */ a0 f54746b;

    /* renamed from: c */
    public final /* synthetic */ a f54747c;

    /* renamed from: d */
    public final /* synthetic */ List f54748d;

    /* renamed from: e */
    public final /* synthetic */ l f54749e;

    /* renamed from: f */
    public final /* synthetic */ a f54750f;

    public DialogInterface$OnDismissListenerC19720o(m mVar, a0 a0Var, a aVar, List list, l lVar, a aVar2) {
        this.f54745a = mVar;
        this.f54746b = a0Var;
        this.f54747c = aVar;
        this.f54748d = list;
        this.f54749e = lVar;
        this.f54750f = aVar2;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        FragmentManager supportFragmentManager;
        int i = this.f54746b.a;
        if (i != -1) {
            SimInfo simInfo = (SimInfo) i.G(this.f54748d, i);
            if (simInfo == null || ((s) this.f54749e.d(simInfo)) == null) {
                s sVar = (s) this.f54750f.invoke();
            }
        } else {
            this.f54747c.invoke();
        }
        Fragment fragment = this.f54745a;
        m.a aVar = m.b;
        n3.r.a.l activity = fragment.getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        C26907a c26907a = new C26907a(supportFragmentManager);
        c26907a.mo1121l(fragment);
        c26907a.mo1126g();
    }
}
