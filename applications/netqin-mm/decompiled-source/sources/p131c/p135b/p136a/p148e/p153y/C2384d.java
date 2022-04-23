package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.y.d */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/d.class */
public class C2384d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b */
    public static final Set<C2384d> f9257b = new HashSet();

    /* renamed from: a */
    public final C2423p f9258a;

    /* renamed from: c.b.a.e.y.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/d$a.class */
    public class RunnableC2385a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2341l f9259a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f9260b;

        public RunnableC2385a(C2341l lVar, Runnable runnable) {
            this.f9259a = lVar;
            this.f9260b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f9259a.m30317E().unregisterReceiver(C2384d.this);
            C2384d.this.m29987a();
            Runnable runnable = this.f9260b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public C2384d(long j, C2341l lVar, Runnable runnable) {
        this.f9258a = C2423p.m29844a(j, lVar, new RunnableC2385a(lVar, runnable));
        f9257b.add(this);
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public static C2384d m29986a(long j, C2341l lVar, Runnable runnable) {
        return new C2384d(j, lVar, runnable);
    }

    /* renamed from: a */
    public void m29987a() {
        this.f9258a.m29837d();
        f9257b.remove(this);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f9258a.m29841b();
        } else if ("com.applovin.application_resumed".equals(action)) {
            this.f9258a.m29839c();
        }
    }
}
