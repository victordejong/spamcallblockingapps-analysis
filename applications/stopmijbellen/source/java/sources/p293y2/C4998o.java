package p293y2;

import android.content.Context;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.concurrent.Executor;
import p004a3.AbstractC0011a;
import p018b3.AbstractC0721a;
import p031c6.C0846a;
import p081e6.C2583a;
import p161l9.AbstractC3541a;
import p241t4.C4392c;
import p261v2.AbstractC4592e;
import p275w5.AbstractC4739b;
import p286x5.AbstractC4871e;
import p303z2.AbstractC5039c;
/* renamed from: y2.o */
/* loaded from: classes-dex2jar.jar:y2/o.class */
public final class C4998o implements AbstractC3541a {

    /* renamed from: a */
    public final /* synthetic */ int f15227a;

    /* renamed from: b */
    public final AbstractC3541a f15228b;

    /* renamed from: c */
    public final AbstractC3541a f15229c;

    /* renamed from: d */
    public final AbstractC3541a f15230d;

    /* renamed from: e */
    public final AbstractC3541a f15231e;

    /* renamed from: f */
    public final AbstractC3541a f15232f;

    /* renamed from: g */
    public final AbstractC3541a f15233g;

    /* renamed from: h */
    public final AbstractC3541a f15234h;

    public /* synthetic */ C4998o(AbstractC3541a abstractC3541a, AbstractC3541a abstractC3541a2, AbstractC3541a abstractC3541a3, AbstractC3541a abstractC3541a4, AbstractC3541a abstractC3541a5, AbstractC3541a abstractC3541a6, AbstractC3541a abstractC3541a7, int i) {
        this.f15227a = i;
        this.f15228b = abstractC3541a;
        this.f15229c = abstractC3541a2;
        this.f15230d = abstractC3541a3;
        this.f15231e = abstractC3541a4;
        this.f15232f = abstractC3541a5;
        this.f15233g = abstractC3541a6;
        this.f15234h = abstractC3541a7;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        switch (this.f15227a) {
            case 0:
                return new C4997n((Context) this.f15228b.get(), (AbstractC4592e) this.f15229c.get(), (AbstractC5039c) this.f15230d.get(), (AbstractC5003t) this.f15231e.get(), (Executor) this.f15232f.get(), (AbstractC0011a) this.f15233g.get(), (AbstractC0721a) this.f15234h.get());
            default:
                return new C0846a((C4392c) this.f15228b.get(), (AbstractC4739b) this.f15229c.get(), (AbstractC4871e) this.f15230d.get(), (AbstractC4739b) this.f15231e.get(), (RemoteConfigManager) this.f15232f.get(), (C2583a) this.f15233g.get(), (GaugeManager) this.f15234h.get());
        }
    }
}
