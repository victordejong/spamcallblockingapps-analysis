package p1727n3.p1834m0.p1835c0.p1840q.p1842f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* renamed from: n3.m0.c0.q.f.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/c.class */
public abstract class AbstractC26728c<T> extends AbstractC26730d<T> {

    /* renamed from: h */
    public static final String f74836h = AbstractC26839p.m1295e("BrdcstRcvrCnstrntTrckr");

    /* renamed from: g */
    public final BroadcastReceiver f74837g = new C26729a();

    /* renamed from: n3.m0.c0.q.f.c$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/q/f/c$a.class */
    public class C26729a extends BroadcastReceiver {
        public C26729a() {
            AbstractC26728c.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC26728c.this.m1386g(context, intent);
            }
        }
    }

    public AbstractC26728c(Context context, AbstractC26821a abstractC26821a) {
        super(context, abstractC26821a);
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d
    /* renamed from: d */
    public void mo1382d() {
        AbstractC26839p.m1296c().mo1294a(f74836h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f74841b.registerReceiver(this.f74837g, m1387f());
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.p1842f.AbstractC26730d
    /* renamed from: e */
    public void mo1381e() {
        AbstractC26839p.m1296c().mo1294a(f74836h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f74841b.unregisterReceiver(this.f74837g);
    }

    /* renamed from: f */
    public abstract IntentFilter m1387f();

    /* renamed from: g */
    public abstract void m1386g(Context context, Intent intent);
}
