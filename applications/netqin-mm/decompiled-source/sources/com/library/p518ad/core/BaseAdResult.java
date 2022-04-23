package com.library.p518ad.core;

import android.view.ViewGroup;
import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p398e.C6506b;
import p131c.p396i.p397a.p399f.p400a.C6524b;
import p131c.p396i.p397a.p406i.p411f.AbstractC6580b;
import p131c.p396i.p397a.p406i.p411f.C6584d;
import p131c.p396i.p397a.p406i.p411f.C6588f;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: com.library.ad.core.BaseAdResult */
/* loaded from: classes2-dex2jar.jar:com/library/ad/core/BaseAdResult.class */
public class BaseAdResult<AdData> {

    /* renamed from: a */
    public AdInfo f33144a;

    /* renamed from: b */
    public String f33145b;

    /* renamed from: c */
    public int[] f33146c;

    /* renamed from: d */
    public AbstractC6515g f33147d;

    /* renamed from: e */
    public AbstractC8514a f33148e;

    /* renamed from: f */
    public Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> f33149f;

    /* renamed from: g */
    public boolean f33150g = false;

    /* renamed from: h */
    public AbstractC6580b f33151h;

    /* renamed from: com.library.ad.core.BaseAdResult$BindViewCode */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/core/BaseAdResult$BindViewCode.class */
    public enum BindViewCode {
        BIND_SUCCESS(AdError.SERVER_ERROR_CODE, "绑定成功"),
        NULL_AD_VIEW_CLASS(-2001, "未设置广告布局类型"),
        NULL_AD_CONTAINER(-2002, "广告容器为空"),
        NULL_AD_RESOURCE(-2003, "广告数据资源为空"),
        FAIL_INIT_AD_VIEW_CLASS(-2004, "广告布局实例失败"),
        FAIL_BIND_DATA(-2005, "绑定数据操作失败"),
        FAIL_NO_NET(-2006, "无网络连接");
        
        public int code;
        public String message;

        BindViewCode(int i, String str) {
            this.code = i;
        }
    }

    /* renamed from: com.library.ad.core.BaseAdResult$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/core/BaseAdResult$a.class */
    public interface AbstractC8514a<AdData> {
        /* renamed from: a */
        void mo5307a(int i, AdInfo adInfo);

        /* renamed from: a */
        void mo5306a(AdInfo adInfo, BindViewCode bindViewCode);

        /* renamed from: a */
        boolean mo5305a(AdInfo adInfo, List<AdData> list);
    }

    public BaseAdResult(String str, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> cls) {
        this.f33145b = str;
        m5324a(cls);
    }

    /* renamed from: a */
    public AbstractC6515g m5331a() {
        return this.f33147d;
    }

    /* renamed from: a */
    public BaseAdResult m5330a(int i) {
        m5320b().setAdType(i);
        return this;
    }

    /* renamed from: a */
    public BaseAdResult m5327a(AbstractC6515g gVar) {
        this.f33147d = gVar;
        return this;
    }

    /* renamed from: a */
    public BaseAdResult m5325a(AbstractC8514a aVar) {
        this.f33148e = aVar;
        return this;
    }

    /* renamed from: a */
    public BaseAdResult m5324a(Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> cls) {
        this.f33149f = cls;
        return this;
    }

    /* renamed from: a */
    public BaseAdResult m5323a(String str) {
        m5320b().setPlaceId(str);
        return this;
    }

    /* renamed from: a */
    public BaseAdResult m5322a(boolean z) {
        this.f33150g = z;
        return this;
    }

    /* renamed from: a */
    public BaseAdResult<AdData> m5321a(int[] iArr) {
        this.f33146c = iArr;
        return this;
    }

    /* renamed from: a */
    public void m5329a(int i, AdInfo adInfo) {
        AbstractC8514a aVar = this.f33148e;
        if (aVar != null) {
            aVar.mo5307a(i, adInfo);
        }
        if (!"FM".equals(m5316c())) {
            String str = "记录广告位:" + m5310h();
            m5309i();
            C6618e.m20334a().m20330a("key_last_" + m5310h(), m5309i());
        }
    }

