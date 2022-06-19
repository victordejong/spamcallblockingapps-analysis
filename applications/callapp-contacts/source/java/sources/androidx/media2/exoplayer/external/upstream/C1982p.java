package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.upstream.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/p.class */
public final class C1982p extends HttpDataSource.AbstractC1953a {

    /* renamed from: a */
    private final String f8035a;

    /* renamed from: b */
    private final AbstractC1990w f8036b;

    /* renamed from: c */
    private final int f8037c;

    /* renamed from: d */
    private final int f8038d;

    /* renamed from: e */
    private final boolean f8039e;

    public C1982p(String str) {
        this(str, null);
    }

    public C1982p(String str, int i, int i2, boolean z) {
        this(str, null, i, i2, z);
    }

    public C1982p(String str, AbstractC1990w abstractC1990w) {
        this(str, abstractC1990w, 8000, 8000, false);
    }

    public C1982p(String str, AbstractC1990w abstractC1990w, int i, int i2, boolean z) {
        this.f8035a = C1993a.m41689a(str);
        this.f8036b = abstractC1990w;
        this.f8037c = i;
        this.f8038d = i2;
        this.f8039e = z;
    }

    @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.AbstractC1953a
    /* renamed from: a */
    protected final /* synthetic */ HttpDataSource mo41704a(HttpDataSource.C1954b c1954b) {
        C1981o c1981o = new C1981o(this.f8035a, this.f8037c, this.f8038d, this.f8039e, c1954b);
        AbstractC1990w abstractC1990w = this.f8036b;
        if (abstractC1990w != null) {
            c1981o.mo41697a(abstractC1990w);
        }
        return c1981o;
    }
}
