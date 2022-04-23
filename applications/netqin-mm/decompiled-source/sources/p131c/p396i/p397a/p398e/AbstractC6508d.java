package p131c.p396i.p397a.p398e;

import android.text.TextUtils;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
import p131c.p396i.p397a.p417j.C6614a;
/* renamed from: c.i.a.e.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/d.class */
public abstract class AbstractC6508d<AdData> implements Comparable<AbstractC6508d> {

    /* renamed from: a */
    public AdInfo f20250a;

    /* renamed from: b */
    public String[] f20251b;

    /* renamed from: c */
    public AbstractC6515g f20252c;

    /* renamed from: d */
    public AbstractC6510b<AdData> f20253d;

    /* renamed from: e */
    public AbstractC6511c f20254e;

    /* renamed from: f */
    public AbstractC6516h f20255f;

    /* renamed from: j */
    public int f20259j;

    /* renamed from: n */
    public boolean f20263n;

    /* renamed from: o */
    public long f20264o;

    /* renamed from: p */
    public BaseAdResult<AdData> f20265p;

    /* renamed from: r */
    public boolean f20267r;

    /* renamed from: g */
    public int f20256g = 1;

    /* renamed from: h */
    public long f20257h = 600000;

    /* renamed from: i */
    public long f20258i = 10000;

    /* renamed from: k */
    public int f20260k = 1;

    /* renamed from: l */
    public boolean f20261l = false;

    /* renamed from: m */
    public boolean f20262m = true;

    /* renamed from: q */
    public long f20266q = 0;

    /* renamed from: s */
    public final Runnable f20268s = new RunnableC6509a();

