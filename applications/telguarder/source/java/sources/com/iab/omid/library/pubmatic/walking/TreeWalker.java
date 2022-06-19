package com.iab.omid.library.pubmatic.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.pubmatic.p013c.AbstractC1764a;
import com.iab.omid.library.pubmatic.p013c.C1766b;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1773d;
import com.iab.omid.library.pubmatic.p014d.C1775f;
import com.iab.omid.library.pubmatic.walking.C1785a;
import com.iab.omid.library.pubmatic.walking.p016a.C1791c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/TreeWalker.class */
public class TreeWalker implements AbstractC1764a.AbstractC1765a {

    /* renamed from: a */
    private static TreeWalker f285a = new TreeWalker();

    /* renamed from: b */
    private static Handler f286b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private static Handler f287c = null;

    /* renamed from: j */
    private static final Runnable f288j = new Runnable() { // from class: com.iab.omid.library.pubmatic.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().m1167h();
        }
    };

    /* renamed from: k */
    private static final Runnable f289k = new Runnable() { // from class: com.iab.omid.library.pubmatic.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f287c != null) {
                TreeWalker.f287c.post(TreeWalker.f288j);
                TreeWalker.f287c.postDelayed(TreeWalker.f289k, 200L);
            }
        }
    };

    /* renamed from: e */
    private int f291e;

    /* renamed from: i */
    private long f295i;

    /* renamed from: d */
    private List<TreeWalkerTimeLogger> f290d = new ArrayList();

    /* renamed from: g */
    private C1785a f293g = new C1785a();

    /* renamed from: f */
    private C1766b f292f = new C1766b();

    /* renamed from: h */
    private C1795b f294h = new C1795b(new C1791c());

    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/TreeWalker$TreeWalkerNanoTimeLogger.class */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/TreeWalker$TreeWalkerTimeLogger.class */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    TreeWalker() {
    }

    /* renamed from: a */
    private void m1181a(long j) {
        if (this.f290d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f290d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f291e, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f291e, j);
                }
            }
        }
    }

    /* renamed from: a */
    private void m1179a(View view, AbstractC1764a abstractC1764a, JSONObject jSONObject, EnumC1796c enumC1796c) {
        abstractC1764a.mo1251a(view, jSONObject, this, enumC1796c == EnumC1796c.PARENT_VIEW);
    }

    /* renamed from: a */
    private void m1176a(String str, View view, JSONObject jSONObject) {
        AbstractC1764a m1254b = this.f292f.m1254b();
        String m1158a = this.f293g.m1158a(str);
        if (m1158a != null) {
            JSONObject mo1252a = m1254b.mo1252a(view);
            C1770b.m1238a(mo1252a, str);
            C1770b.m1234b(mo1252a, m1158a);
            C1770b.m1236a(jSONObject, mo1252a);
        }
    }

    /* renamed from: a */
    private boolean m1178a(View view, JSONObject jSONObject) {
        String m1161a = this.f293g.m1161a(view);
        if (m1161a != null) {
            C1770b.m1238a(jSONObject, m1161a);
            this.f293g.m1150e();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m1174b(View view, JSONObject jSONObject) {
        C1785a.C1786a m1156b = this.f293g.m1156b(view);
        if (m1156b != null) {
            C1770b.m1239a(jSONObject, m1156b);
        }
    }

    public static TreeWalker getInstance() {
        return f285a;
    }

    /* renamed from: h */
    public void m1167h() {
        m1166i();
        m1171d();
        m1165j();
    }

    /* renamed from: i */
    private void m1166i() {
        this.f291e = 0;
        this.f295i = C1773d.m1226a();
    }

    /* renamed from: j */
    private void m1165j() {
        m1181a(C1773d.m1226a() - this.f295i);
    }

    /* renamed from: k */
    private void m1164k() {
        if (f287c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f287c = handler;
            handler.post(f288j);
            f287c.postDelayed(f289k, 200L);
        }
    }

    /* renamed from: l */
    private void m1163l() {
        Handler handler = f287c;
        if (handler != null) {
            handler.removeCallbacks(f289k);
            f287c = null;
        }
    }

    /* renamed from: a */
    public void m1182a() {
        m1164k();
    }

    @Override // com.iab.omid.library.pubmatic.p013c.AbstractC1764a.AbstractC1765a
    /* renamed from: a */
    public void mo1180a(View view, AbstractC1764a abstractC1764a, JSONObject jSONObject) {
        EnumC1796c m1153c;
        if (C1775f.m1209d(view) && (m1153c = this.f293g.m1153c(view)) != EnumC1796c.UNDERLYING_VIEW) {
            JSONObject mo1252a = abstractC1764a.mo1252a(view);
            C1770b.m1236a(jSONObject, mo1252a);
            if (!m1178a(view, mo1252a)) {
                m1174b(view, mo1252a);
                m1179a(view, abstractC1764a, mo1252a, m1153c);
            }
            this.f291e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (!this.f290d.contains(treeWalkerTimeLogger)) {
            this.f290d.add(treeWalkerTimeLogger);
        }
    }

    /* renamed from: b */
    public void m1175b() {
        m1172c();
        this.f290d.clear();
        f286b.post(new Runnable() { // from class: com.iab.omid.library.pubmatic.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.f294h.m1135a();
            }
        });
    }

    /* renamed from: c */
    public void m1172c() {
        m1163l();
    }

    /* renamed from: d */
    void m1171d() {
        this.f293g.m1154c();
        long m1226a = C1773d.m1226a();
        AbstractC1764a m1255a = this.f292f.m1255a();
        if (this.f293g.m1157b().size() > 0) {
            Iterator<String> it = this.f293g.m1157b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject mo1252a = m1255a.mo1252a(null);
                m1176a(next, this.f293g.m1155b(next), mo1252a);
                C1770b.m1240a(mo1252a);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f294h.m1131b(mo1252a, hashSet, m1226a);
            }
        }
        if (this.f293g.m1162a().size() > 0) {
            JSONObject mo1252a2 = m1255a.mo1252a(null);
            m1179a(null, m1255a, mo1252a2, EnumC1796c.PARENT_VIEW);
            C1770b.m1240a(mo1252a2);
            this.f294h.m1133a(mo1252a2, this.f293g.m1162a(), m1226a);
        } else {
            this.f294h.m1135a();
        }
        this.f293g.m1152d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f290d.contains(treeWalkerTimeLogger)) {
            this.f290d.remove(treeWalkerTimeLogger);
        }
    }
}
