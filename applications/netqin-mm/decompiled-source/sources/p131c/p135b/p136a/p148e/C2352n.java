package p131c.p135b.p136a.p148e;

import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinSdk;
import java.util.HashMap;
import java.util.Map;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: c.b.a.e.n */
/* loaded from: classes-dex2jar.jar:c/b/a/e/n.class */
public class C2352n {

    /* renamed from: a */
    public final Map<String, Thread> f9149a = new HashMap();

    /* renamed from: b */
    public final Object f9150b = new Object();

    /* renamed from: c */
    public final C2341l f9151c;

    /* renamed from: c.b.a.e.n$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/n$a.class */
    public static final class RunnableC2353a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(System.currentTimeMillis());
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public C2352n(C2341l lVar) {
        this.f9151c = lVar;
        if (((Boolean) lVar.m30291a(C2251d.C2256e.f8761v3)).booleanValue()) {
            m30202a("ltg-" + AbstractC2426r.m29816a(C2251d.C2258g.f8800j, lVar)).start();
        }
    }

    /* renamed from: a */
    public static Thread m30202a(String str) {
        Thread thread = new Thread(new RunnableC2353a(), str);
        thread.setDaemon(true);
        return thread;
    }

    /* renamed from: a */
    public void m30203a(Object obj) {
        String c = m30200c(obj);
        if (((Boolean) this.f9151c.m30291a(C2251d.C2256e.f8761v3)).booleanValue() && c != null) {
            synchronized (this.f9150b) {
                if (!this.f9149a.containsKey(c)) {
                    C2374t d0 = this.f9151c.m30262d0();
                    d0.m30044b(AppLovinSdk.TAG, "Creating ad debug thread with name: " + c);
                    Thread a = m30202a(c);
                    a.start();
                    this.f9149a.put(c, a);
                }
            }
        }
    }

    /* renamed from: b */
    public void m30201b(Object obj) {
        String c = m30200c(obj);
        if (((Boolean) this.f9151c.m30291a(C2251d.C2256e.f8761v3)).booleanValue() && c != null) {
            synchronized (this.f9150b) {
                Thread thread = this.f9149a.get(c);
                if (thread != null) {
                    C2374t d0 = this.f9151c.m30262d0();
                    d0.m30044b(AppLovinSdk.TAG, "Destroying ad debug thread with name: " + c);
                    thread.interrupt();
                    this.f9149a.remove(c);
                }
            }
        }
    }

    /* renamed from: c */
    public final String m30200c(Object obj) {
        if (obj instanceof C2135c.AbstractC2137b) {
            C2135c.AbstractC2137b bVar = (C2135c.AbstractC2137b) obj;
            return bVar.getFormat().getLabel() + '-' + bVar.m30900e() + '-' + bVar.mo30882l();
        } else if (!(obj instanceof AbstractC7036g)) {
            return null;
        } else {
            AbstractC7036g gVar = (AbstractC7036g) obj;
            int identityHashCode = System.identityHashCode(gVar);
            String str = obj instanceof C6894a ? "-VAST" : "";
            return "AL-" + gVar.getAdZone().m30641b().getLabel() + "-" + gVar.getAdIdNumber() + "-" + identityHashCode + str;
        }
    }
}