    /* renamed from: c.i.a.e.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/e/d$a.class */
    public class RunnableC6509a implements Runnable {
        public RunnableC6509a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC6508d.this.m20620a("local_timeout", (Object) null);
            AbstractC6508d.this.f20263n = true;
            AbstractC6511c cVar = AbstractC6508d.this.f20254e;
            if (cVar != null) {
                cVar.m20612a();
            }
        }
    }

    /* renamed from: c.i.a.e.d$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/e/d$b.class */
    public interface AbstractC6510b<AdData> {
        /* renamed from: a */
        void m20613a(List<AdData> list);
    }

    /* renamed from: c.i.a.e.d$c */
    /* loaded from: classes2-dex2jar.jar:c/i/a/e/d$c.class */
    public interface AbstractC6511c {
        /* renamed from: a */
        void m20612a();
    }

    public AbstractC6508d(String str, String str2) {
        AdInfo adInfo = new AdInfo();
        this.f20250a = adInfo;
        adInfo.setAdSource(str);
        this.f20250a.setUnitId(str2);
    }

    /* renamed from: a */
    public AbstractC6514f<AdData> m20619a(List<AdData> list) {
        long j = this.f20257h;
        if (j >= 0) {
            j += System.currentTimeMillis();
        }
        C6506b bVar = new C6506b(list, j, this.f20260k);
        bVar.m20610a(this.f20256g);
        return bVar;
    }

    @SafeVarargs
    /* renamed from: a */
    public final AbstractC6514f<AdData> m20618a(AdData... addataArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, addataArr);
        return m20619a(arrayList);
    }

    /* renamed from: a */
    public final void m20626a() {
        this.f20263n = false;
        if (this.f20258i > 0) {
            getUnitId();
            C6614a.m20366a(this.f20268s, this.f20258i);
        }
    }

    /* renamed from: a */
    public void m20624a(AbstractC6514f<?> fVar) {
        getKey();
        if (fVar.mo20607d()) {
            AbstractC6510b<AdData> bVar = this.f20253d;
            if (bVar != null) {
                bVar.m20613a(fVar.m20609b());
            }
            C6505a.m20638a().m20636a(getKey(), fVar);
            getKey();
            return;
        }
        getKey();
    }

    /* renamed from: a */
    public void m20623a(AbstractC6516h hVar) {
        this.f20255f = hVar;
    }

    /* renamed from: a */
    public void m20622a(String str, AbstractC6514f<AdData> fVar) {
        m20621a(str, getAdResult(), fVar);
    }

    /* renamed from: a */
    public void m20621a(String str, BaseAdResult<AdData> baseAdResult, AbstractC6514f<AdData> fVar) {
        if ("network_success".equals(str) && !"FM".equals(getAdSource())) {
            C6549b.m20532a(new C6550c(getAdInfo(), 201, String.valueOf(System.currentTimeMillis() - this.f20266q)), new C6550c(getAdInfo(), 204, ""));
        }
        if (this.f20263n) {
            getPlaceId();
            getUnitId();
            m20624a((AbstractC6514f<?>) fVar);
            return;
        }
        getPlaceId();
        getUnitId();
        m20616d();
        AbstractC6516h hVar = this.f20255f;
        if (hVar != null) {
            hVar.mo20466a(this, baseAdResult, fVar);
        }
    }

    /* renamed from: a */
    public void m20620a(String str, Object obj) {
        if (this.f20263n) {
            getPlaceId();
            getUnitId();
            return;
        }
        getPlaceId();
        getUnitId();
        m20616d();
        AbstractC6516h hVar = this.f20255f;
        if (hVar != null) {
            hVar.mo20577a(getUnitId());
        }
    }

    @Deprecated
    public AbstractC6508d autoDeleteCache(boolean z) {
        if (z) {
            this.f20260k = 1;
        } else {
            this.f20260k = -1;
        }
        return this;
    }

    /* renamed from: b */
    public boolean m20617b() {
        return true;
    }

    public AbstractC6508d cacheMaxShowTimes(int i) {
        this.f20260k = i;
        return this;
    }

    public AbstractC6508d cacheTime(long j) {
        this.f20257h = j;
        return this;
    }

    public int compareTo(AbstractC6508d dVar) {
        return dVar.f20259j - this.f20259j;
    }

    public AbstractC6508d count(int i) {
        if (i > 1) {
            this.f20256g = i;
        }
        return this;
    }

    /* renamed from: d */
    public final void m20616d() {
        C6614a.m20364b(this.f20268s);
        C6522k.m20574b(getKey());
    }

    public AbstractC6508d dataCacheListener(AbstractC6510b<AdData> bVar) {
        this.f20253d = bVar;
        return this;
    }

    /* renamed from: e */
    public final void m20615e() {
        getUnitId();
        getUnitId();
        C6522k.m20575a(getKey(), this);
        AbstractC6516h hVar = this.f20255f;
        if (hVar != null) {
            hVar.mo20464b(getUnitId());
        }
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof AbstractC6508d) && !TextUtils.isEmpty(getUnitId()) && getUnitId().equals(((AbstractC6508d) obj).getUnitId()));
    }

    /* renamed from: f */
    public void m20614f() {
        m20615e();
        if (!needNetwork()) {
            performLoad(this.f20256g);
        } else if (!m20617b()) {
            getUnitId();
            m20620a("condition_failure", (Object) null);
        } else {
            getKey();
            AbstractC6514f<?> b = C6505a.m20638a().m20635b(getKey());
            if (b != null) {
                m20621a("cache_success", this.f20265p, b);
            } else if (this.f20261l) {
                getUnitId();
                m20620a("cache_failure", (Object) b);
            } else {
                C6549b.m20532a(new C6550c(getAdInfo(), 202, ""));
                if (!C6614a.m20369a()) {
                    m20620a("local_no_network", "网络未连接");
                    C6549b.m20532a(new C6550c(getAdInfo(), 203, C6552e.f20331a.toString()));
                    return;
                }
                this.f20264o = System.currentTimeMillis();
                getUnitId();
                m20626a();
                this.f20266q = System.currentTimeMillis();
                performLoad(this.f20256g);
            }
        }
    }

    public AdInfo getAdInfo() {
        return this.f20250a;
    }

    public BaseAdResult<AdData> getAdResult() {
        return this.f20265p;
    }

    public String getAdSource() {
        return this.f20250a.getAdSource();
    }

    public String getAdSyId() {
        return this.f20250a.getAdSyId();
    }

    public int getAdType() {
        return this.f20250a.getAdType();
    }

    public AbstractC6515g getInnerAdEventListener() {
        return this.f20252c;
    }

    public String getKey() {
        return this.f20250a.getPlaceId() + "_" + this.f20250a.getUnitId();
    }

    public String getPlaceId() {
        return this.f20250a.getPlaceId();
    }

    public int getPriority() {
        return this.f20259j;
    }

    public String getTestType() {
        return this.f20250a.getTestType();
    }

    public String getUnitId() {
        return this.f20250a.getUnitId();
    }

    public int hashCode() {
        return getUnitId().hashCode();
    }

    public boolean isDefault() {
        return this.f20259j <= 0;
    }

    public boolean isDefaultRequest() {
        return this.f20250a.isDefault();
    }

    public boolean isNeedCache() {
        boolean z = true;
        if (!this.f20262m || this.f20260k == 1) {
            z = false;
        }
        return z;
    }

    public AbstractC6508d justLoadCache(boolean z) {
        this.f20261l = z;
        return this;
    }

    public AbstractC6508d needCache(boolean z) {
        this.f20262m = z;
        return this;
    }

    public boolean needNetwork() {
        return true;
    }

    public void onDestroy() {
        this.f20267r = true;
    }

    public abstract boolean performLoad(int i);

    public AbstractC6508d priority(int i) {
        this.f20259j = i;
        return this;
    }

    public AbstractC6508d<AdData> setAdInfo(AdInfo adInfo) {
        this.f20250a = adInfo;
        return this;
    }

    public AbstractC6508d setAdResult(BaseAdResult<AdData> baseAdResult) {
        this.f20265p = baseAdResult;
        if (baseAdResult != null) {
            baseAdResult.m5318b(getUnitId());
        }
        return this;
    }

    public AbstractC6508d<AdData> setAdSyId(String str) {
        this.f20250a.setAdSyId(str);
        return this;
    }

    public AbstractC6508d setAdType(int i) {
        this.f20250a.setAdType(i);
        return this;
    }

    public AbstractC6508d<AdData> setDefault(boolean z) {
        this.f20250a.setDefault(z);
        return this;
    }

    public AbstractC6508d setInnerAdEventListener(AbstractC6515g gVar) {
        this.f20252c = gVar;
        return this;
    }

    public AbstractC6508d setPlaceId(String str) {
        this.f20250a.setPlaceId(str);
        return this;
    }

    public AbstractC6508d<AdData> setTestType(String str) {
        this.f20250a.setTestType(str);
        return this;
    }

    @Deprecated
    public AbstractC6508d testDevice(String str) {
        boolean z = C6614a.f20428a;
        return this;
    }

    public AbstractC6508d testDevices(String... strArr) {
        if (C6614a.f20428a) {
            this.f20251b = strArr;
        }
        return this;
    }

    public AbstractC6508d timeout(long j) {
        this.f20258i = j;
        return this;
    }

    public AbstractC6508d timeoutListener(AbstractC6511c cVar) {
        this.f20254e = cVar;
        return this;
    }

    public String toString() {
        return getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
