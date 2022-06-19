package com.bytedance.sdk.openadsdk.core.p151b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4802y;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4610a;
import com.bytedance.sdk.openadsdk.core.p154e.C4548d;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.p164d.C4806b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/b.class */
public class C4495b extends AbstractView$OnClickListenerC4497c {

    /* renamed from: a */
    private String f16333a;

    /* renamed from: c */
    protected Context f16334c;

    /* renamed from: d */
    protected final C4557i f16335d;

    /* renamed from: e */
    protected final String f16336e;

    /* renamed from: f */
    protected final int f16337f;

    /* renamed from: g */
    protected WeakReference<View> f16338g;

    /* renamed from: h */
    protected WeakReference<View> f16339h;

    /* renamed from: i */
    protected C4548d f16340i;

    /* renamed from: j */
    protected AbstractC4496a f16341j;

    /* renamed from: k */
    protected TTNativeAd f16342k;

    /* renamed from: l */
    protected AbstractC4719c f16343l;

    /* renamed from: m */
    protected boolean f16344m = false;

    /* renamed from: n */
    protected AbstractC3234c f16345n;

    /* renamed from: o */
    protected Map<String, Object> f16346o;

    /* renamed from: p */
    protected TTNativeExpressAd f16347p;

    /* renamed from: q */
    protected AbstractC4610a f16348q;

    /* renamed from: com.bytedance.sdk.openadsdk.core.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/b$a.class */
    public interface AbstractC4496a {
        /* renamed from: a */
        void mo34179a(View view, int i);
    }

    public C4495b(Context context, C4557i c4557i, String str, int i) {
        this.f16334c = context;
        this.f16335d = c4557i;
        this.f16336e = str;
        this.f16337f = i;
    }

    /* renamed from: a */
    public C4548d mo34729a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2, String str) {
        return new C4548d.C4550a().m35301d(i).m35304c(i2).m35308b(i3).m35313a(i4).m35307b(j).m35312a(j2).m35305b(C5443ag.m32230a(view)).m35309a(C5443ag.m32230a(view2)).m35302c(C5443ag.m32216c(view)).m35299d(C5443ag.m32216c(view2)).m35298e(this.f16355x).m35296f(this.f16356y).m35294g(this.f16357z).m35310a(str).m35314a();
    }

    /* renamed from: a */
    public void m35481a(View view) {
        this.f16338g = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c
    /* renamed from: a */
    public void mo35468a(View view, int i, int i2, int i3, int i4) {
        C4557i c4557i;
        if (m35482a(1)) {
            return;
        }
        if (this.f16334c == null) {
            this.f16334c = C4600n.m34815a();
        }
        if (this.f16334c == null) {
            return;
        }
        long j = this.f16353v;
        long j2 = this.f16354w;
        WeakReference<View> weakReference = this.f16338g;
        View view2 = weakReference == null ? null : weakReference.get();
        WeakReference<View> weakReference2 = this.f16339h;
        this.f16340i = mo34729a(i, i2, i3, i4, j, j2, view2, weakReference2 == null ? null : weakReference2.get(), m35471d());
        AbstractC4496a abstractC4496a = this.f16341j;
        if (abstractC4496a != null) {
            abstractC4496a.mo34179a(view, -1);
        }
        boolean m35137w = this.f16335d.m35137w();
        String m32311a = m35137w ? this.f16336e : C5438af.m32311a(this.f16337f);
        C4802y.m33902a(true);
        boolean m33906a = C4802y.m33906a(this.f16334c, this.f16335d, this.f16337f, this.f16342k, this.f16347p, m32311a, this.f16345n, m35137w);
        if (!m33906a && (c4557i = this.f16335d) != null && c4557i.m35229R() != null && this.f16335d.m35229R().m35280c() == 2) {
            return;
        }
        if (!m33906a && TextUtils.isEmpty(this.f16335d.m35240G()) && C4806b.m33892a(this.f16336e)) {
            C3235d.m39089a(this.f16334c, this.f16335d, this.f16336e).mo39091e();
        }
        C4811e.m33875a(this.f16334c, "click", this.f16335d, this.f16340i, this.f16336e, m33906a, this.f16346o);
    }

    /* renamed from: a */
    public void m35480a(AbstractC3234c abstractC3234c) {
        this.f16345n = abstractC3234c;
    }

    /* renamed from: a */
    public void m35479a(TTNativeAd tTNativeAd) {
        this.f16342k = tTNativeAd;
    }

    /* renamed from: a */
    public void m35478a(TTNativeExpressAd tTNativeExpressAd) {
        this.f16347p = tTNativeExpressAd;
    }

    /* renamed from: a */
    public void m35477a(AbstractC4496a abstractC4496a) {
        this.f16341j = abstractC4496a;
    }

    /* renamed from: a */
    public void m35476a(AbstractC4610a abstractC4610a) {
        this.f16348q = abstractC4610a;
    }

    /* renamed from: a */
    public void m35475a(AbstractC4719c abstractC4719c) {
        this.f16343l = abstractC4719c;
    }

    /* renamed from: a */
    public void m35474a(String str) {
        this.f16333a = str;
    }

    /* renamed from: a */
    public void m35473a(Map<String, Object> map) {
        this.f16346o = map;
    }

    /* renamed from: a */
    public boolean m35482a(int i) {
        if (this.f16348q != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.f16339h;
            if (weakReference != null) {
                iArr = C5443ag.m32230a(weakReference.get());
                iArr2 = C5443ag.m32216c(this.f16339h.get());
            }
            this.f16348q.mo34758a(i, new C4553g.C4555a().m35267d(this.f16349r).m35269c(this.f16350s).m35272b(this.f16351t).m35276a(this.f16352u).m35271b(this.f16353v).m35275a(this.f16354w).m35265e(iArr[0]).m35263f(iArr[1]).m35261g(iArr2[0]).m35259h(iArr2[1]).m35277a());
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public void m35472b(View view) {
        this.f16339h = new WeakReference<>(view);
    }

    /* renamed from: d */
    public String m35471d() {
        return this.f16333a;
    }

    /* renamed from: d */
    public void m35470d(boolean z) {
        this.f16344m = z;
    }
}
