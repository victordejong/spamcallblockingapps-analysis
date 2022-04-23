package p012b.p076s.p078b.p079a.p102w0.p104m0;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
import p012b.p076s.p078b.p079a.p111z0.C1703w;
/* renamed from: b.s.b.a.w0.m0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/m0/b.class */
public abstract class AbstractC1588b implements Loader.AbstractC0351e {

    /* renamed from: a */
    public final C1687i f6485a;

    /* renamed from: b */
    public final int f6486b;

    /* renamed from: c */
    public final Format f6487c;

    /* renamed from: d */
    public final int f6488d;

    /* renamed from: e */
    public final Object f6489e;

    /* renamed from: f */
    public final long f6490f;

    /* renamed from: g */
    public final long f6491g;

    /* renamed from: h */
    public final C1703w f6492h;

    public AbstractC1588b(AbstractC1684g gVar, C1687i iVar, int i, Format format, int i2, Object obj, long j, long j2) {
        this.f6492h = new C1703w(gVar);
        C1160a.m34522a(iVar);
        this.f6485a = iVar;
        this.f6486b = i;
        this.f6487c = format;
        this.f6488d = i2;
        this.f6489e = obj;
        this.f6490f = j;
        this.f6491g = j2;
    }

    /* renamed from: c */
    public final long m32727c() {
        return this.f6492h.m32327a();
    }

    /* renamed from: d */
    public final long m32726d() {
        return this.f6491g - this.f6490f;
    }

    /* renamed from: e */
    public final Map<String, List<String>> m32725e() {
        return this.f6492h.m32324c();
    }

    /* renamed from: f */
    public final Uri m32724f() {
        return this.f6492h.m32325b();
    }
}
