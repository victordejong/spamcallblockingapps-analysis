package com.bytedance.sdk.openadsdk.core.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.e.d;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/b.class */
public class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private String f8799a;

    /* renamed from: c  reason: collision with root package name */
    protected Context f8800c;

    /* renamed from: d  reason: collision with root package name */
    protected final i f8801d;
    protected final String e;
    protected final int f;
    protected WeakReference<View> g;
    protected WeakReference<View> h;
    protected d i;
    protected a j;
    protected TTNativeAd k;
    protected c l;
    protected boolean m = false;
    protected com.a.a.a.a.a.c n;
    protected Map<String, Object> o;
    protected TTNativeExpressAd p;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.a q;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b/b$a.class */
    public interface a {
        void a(View view, int i);
    }

    public b(Context context, i iVar, String str, int i) {
        this.f8800c = context;
        this.f8801d = iVar;
        this.e = str;
        this.f = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2, String str) {
        return new d.a().d(i).c(i2).b(i3).a(i4).b(j).a(j2).b(ag.a(view)).a(ag.a(view2)).c(ag.c(view)).d(ag.c(view2)).e(this.x).f(this.y).g(this.z).a(str).a();
    }

    public void a(View view) {
        this.g = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, int i, int i2, int i3, int i4) {
        i iVar;
        if (!a(1)) {
            if (this.f8800c == null) {
                this.f8800c = n.a();
            }
            if (this.f8800c != null) {
                long j = this.v;
                long j2 = this.w;
                WeakReference<View> weakReference = this.g;
                View view2 = weakReference == null ? null : weakReference.get();
                WeakReference<View> weakReference2 = this.h;
                this.i = a(i, i2, i3, i4, j, j2, view2, weakReference2 == null ? null : weakReference2.get(), d());
                a aVar = this.j;
                if (aVar != null) {
                    aVar.a(view, -1);
                }
                boolean w = this.f8801d.w();
                String a2 = w ? this.e : af.a(this.f);
                y.a(true);
                boolean a3 = y.a(this.f8800c, this.f8801d, this.f, this.k, this.p, a2, this.n, w);
                if (a3 || (iVar = this.f8801d) == null || iVar.R() == null || this.f8801d.R().c() != 2) {
                    if (!a3 && TextUtils.isEmpty(this.f8801d.G()) && com.bytedance.sdk.openadsdk.d.b.a(this.e)) {
                        com.a.a.a.a.a.d.a(this.f8800c, this.f8801d, this.e).e();
                    }
                    e.a(this.f8800c, "click", this.f8801d, this.i, this.e, a3, this.o);
                }
            }
        }
    }

    public void a(com.a.a.a.a.a.c cVar) {
        this.n = cVar;
    }

    public void a(TTNativeAd tTNativeAd) {
        this.k = tTNativeAd;
    }

    public void a(TTNativeExpressAd tTNativeExpressAd) {
        this.p = tTNativeExpressAd;
    }

    public void a(a aVar) {
        this.j = aVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.nativeexpress.a aVar) {
        this.q = aVar;
    }

    public void a(c cVar) {
        this.l = cVar;
    }

    public void a(String str) {
        this.f8799a = str;
    }

    public void a(Map<String, Object> map) {
        this.o = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(int i) {
        if (this.q == null) {
            return false;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        WeakReference<View> weakReference = this.h;
        if (weakReference != null) {
            iArr = ag.a(weakReference.get());
            iArr2 = ag.c(this.h.get());
        }
        this.q.a(i, new g.a().d(this.r).c(this.s).b(this.t).a(this.u).b(this.v).a(this.w).e(iArr[0]).f(iArr[1]).g(iArr2[0]).h(iArr2[1]).a());
        return true;
    }

    public void b(View view) {
        this.h = new WeakReference<>(view);
    }

    public String d() {
        return this.f8799a;
    }

    public void d(boolean z) {
        this.m = z;
    }
}
