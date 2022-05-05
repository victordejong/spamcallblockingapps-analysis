package com.taiwanmobile.p055pt.adp.view.p056a;

import android.content.Context;
import android.os.Handler;
import com.mopub.nativeads.Utils;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdSize;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Queue;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.h */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h.class */
public class C4147h {

    /* renamed from: a */
    public static final String f9910a = "h";

    /* renamed from: b */
    public WeakReference<Context> f9911b;

    /* renamed from: c */
    public String f9912c;

    /* renamed from: d */
    public String f9913d;

    /* renamed from: e */
    public TWMAdRequest f9914e;

    /* renamed from: f */
    public TWMAdSize f9915f;

    /* renamed from: g */
    public Handler f9916g;

    /* renamed from: h */
    public int f9917h;

    /* renamed from: i */
    public long f9918i;

    /* renamed from: j */
    public Queue<C4150b> f9919j;

    /* renamed from: k */
    public AbstractC4151c f9920k;

    /* renamed from: l */
    public Runnable f9921l;

    /* renamed from: com.taiwanmobile.pt.adp.view.a.h$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h$a.class */
    public enum EnumC4149a {
        CRITEO("Criteo"),
        TAMEDIA(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA),
        UCFUNNEL("UCFunnel");
        

        /* renamed from: d */
        public final String f9927d;

        EnumC4149a(String str) {
            this.f9927d = str;
        }

