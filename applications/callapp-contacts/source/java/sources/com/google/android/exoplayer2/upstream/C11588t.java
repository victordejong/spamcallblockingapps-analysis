package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/t.class */
public final class C11588t implements AbstractC11567h {

    /* renamed from: a */
    public long f38620a;

    /* renamed from: b */
    public Uri f38621b = Uri.EMPTY;

    /* renamed from: c */
    public Map<String, List<String>> f38622c = Collections.emptyMap();

    /* renamed from: d */
    private final AbstractC11567h f38623d;

    public C11588t(AbstractC11567h abstractC11567h) {
        this.f38623d = (AbstractC11567h) C11593a.m20020b(abstractC11567h);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        int a = this.f38623d.mo20033a(bArr, i, i2);
        if (a != -1) {
            this.f38620a += a;
        }
        return a;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        this.f38621b = c11570j.f38512a;
        this.f38622c = Collections.emptyMap();
        long mo20035a = this.f38623d.mo20035a(c11570j);
        this.f38621b = (Uri) C11593a.m20020b(mo20036a());
        this.f38622c = mo20032b();
        return mo20035a;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38623d.mo20036a();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f38623d.mo20034a(abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        return this.f38623d.mo20032b();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws IOException {
        this.f38623d.mo20031c();
    }
}
