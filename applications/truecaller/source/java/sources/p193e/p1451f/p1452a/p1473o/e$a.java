package p193e.p1451f.p1452a.p1473o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1473o.AbstractC22556c;
import p193e.p1451f.p1452a.p1476r.AbstractC22587d;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.o.e$a */
/* loaded from: classes-dex2jar.jar:e/f/a/o/e$a.class */
public class e$a extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ e f62486a;

    public e$a(e eVar) {
        this.f62486a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e eVar = this.f62486a;
        boolean z = eVar.c;
        eVar.c = eVar.a(context);
        if (z != this.f62486a.c) {
            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                boolean z2 = this.f62486a.c;
            }
            e eVar2 = this.f62486a;
            AbstractC22556c.AbstractC22557a abstractC22557a = eVar2.b;
            boolean z3 = eVar2.c;
            ComponentCallbacks2C22236i.C22238c c22238c = (ComponentCallbacks2C22236i.C22238c) abstractC22557a;
            Objects.requireNonNull(c22238c);
            if (!z3) {
                return;
            }
            synchronized (ComponentCallbacks2C22236i.this) {
                C22569n c22569n = c22238c.f61788a;
                Iterator it = ((ArrayList) C22623j.m8019e(c22569n.f62503a)).iterator();
                while (it.hasNext()) {
                    AbstractC22587d abstractC22587d = (AbstractC22587d) it.next();
                    if (!abstractC22587d.isComplete() && !abstractC22587d.mo8072b()) {
                        abstractC22587d.clear();
                        if (!c22569n.f62505c) {
                            abstractC22587d.mo8066h();
                        } else {
                            c22569n.f62504b.add(abstractC22587d);
                        }
                    }
                }
            }
        }
    }
}
