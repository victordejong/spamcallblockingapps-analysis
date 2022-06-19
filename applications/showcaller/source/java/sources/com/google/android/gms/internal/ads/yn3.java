package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yn3.class */
public final class yn3 implements AbstractC7098w7 {

    /* renamed from: b */
    private final Context f32560b;

    /* renamed from: c */
    private final List<AbstractC6816ol> f32561c = new ArrayList();

    /* renamed from: d */
    private final AbstractC7098w7 f32562d;

    /* renamed from: e */
    private AbstractC7098w7 f32563e;

    /* renamed from: f */
    private AbstractC7098w7 f32564f;

    /* renamed from: g */
    private AbstractC7098w7 f32565g;

    /* renamed from: h */
    private AbstractC7098w7 f32566h;

    /* renamed from: i */
    private AbstractC7098w7 f32567i;

    /* renamed from: j */
    private AbstractC7098w7 f32568j;

    /* renamed from: k */
    private AbstractC7098w7 f32569k;

    /* renamed from: l */
    private AbstractC7098w7 f32570l;

    public yn3(Context context, AbstractC7098w7 abstractC7098w7) {
        this.f32560b = context.getApplicationContext();
        this.f32562d = abstractC7098w7;
    }

    /* renamed from: p */
    private final AbstractC7098w7 m8764p() {
        if (this.f32564f == null) {
            jn3 jn3Var = new jn3(this.f32560b);
            this.f32564f = jn3Var;
            m8763q(jn3Var);
        }
        return this.f32564f;
    }

    /* renamed from: q */
    private final void m8763q(AbstractC7098w7 abstractC7098w7) {
        for (int i = 0; i < this.f32561c.size(); i++) {
            abstractC7098w7.mo8765f(this.f32561c.get(i));
        }
    }

    /* renamed from: r */
    private static final void m8762r(AbstractC7098w7 abstractC7098w7, AbstractC6816ol abstractC6816ol) {
        if (abstractC7098w7 != null) {
            abstractC7098w7.mo8765f(abstractC6816ol);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        AbstractC7098w7 abstractC7098w7 = this.f32570l;
        Objects.requireNonNull(abstractC7098w7);
        return abstractC7098w7.mo8335c(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        AbstractC7098w7 abstractC7098w7 = this.f32570l;
        return abstractC7098w7 == null ? Collections.emptyMap() : abstractC7098w7.mo8435d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        AbstractC7098w7 abstractC7098w7;
        C7173y8.m8895d(this.f32570l == null);
        String scheme = c6472fb.f22761a.getScheme();
        if (C7101wa.m9721G(c6472fb.f22761a)) {
            String path = c6472fb.f22761a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f32563e == null) {
                    bo3 bo3Var = new bo3();
                    this.f32563e = bo3Var;
                    m8763q(bo3Var);
                }
                this.f32570l = this.f32563e;
            } else {
                this.f32570l = m8764p();
            }
        } else if ("asset".equals(scheme)) {
            this.f32570l = m8764p();
        } else if ("content".equals(scheme)) {
            if (this.f32565g == null) {
                rn3 rn3Var = new rn3(this.f32560b);
                this.f32565g = rn3Var;
                m8763q(rn3Var);
            }
            this.f32570l = this.f32565g;
        } else if ("rtmp".equals(scheme)) {
            if (this.f32566h == null) {
                try {
                    AbstractC7098w7 abstractC7098w72 = (AbstractC7098w7) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f32566h = abstractC7098w72;
                    m8763q(abstractC7098w72);
                } catch (ClassNotFoundException e) {
                    Log.w("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating RTMP extension", e2);
                }
                if (this.f32566h == null) {
                    this.f32566h = this.f32562d;
                }
            }
            this.f32570l = this.f32566h;
        } else if ("udp".equals(scheme)) {
            if (this.f32567i == null) {
                to3 to3Var = new to3(2000);
                this.f32567i = to3Var;
                m8763q(to3Var);
            }
            this.f32570l = this.f32567i;
        } else if ("data".equals(scheme)) {
            if (this.f32568j == null) {
                sn3 sn3Var = new sn3();
                this.f32568j = sn3Var;
                m8763q(sn3Var);
            }
            this.f32570l = this.f32568j;
        } else {
            if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f32569k == null) {
                    mo3 mo3Var = new mo3(this.f32560b);
                    this.f32569k = mo3Var;
                    m8763q(mo3Var);
                }
                abstractC7098w7 = this.f32569k;
            } else {
                abstractC7098w7 = this.f32562d;
            }
            this.f32570l = abstractC7098w7;
        }
        return this.f32570l.mo8334e(c6472fb);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: f */
    public final void mo8765f(AbstractC6816ol abstractC6816ol) {
        Objects.requireNonNull(abstractC6816ol);
        this.f32562d.mo8765f(abstractC6816ol);
        this.f32561c.add(abstractC6816ol);
        m8762r(this.f32563e, abstractC6816ol);
        m8762r(this.f32564f, abstractC6816ol);
        m8762r(this.f32565g, abstractC6816ol);
        m8762r(this.f32566h, abstractC6816ol);
        m8762r(this.f32567i, abstractC6816ol);
        m8762r(this.f32568j, abstractC6816ol);
        m8762r(this.f32569k, abstractC6816ol);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        AbstractC7098w7 abstractC7098w7 = this.f32570l;
        if (abstractC7098w7 != null) {
            try {
                abstractC7098w7.mo8333g();
            } finally {
                this.f32570l = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        AbstractC7098w7 abstractC7098w7 = this.f32570l;
        if (abstractC7098w7 == null) {
            return null;
        }
        return abstractC7098w7.zzi();
    }
}
