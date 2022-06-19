package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.upstream.v */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/v.class */
public final class C1989v implements AbstractC1968f {

    /* renamed from: a */
    public long f8047a;

    /* renamed from: b */
    public Uri f8048b = Uri.EMPTY;

    /* renamed from: c */
    public Map<String, List<String>> f8049c = Collections.emptyMap();

    /* renamed from: d */
    private final AbstractC1968f f8050d;

    public C1989v(AbstractC1968f abstractC1968f) {
        this.f8050d = (AbstractC1968f) C1993a.m41690a(abstractC1968f);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws IOException {
        int mo41197a = this.f8050d.mo41197a(bArr, i, i2);
        if (mo41197a != -1) {
            this.f8047a += mo41197a;
        }
        return mo41197a;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        this.f8048b = c1971h.f7952a;
        this.f8049c = Collections.emptyMap();
        long mo41199a = this.f8050d.mo41199a(c1971h);
        this.f8048b = (Uri) C1993a.m41690a(mo41200a());
        this.f8049c = mo41696b();
        return mo41199a;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f8050d.mo41200a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final void mo41697a(AbstractC1990w abstractC1990w) {
        this.f8050d.mo41697a(abstractC1990w);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public final Map<String, List<String>> mo41696b() {
        return this.f8050d.mo41696b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws IOException {
        this.f8050d.mo41196c();
    }
}