        /* renamed from: a */
        public String m29519a() {
            return this.f9927d;
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.h$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h$b.class */
    public class C4150b {

        /* renamed from: b */
        public WeakReference<C4147h> f9929b;

        /* renamed from: c */
        public String f9930c;

        /* renamed from: d */
        public String f9931d;

        /* renamed from: e */
        public String f9932e = null;

        /* renamed from: f */
        public String f9933f = null;

        /* renamed from: g */
        public String f9934g = null;

        /* renamed from: h */
        public String f9935h = null;

        /* renamed from: i */
        public boolean f9936i = false;

        public C4150b(C4147h hVar, String str, String str2) {
            this.f9930c = null;
            this.f9931d = null;
            this.f9929b = new WeakReference<>(hVar);
            this.f9930c = str;
            this.f9931d = str2;
        }

        /* renamed from: a */
        public C4147h m29518a() {
            WeakReference<C4147h> weakReference = this.f9929b;
            return weakReference != null ? weakReference.get() : null;
        }

        /* renamed from: a */
        public void m29517a(String str) {
            this.f9932e = str;
        }

        /* renamed from: a */
        public void m29516a(boolean z) {
            this.f9936i = z;
        }

        /* renamed from: b */
        public String m29515b() {
            return this.f9930c;
        }

        /* renamed from: b */
        public void m29514b(String str) {
            this.f9933f = str;
        }

        /* renamed from: c */
        public String m29513c() {
            return this.f9931d;
        }

        /* renamed from: c */
        public void m29512c(String str) {
            this.f9934g = str;
        }

        /* renamed from: d */
        public String m29511d() {
            return this.f9932e;
        }

        /* renamed from: d */
        public void m29510d(String str) {
            this.f9935h = str;
        }

        /* renamed from: e */
        public String m29509e() {
            return this.f9933f;
        }

        /* renamed from: f */
        public String m29508f() {
            return this.f9934g;
        }

        /* renamed from: g */
        public String m29507g() {
            return this.f9935h;
        }

        /* renamed from: h */
        public boolean m29506h() {
            return this.f9936i;
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.h$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h$c.class */
    public interface AbstractC4151c {

        /* renamed from: com.taiwanmobile.pt.adp.view.a.h$c$a */
        /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h$c$a.class */
        public enum EnumC4152a {
            STATE_NO_TP_EXSITED,
            STATE_TP_READY,
            STATE_BLACK_LIST
        }

        /* renamed from: a */
        void mo29505a(EnumC4152a aVar);
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.h$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/h$d.class */
    public class C4153d extends AbstractC4141d {
        public C4153d(Context context, String str, AbstractC4151c cVar) {
            super(context, str, cVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4141d, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29552a()) {
                C4147h.this.m29525e();
            }
        }
    }

    public C4147h(Context context, String str, TWMAdRequest tWMAdRequest) {
        this(context, str, tWMAdRequest, null);
    }

    public C4147h(Context context, String str, TWMAdRequest tWMAdRequest, TWMAdSize tWMAdSize) {
        this.f9911b = null;
        this.f9916g = null;
        this.f9917h = 1;
        this.f9918i = 0L;
        this.f9919j = null;
        this.f9920k = null;
        this.f9921l = new Runnable() { // from class: com.taiwanmobile.pt.adp.view.a.h.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C4147h.m29534a(C4147h.this);
                    C4147h.this.m29520h();
                    if (C4147h.this.f9917h > 1 && C4147h.this.f9916g != null) {
                        C4147h.this.f9916g.postDelayed(this, C4147h.this.f9918i * 1000);
                    }
                } catch (Exception e) {
                    String str2 = C4147h.f9910a;
                    C10831c.m10520b(str2, "scheduleRunnable Error = " + e.getMessage());
                }
            }
        };
        this.f9911b = new WeakReference<>(context);
        this.f9913d = str;
        this.f9915f = tWMAdSize;
        this.f9914e = tWMAdRequest;
    }

    /* renamed from: a */
    public static /* synthetic */ int m29534a(C4147h hVar) {
        int i = hVar.f9917h;
        hVar.f9917h = i - 1;
        return i;
    }

    /* renamed from: a */
    private boolean m29538a(TWMAdSize tWMAdSize) {
        if (tWMAdSize == null) {
            return true;
        }
        return !TWMAdSize.SMART_BANNER.equals(tWMAdSize) && !TWMAdSize.IAB_BANNER.equals(tWMAdSize) && !TWMAdSize.IAB_LEADERBOARD.equals(tWMAdSize) && !TWMAdSize.IAB_MRECT.equals(tWMAdSize) && !TWMAdSize.IAB_WIDE_SKYSCRAPER.equals(tWMAdSize) && !TWMAdSize.BANNER.equals(tWMAdSize);
    }

    /* renamed from: a */
    private boolean m29533a(String str) {
        boolean z = false;
        if (EnumC4149a.UCFUNNEL.m29519a().equals(str)) {
            z = false;
            if (this.f9915f != null) {
                WeakReference<Context> weakReference = this.f9911b;
                z = false;
                if (weakReference != null) {
                    z = false;
                    if (weakReference.get() != null) {
                        z = false;
                        if (this.f9915f.equals(TWMAdSize.SMART_BANNER)) {
                            z = false;
                            if (this.f9911b.get().getResources().getConfiguration().orientation == 2) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m29525e() {
        try {
            if (!m29523f()) {
                m29521g();
                m29520h();
            } else if (this.f9920k != null) {
                this.f9920k.mo29505a(AbstractC4151c.EnumC4152a.STATE_BLACK_LIST);
            }
        } catch (Exception e) {
            AbstractC4151c cVar = this.f9920k;
            if (cVar != null) {
                cVar.mo29505a(AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
            }
        }
    }

    /* renamed from: f */
    private boolean m29523f() {
        WeakReference<Context> weakReference;
        if (this.f9913d == null || (weakReference = this.f9911b) == null || weakReference.get() == null) {
            return false;
        }
        String j = C10832d.m10470j(this.f9911b.get(), this.f9913d);
        String s = C10832d.m10458s(this.f9911b.get());
        JSONArray jSONArray = new JSONArray(j);
        for (int i = 0; i < jSONArray.length(); i++) {
            if (s.equals(jSONArray.getString(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    private void m29521g() {
        WeakReference<Context> weakReference;
        if (!m29538a(this.f9915f) && (weakReference = this.f9911b) != null && weakReference.get() != null && this.f9913d != null) {
            JSONObject jSONObject = new JSONObject(C10832d.m10468k(this.f9911b.get(), this.f9913d));
            if (jSONObject.has("times") && jSONObject.has("sec")) {
                this.f9917h = jSONObject.getInt("times");
                this.f9918i = jSONObject.getLong("sec");
                if (this.f9917h > 1) {
                    this.f9916g = new Handler();
                    this.f9916g.postDelayed(this.f9921l, this.f9918i * 1000);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m29520h() {
        WeakReference<Context> weakReference;
        this.f9912c = C10832d.m10503b();
        if (this.f9913d != null && (weakReference = this.f9911b) != null && weakReference.get() != null) {
            String h = C10832d.m10475h(this.f9911b.get(), this.f9913d);
            String i = C10832d.m10472i(this.f9911b.get(), this.f9913d);
            JSONArray jSONArray = new JSONArray(C10832d.m10478g(this.f9911b.get(), this.f9913d));
            JSONObject jSONObject = new JSONObject(i);
            JSONObject jSONObject2 = new JSONObject(h);
            this.f9919j = new LinkedList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String string = jSONArray.getString(i2);
                String string2 = jSONObject2.has(string) ? jSONObject2.getString(string) : null;
                if (!m29533a(string)) {
                    C4150b bVar = new C4150b(this, string, string2);
                    if (!EnumC4149a.TAMEDIA.m29519a().equals(string)) {
                        if (jSONObject.has("tpi")) {
                            bVar.m29514b(jSONObject.getString("tpi"));
                        }
                        if (jSONObject.has("tps")) {
                            bVar.m29512c(jSONObject.getString("tps"));
                        }
                        if (jSONObject.has("tpc")) {
                            bVar.m29510d(jSONObject.getString("tpc"));
                        }
                        if (EnumC4149a.UCFUNNEL.m29519a().equals(string) && jSONObject.has("ucfunneladr")) {
                            bVar.m29517a(jSONObject.getString("ucfunneladr"));
                        }
                    }
                    bVar.m29516a(C10832d.m10466l(this.f9911b.get(), this.f9913d));
                    this.f9919j.add(bVar);
                }
            }
            if (this.f9920k == null) {
                return;
            }
            if (this.f9919j.peek() != null) {
                this.f9920k.mo29505a(AbstractC4151c.EnumC4152a.STATE_TP_READY);
            } else {
                this.f9920k.mo29505a(AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
            }
        }
    }

    /* renamed from: a */
    public C4150b m29539a() {
        Queue<C4150b> queue = this.f9919j;
        if (queue != null) {
            return queue.poll();
        }
        return null;
    }

    /* renamed from: a */
    public void m29537a(C4150b bVar, String str) {
        String g;
        WeakReference<Context> weakReference = this.f9911b;
        if (weakReference != null && weakReference.get() != null && bVar != null && (g = bVar.m29507g()) != null && !"".equals(g)) {
            C4133b.m29607a(this.f9911b.get(), g, this.f9912c, str);
        }
    }

    /* renamed from: a */
    public void m29536a(C4150b bVar, String str, boolean z, C4133b.AbstractC4138c cVar) {
        boolean z2 = m29532b() == null || z;
        WeakReference<Context> weakReference = this.f9911b;
        if (weakReference != null && weakReference.get() != null && bVar != null) {
            String e = bVar.m29509e();
            String e2 = C10832d.m10487e(this.f9911b.get());
            if (e != null && !"".equals(e)) {
                C4133b.m29604a(this.f9911b.get(), e, this.f9912c, str, z, z2, "".equals(e2) ? cVar : null);
            } else if (cVar != null) {
                cVar.mo29589a();
            }
            if (!"".equals(e2) && cVar != null) {
                cVar.mo29589a();
            }
        }
    }

    /* renamed from: a */
    public void m29535a(AbstractC4151c cVar) {
        this.f9920k = cVar;
        if (cVar != null) {
            WeakReference<Context> weakReference = this.f9911b;
            if (weakReference == null || weakReference.get() == null) {
                C10831c.m10520b(f9910a, "Context is null.");
                cVar.mo29505a(AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
                return;
            }
            TWMAdRequest tWMAdRequest = this.f9914e;
            if (tWMAdRequest == null || tWMAdRequest.isTestDevice(this.f9911b.get())) {
                C10831c.m10518c(f9910a, "Request in test mode.");
                cVar.mo29505a(AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED);
            } else if (System.currentTimeMillis() > C10832d.m10482f(this.f9911b.get(), this.f9913d)) {
                C10831c.m10518c(f9910a, "start to request tp info.");
                C10832d.m10464m(this.f9911b.get(), this.f9913d);
                C4133b.m29602a(this.f9913d, new C4153d(this.f9911b.get(), this.f9913d, cVar));
            } else {
                C10831c.m10518c(f9910a, "get tp info from local data.");
                m29525e();
            }
        } else {
            C10831c.m10520b(f9910a, "TPQueueStateListener is null. Please check your parameters.");
        }
    }

    /* renamed from: b */
    public C4150b m29532b() {
        Queue<C4150b> queue = this.f9919j;
        if (queue != null) {
            return queue.peek();
        }
        return null;
    }

    /* renamed from: b */
    public void m29531b(C4150b bVar, String str) {
        String f;
        WeakReference<Context> weakReference = this.f9911b;
        if (weakReference != null && weakReference.get() != null && bVar != null && (f = bVar.m29508f()) != null && !"".equals(f)) {
            C4133b.m29607a(this.f9911b.get(), f, this.f9912c, str);
        }
    }

    /* renamed from: c */
    public String m29529c() {
        String str = this.f9912c;
        if (str == null || str.length() <= 0) {
            return null;
        }
        return this.f9912c;
    }

    /* renamed from: d */
    public void m29527d() {
        this.f9920k = null;
        this.f9911b = null;
        Queue<C4150b> queue = this.f9919j;
        if (queue != null) {
            queue.clear();
            this.f9919j = null;
        }
        Handler handler = this.f9916g;
        if (handler != null) {
            handler.removeCallbacks(this.f9921l);
            this.f9916g = null;
        }
    }
}
