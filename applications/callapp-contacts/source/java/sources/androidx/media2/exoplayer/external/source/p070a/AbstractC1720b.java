package androidx.media2.exoplayer.external.source.p070a;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.upstream.C1989v;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.source.a.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/b.class */
public abstract class AbstractC1720b implements Loader.AbstractC1959d {

    /* renamed from: a */
    public final C1971h f6754a;

    /* renamed from: b */
    public final int f6755b;

    /* renamed from: c */
    public final Format f6756c;

    /* renamed from: d */
    public final int f6757d;

    /* renamed from: e */
    public final Object f6758e;

    /* renamed from: f */
    public final long f6759f;

    /* renamed from: g */
    public final long f6760g;

    /* renamed from: h */
    protected final C1989v f6761h;

    public AbstractC1720b(AbstractC1968f abstractC1968f, C1971h c1971h, int i, Format format, int i2, Object obj, long j, long j2) {
        this.f6761h = new C1989v(abstractC1968f);
        this.f6754a = (C1971h) C1993a.m41690a(c1971h);
        this.f6755b = i;
        this.f6756c = format;
        this.f6757d = i2;
        this.f6758e = obj;
        this.f6759f = j;
        this.f6760g = j2;
    }

    /* renamed from: c */
    public final long m42377c() {
        return this.f6761h.f8047a;
    }

    /* renamed from: d */
    public final Uri m42376d() {
        return this.f6761h.f8048b;
    }

    /* renamed from: e */
    public final Map<String, List<String>> m42375e() {
        return this.f6761h.f8049c;
    }
}
