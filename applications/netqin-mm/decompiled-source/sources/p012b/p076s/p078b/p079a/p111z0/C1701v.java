package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.z0.v */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/v.class */
public final class C1701v<T> implements Loader.AbstractC0351e {

    /* renamed from: a */
    public final C1687i f6959a;

    /* renamed from: b */
    public final int f6960b;

    /* renamed from: c */
    public final C1703w f6961c;

    /* renamed from: d */
    public final AbstractC1702a<? extends T> f6962d;

    /* renamed from: e */
    public volatile T f6963e;

    /* renamed from: b.s.b.a.z0.v$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/z0/v$a.class */
    public interface AbstractC1702a<T> {
        /* renamed from: a */
        T mo32328a(Uri uri, InputStream inputStream) throws IOException;
    }

    public C1701v(AbstractC1684g gVar, Uri uri, int i, AbstractC1702a<? extends T> aVar) {
        this(gVar, new C1687i(uri, 1), i, aVar);
    }

    public C1701v(AbstractC1684g gVar, C1687i iVar, int i, AbstractC1702a<? extends T> aVar) {
        this.f6961c = new C1703w(gVar);
        this.f6959a = iVar;
        this.f6960b = i;
        this.f6962d = aVar;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: a */
    public final void mo32334a() {
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: b */
    public final void mo32333b() throws IOException {
        this.f6961c.m32323d();
        C1686h hVar = new C1686h(this.f6961c, this.f6959a);
        try {
            hVar.m32387b();
            Uri o = this.f6961c.mo32142o();
            C1160a.m34522a(o);
            this.f6963e = (T) this.f6962d.mo32328a(o, hVar);
        } finally {
            C1167d0.m34480a((Closeable) hVar);
        }
    }

    /* renamed from: c */
    public long m32332c() {
        return this.f6961c.m32327a();
    }

    /* renamed from: d */
    public Map<String, List<String>> m32331d() {
        return this.f6961c.m32324c();
    }

    /* renamed from: e */
    public final T m32330e() {
        return this.f6963e;
    }

    /* renamed from: f */
    public Uri m32329f() {
        return this.f6961c.m32325b();
    }
}
