package p260v1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
/* renamed from: v1.c */
/* loaded from: classes-dex2jar.jar:v1/c.class */
public abstract class AbstractC4578c<T> extends AbstractC4580d<T> {

    /* renamed from: h */
    public static final String f14153h = AbstractC3824h.m1773e("BrdcstRcvrCnstrntTrckr");

    /* renamed from: g */
    public final BroadcastReceiver f14154g = new C4579a();

    /* renamed from: v1.c$a */
    /* loaded from: classes-dex2jar.jar:v1/c$a.class */
    public class C4579a extends BroadcastReceiver {
        public C4579a() {
            AbstractC4578c.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC4578c.this.mo752g(context, intent);
            }
        }
    }

    public AbstractC4578c(Context context, AbstractC0008a abstractC0008a) {
        super(context, abstractC0008a);
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: d */
    public void mo758d() {
        AbstractC3824h.m1774c().mo1772a(f14153h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f14158b.registerReceiver(this.f14154g, mo753f());
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: e */
    public void mo757e() {
        AbstractC3824h.m1774c().mo1772a(f14153h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f14158b.unregisterReceiver(this.f14154g);
    }

    /* renamed from: f */
    public abstract IntentFilter mo753f();

    /* renamed from: g */
    public abstract void mo752g(Context context, Intent intent);
}
