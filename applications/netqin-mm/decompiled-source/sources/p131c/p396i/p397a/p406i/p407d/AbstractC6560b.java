package p131c.p396i.p397a.p406i.p407d;

import android.view.ViewGroup;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import com.library.p518ad.data.bean.RequestConfig;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
import p131c.p396i.p397a.p406i.C6557b;
/* renamed from: c.i.a.i.d.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/b.class */
public abstract class AbstractC6560b {

    /* renamed from: a */
    public final String f20347a;

    /* renamed from: b */
    public String f20348b;

    /* renamed from: c */
    public String f20349c;

    /* renamed from: d */
    public AbstractC6518i f20350d;

    /* renamed from: e */
    public AbstractC6515g f20351e;

    /* renamed from: f */
    public AbstractC6508d f20352f;

    /* renamed from: h */
    public List<RequestConfig> f20354h;

    /* renamed from: i */
    public List<BaseAdResult> f20355i;

    /* renamed from: j */
    public ViewGroup f20356j;

    /* renamed from: g */
    public List<AbstractC6508d<?>> f20353g = new ArrayList(0);

    /* renamed from: k */
    public AbstractC6518i f20357k = new C6561a();

    /* renamed from: c.i.a.i.d.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/b$a.class */
    public class C6561a extends AbstractC6518i.AbstractC6519a {
        public C6561a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            AbstractC6518i iVar = AbstractC6560b.this.f20350d;
            if (iVar != null) {
                iVar.mo3229a(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            AbstractC6560b.this.m20485d();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i.AbstractC6519a, p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
            super.onStart();
            AbstractC6518i iVar = AbstractC6560b.this.f20350d;
            if (iVar != null) {
                iVar.onStart();
            }
        }
    }

    public AbstractC6560b(String str, List<RequestConfig> list) {
        this.f20347a = str;
        this.f20354h = list;
    }

    /* renamed from: a */
    public final AbstractC6508d m20489a(String str, int i, String str2) {
        Class<? extends AbstractC6508d> a = C6557b.m20501b().m20502a(this.f20347a, str, i);
        if (a == null) {
            return null;
        }
        try {
            Constructor<? extends AbstractC6508d> declaredConstructor = a.getDeclaredConstructor(String.class);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return (AbstractC6508d) declaredConstructor.newInstance(str2);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public AbstractC6560b m20496a(ViewGroup viewGroup) {
        this.f20356j = viewGroup;
        return this;
    }

    /* renamed from: a */
    public AbstractC6560b m20495a(AbstractC6508d dVar) {
        this.f20352f = dVar;
        return this;
    }

    /* renamed from: a */
    public AbstractC6560b m20493a(AbstractC6515g gVar) {
        this.f20351e = gVar;
        return this;
    }

    /* renamed from: a */
    public AbstractC6560b m20492a(AbstractC6518i iVar) {
        this.f20350d = iVar;
        return this;
    }

    /* renamed from: a */
    public AbstractC6560b m20490a(String str) {
        this.f20348b = str;
        return this;
    }

    /* renamed from: a */
    public AbstractC6560b m20488a(List<BaseAdResult> list) {
        this.f20355i = list;
        return this;
    }

    /* renamed from: a */
    public final void m20497a() {
        List<RequestConfig> list = this.f20354h;
        if (list != null) {
            Collections.sort(list);
            this.f20353g = new ArrayList(this.f20354h.size());
            for (RequestConfig requestConfig : this.f20354h) {
                AbstractC6508d<?> a = m20489a(requestConfig.source, requestConfig.getAdType(), requestConfig.unitId);
                AbstractC6508d<?> dVar = a;
                if (a == null) {
                    dVar = C6562c.m20483a(requestConfig);
                }
                if (dVar != null) {
                    m20494a(dVar, requestConfig);
                    this.f20353g.add(dVar);
                }
            }
        }
        if (this.f20355i != null) {
            for (AbstractC6508d<?> dVar2 : this.f20353g) {
                for (BaseAdResult baseAdResult : this.f20355i) {
                    if (dVar2.getUnitId().equals(baseAdResult.m5309i())) {
                        dVar2.setAdResult(baseAdResult);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m20494a(AbstractC6508d dVar, RequestConfig requestConfig) {
        dVar.priority(requestConfig.priority).setPlaceId(this.f20347a).setAdSyId(this.f20348b).setTestType(this.f20349c).setAdType(requestConfig.adType).setInnerAdEventListener(this.f20351e).timeout(requestConfig.timeout).cacheTime(requestConfig.cacheTime).cacheMaxShowTimes(requestConfig.cacheShowTime);
    }

    /* renamed from: b */
    public AbstractC6560b m20487b(String str) {
        this.f20349c = str;
        return this;
    }

    /* renamed from: b */
    public abstract void mo20462b();

    /* renamed from: c */
    public void m20486c() {
    }

    /* renamed from: d */
    public final void m20485d() {
        if (this.f20352f != null) {
            C6520j a = C6507c.m20628a(this.f20352f);
            a.m20604a(this.f20356j);
            a.m20600a(this.f20350d);
            a.m20578g();
            return;
        }
        AbstractC6518i iVar = this.f20350d;
        if (iVar != null) {
            iVar.mo3228b(null);
        }
    }

    /* renamed from: e */
    public void m20484e() {
        m20486c();
        m20497a();
        mo20462b();
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(hashCode());
    }
}