    /* renamed from: a */
    public void m5326a(AdInfo adInfo, BindViewCode bindViewCode) {
        AbstractC8514a aVar = this.f33148e;
        if (aVar != null) {
            aVar.mo5306a(adInfo, bindViewCode);
        }
    }

    /* renamed from: a */
    public boolean m5328a(ViewGroup viewGroup, AbstractC6514f fVar) {
        new ArrayList();
        if (fVar != null) {
            List<AdData> b = fVar.m20609b();
            if (this.f33150g || C6614a.m20369a()) {
                if (this.f33150g) {
                    m5310h();
                    m5309i();
                }
                AbstractC8514a aVar = this.f33148e;
                if (aVar == null || !aVar.mo5305a(m5320b(), b)) {
                    this.f33151h = null;
                    int d = m5314d();
                    if (d == 1) {
                        this.f33151h = new C6584d(this);
                    } else if (d == 2) {
                        this.f33151h = C6588f.m20450a(this);
                    } else if (d == 3) {
                        this.f33151h = C6588f.m20449b(this);
                    } else if (d == 4) {
                        this.f33151h = C6588f.m20447d(this);
                    } else if (d == 6) {
                        this.f33151h = C6588f.m20448c(this);
                    }
                    AbstractC6580b bVar = this.f33151h;
                    if (bVar == null) {
                        m5316c();
                        C6524b.m20573a(m5314d());
                        return false;
                    }
                    boolean a = bVar.mo20445a(viewGroup, fVar);
                    if (a) {
                        ((C6506b) fVar).m20632f();
                        m5329a(0, m5320b());
                    }
                    return a;
                } else if (fVar == null) {
                    return true;
                } else {
                    ((C6506b) fVar).m20632f();
                    return true;
                }
            } else {
                m5309i();
                m5326a(m5320b(), BindViewCode.FAIL_NO_NET);
                return false;
            }
        } else {
            m5326a(m5320b(), BindViewCode.NULL_AD_RESOURCE);
            return false;
        }
    }

    /* renamed from: b */
    public AdInfo m5320b() {
        if (this.f33144a == null) {
            this.f33144a = new AdInfo();
        }
        if (this.f33144a.getAdSource() == null) {
            this.f33144a.setAdSource(this.f33145b);
        }
        return this.f33144a;
    }

    /* renamed from: b */
    public BaseAdResult<AdData> m5319b(int i) {
        m5320b().setClickViews(i);
        return this;
    }

    /* renamed from: b */
    public BaseAdResult m5318b(String str) {
        m5320b().setUnitId(str);
        return this;
    }

    /* renamed from: b */
    public BaseAdResult<AdData> m5317b(boolean z) {
        m5320b().setDefault(z);
        return this;
    }

    /* renamed from: c */
    public BaseAdResult<AdData> m5315c(int i) {
        m5320b().setLayoutType(i);
        return this;
    }

    /* renamed from: c */
    public String m5316c() {
        return m5320b().getAdSource();
    }

    /* renamed from: d */
    public int m5314d() {
        return m5320b().getAdType();
    }

    /* renamed from: e */
    public Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> m5313e() {
        return this.f33149f;
    }

    /* renamed from: f */
    public String m5312f() {
        return this.f33144a.getPlaceId() + "_" + this.f33144a.getUnitId();
    }

    /* renamed from: g */
    public int[] m5311g() {
        return this.f33146c;
    }

    /* renamed from: h */
    public String m5310h() {
        return m5320b().getPlaceId();
    }

    /* renamed from: i */
    public String m5309i() {
        return m5320b().getUnitId();
    }

    /* renamed from: j */
    public AbstractC8514a m5308j() {
        return this.f33148e;
    }
}
