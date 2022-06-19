package com.iab.omid.library.applovin.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p060b.C1931a;
import com.iab.omid.library.applovin.p061c.AbstractC1940a;
import com.iab.omid.library.applovin.p061c.C1942b;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1949d;
import com.iab.omid.library.applovin.p062d.C1951f;
import com.iab.omid.library.applovin.p063e.C1952a;
import com.iab.omid.library.applovin.walking.C1961a;
import com.iab.omid.library.applovin.walking.p064a.C1967c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/TreeWalker.class */
public class TreeWalker implements AbstractC1940a.AbstractC1941a {

    /* renamed from: a */
    private static TreeWalker f7216a = new TreeWalker();

    /* renamed from: b */
    private static Handler f7217b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private static Handler f7218c = null;

    /* renamed from: l */
    private static final Runnable f7219l = new Runnable() { // from class: com.iab.omid.library.applovin.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().m4028h();
        }
    };

    /* renamed from: m */
    private static final Runnable f7220m = new Runnable() { // from class: com.iab.omid.library.applovin.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f7218c != null) {
                TreeWalker.f7218c.post(TreeWalker.f7219l);
                TreeWalker.f7218c.postDelayed(TreeWalker.f7220m, 200L);
            }
        }
    };

    /* renamed from: e */
    private int f7222e;

    /* renamed from: k */
    private long f7228k;

    /* renamed from: d */
    private List<TreeWalkerTimeLogger> f7221d = new ArrayList();

    /* renamed from: f */
    private boolean f7223f = false;

    /* renamed from: g */
    private final List<C1952a> f7224g = new ArrayList();

    /* renamed from: i */
    private C1961a f7226i = new C1961a();

    /* renamed from: h */
    private C1942b f7225h = new C1942b();

    /* renamed from: j */
    private C1971b f7227j = new C1971b(new C1967c());

    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/TreeWalker$TreeWalkerNanoTimeLogger.class */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/TreeWalker$TreeWalkerTimeLogger.class */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    /* renamed from: a */
    private void m4042a(long j) {
        if (this.f7221d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f7221d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f7222e, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f7222e, j);
                }
            }
        }
    }

    /* renamed from: a */
    private void m4041a(View view, AbstractC1940a abstractC1940a, JSONObject jSONObject, EnumC1972c enumC1972c, boolean z) {
        abstractC1940a.mo4114a(view, jSONObject, this, enumC1972c == EnumC1972c.PARENT_VIEW, z);
    }

    /* renamed from: a */
    private void m4037a(String str, View view, JSONObject jSONObject) {
        AbstractC1940a m4117b = this.f7225h.m4117b();
        String m4019a = this.f7226i.m4019a(str);
        if (m4019a != null) {
            JSONObject mo4115a = m4117b.mo4115a(view);
            C1946b.m4100a(mo4115a, str);
            C1946b.m4096b(mo4115a, m4019a);
            C1946b.m4098a(jSONObject, mo4115a);
        }
    }

    /* renamed from: a */
    private boolean m4039a(View view, JSONObject jSONObject) {
        String m4022a = this.f7226i.m4022a(view);
        if (m4022a != null) {
            C1946b.m4100a(jSONObject, m4022a);
            C1946b.m4101a(jSONObject, Boolean.valueOf(this.f7226i.m4012d(view)));
            this.f7226i.m4011e();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private boolean m4035b(View view, JSONObject jSONObject) {
        C1961a.C1962a m4017b = this.f7226i.m4017b(view);
        if (m4017b != null) {
            C1946b.m4102a(jSONObject, m4017b);
            return true;
        }
        return false;
    }

    public static TreeWalker getInstance() {
        return f7216a;
    }

    /* renamed from: h */
    public void m4028h() {
        m4027i();
        m4032d();
        m4026j();
    }

    /* renamed from: i */
    private void m4027i() {
        this.f7222e = 0;
        this.f7224g.clear();
        this.f7223f = false;
        Iterator<C1929a> it2 = C1931a.m4171a().m4167c().iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next().m4191b()) {
                    this.f7223f = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.f7228k = C1949d.m4087a();
    }

    /* renamed from: j */
    private void m4026j() {
        m4042a(C1949d.m4087a() - this.f7228k);
    }

    /* renamed from: k */
    private void m4025k() {
        if (f7218c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f7218c = handler;
            handler.post(f7219l);
            f7218c.postDelayed(f7220m, 200L);
        }
    }

    /* renamed from: l */
    private void m4024l() {
        Handler handler = f7218c;
        if (handler != null) {
            handler.removeCallbacks(f7220m);
            f7218c = null;
        }
    }

    /* renamed from: a */
    public void m4043a() {
        m4025k();
    }

    @Override // com.iab.omid.library.applovin.p061c.AbstractC1940a.AbstractC1941a
    /* renamed from: a */
    public void mo4040a(View view, AbstractC1940a abstractC1940a, JSONObject jSONObject, boolean z) {
        EnumC1972c m4014c;
        if (C1951f.m4070d(view) && (m4014c = this.f7226i.m4014c(view)) != EnumC1972c.UNDERLYING_VIEW) {
            JSONObject mo4115a = abstractC1940a.mo4115a(view);
            C1946b.m4098a(jSONObject, mo4115a);
            if (!m4039a(view, mo4115a)) {
                boolean z2 = z || m4035b(view, mo4115a);
                if (this.f7223f && m4014c == EnumC1972c.OBSTRUCTION_VIEW && !z2) {
                    this.f7224g.add(new C1952a(view));
                }
                m4041a(view, abstractC1940a, mo4115a, m4014c, z2);
            }
            this.f7222e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (!this.f7221d.contains(treeWalkerTimeLogger)) {
            this.f7221d.add(treeWalkerTimeLogger);
        }
    }

    /* renamed from: b */
    public void m4036b() {
        m4033c();
        this.f7221d.clear();
        f7217b.post(new Runnable() { // from class: com.iab.omid.library.applovin.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.f7227j.m3994a();
            }
        });
    }

    /* renamed from: c */
    public void m4033c() {
        m4024l();
    }

    /* renamed from: d */
    public void m4032d() {
        this.f7226i.m4015c();
        long m4087a = C1949d.m4087a();
        AbstractC1940a m4118a = this.f7225h.m4118a();
        if (this.f7226i.m4018b().size() > 0) {
            Iterator<String> it2 = this.f7226i.m4018b().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject mo4115a = m4118a.mo4115a(null);
                m4037a(next, this.f7226i.m4016b(next), mo4115a);
                C1946b.m4103a(mo4115a);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f7227j.m3990b(mo4115a, hashSet, m4087a);
            }
        }
        if (this.f7226i.m4023a().size() > 0) {
            JSONObject mo4115a2 = m4118a.mo4115a(null);
            m4041a(null, m4118a, mo4115a2, EnumC1972c.PARENT_VIEW, false);
            C1946b.m4103a(mo4115a2);
            this.f7227j.m3992a(mo4115a2, this.f7226i.m4023a(), m4087a);
            if (this.f7223f) {
                for (C1929a c1929a : C1931a.m4171a().m4167c()) {
                    c1929a.m4193a(this.f7224g);
                }
            }
        } else {
            this.f7227j.m3994a();
        }
        this.f7226i.m4013d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f7221d.contains(treeWalkerTimeLogger)) {
            this.f7221d.remove(treeWalkerTimeLogger);
        }
    }
}
