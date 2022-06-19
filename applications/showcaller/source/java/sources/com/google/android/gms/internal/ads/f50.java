package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.util.AbstractC6238p;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f50.class */
public final class f50 implements x40, u40 {

    /* renamed from: d */
    private final wn0 f22728d;

    public f50(Context context, zzcgz zzcgzVar, C7016u c7016u, C5624a c5624a) {
        C5667s.m18159e();
        wn0 m14581a = ho0.m14581a(context, mp0.m13133b(), "", false, false, null, null, zzcgzVar, null, null, null, C6854pm.m12219a(), null, null);
        this.f22728d = m14581a;
        ((View) m14581a).setWillNotDraw(true);
    }

    /* renamed from: S */
    private static final void m15315S(Runnable runnable) {
        C7118wr.m9485a();
        if (xh0.m9164n()) {
            runnable.run();
        } else {
            C5679c2.f18451a.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.s40
    /* renamed from: D0 */
    public final void mo7959D0(String str, Map map) {
        t40.m10838d(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.g50
    /* renamed from: E0 */
    public final void mo7957E0(String str, JSONObject jSONObject) {
        t40.m10841a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: J */
    public final void mo9360J(w40 w40Var) {
        this.f22728d.mo7914c0().mo14088V(d50.m15948a(w40Var));
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: O */
    public final void mo9359O(String str) {
        m15315S(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.a50

            /* renamed from: d */
            private final f50 f19833d;

            /* renamed from: e */
            private final String f19834e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19833d = this;
                this.f19834e = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19833d.m15313c(this.f19834e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.e60
    /* renamed from: U */
    public final void mo15305U(String str, n20<? super e60> n20Var) {
        this.f22728d.mo7925X0(str, new AbstractC6238p(n20Var) { // from class: com.google.android.gms.internal.ads.c50

            /* renamed from: a */
            private final n20 f21104a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21104a = n20Var;
            }

            @Override // com.google.android.gms.common.util.AbstractC6238p
            /* renamed from: a */
            public final boolean mo16121a(Object obj) {
                n20 n20Var2;
                n20 n20Var3 = this.f21104a;
                n20 n20Var4 = (n20) obj;
                if (n20Var4 instanceof e50) {
                    n20Var2 = ((e50) n20Var4).f22031a;
                    return n20Var2.equals(n20Var3);
                }
                return false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.s40, com.google.android.gms.internal.ads.u40
    /* renamed from: a */
    public final void mo7920a(String str, JSONObject jSONObject) {
        t40.m10839c(this, str, jSONObject);
    }

    /* renamed from: b */
    public final /* synthetic */ void m15314b(String str) {
        this.f22728d.loadUrl(str);
    }

    /* renamed from: c */
    public final /* synthetic */ void m15313c(String str) {
        this.f22728d.loadData(str, "text/html", "UTF-8");
    }

    /* renamed from: e */
    public final /* synthetic */ void m15312e(String str) {
        this.f22728d.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: g */
    public final boolean mo9358g() {
        return this.f22728d.mo7905h0();
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: h */
    public final f60 mo9357h() {
        return new f60(this);
    }

    @Override // com.google.android.gms.internal.ads.e60
    /* renamed from: i0 */
    public final void mo15303i0(String str, n20<? super e60> n20Var) {
        this.f22728d.mo7899l0(str, new e50(this, n20Var));
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: n */
    public final void mo7896n(String str) {
        m15315S(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.y40

            /* renamed from: d */
            private final f50 f32411d;

            /* renamed from: e */
            private final String f32412e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32411d = this;
                this.f32412e = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32411d.m15311t(this.f32412e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: p */
    public final void mo9356p(String str) {
        m15315S(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.b50

            /* renamed from: d */
            private final f50 f20270d;

            /* renamed from: e */
            private final String f20271e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20270d = this;
                this.f20271e = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20270d.m15314b(this.f20271e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.g50, com.google.android.gms.internal.ads.u40
    /* renamed from: r */
    public final void mo7890r(String str, String str2) {
        t40.m10840b(this, str, str2);
    }

    /* renamed from: t */
    public final /* synthetic */ void m15311t(String str) {
        this.f22728d.mo7896n(str);
    }

    @Override // com.google.android.gms.internal.ads.x40
    /* renamed from: y */
    public final void mo9355y(String str) {
        m15315S(new Runnable(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)) { // from class: com.google.android.gms.internal.ads.z40

            /* renamed from: d */
            private final f50 f32807d;

            /* renamed from: e */
            private final String f32808e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32807d = this;
                this.f32808e = format;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32807d.m15312e(this.f32808e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.x40
    public final void zzi() {
        this.f22728d.destroy();
    }
}
