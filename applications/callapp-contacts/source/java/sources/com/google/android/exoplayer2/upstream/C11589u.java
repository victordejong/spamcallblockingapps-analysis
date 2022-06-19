package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/u.class */
public final class C11589u implements AbstractC11567h {

    /* renamed from: a */
    private final AbstractC11567h f38624a;

    /* renamed from: b */
    private final AbstractC11565g f38625b;

    /* renamed from: c */
    private boolean f38626c;

    /* renamed from: d */
    private long f38627d;

    public C11589u(AbstractC11567h abstractC11567h, AbstractC11565g abstractC11565g) {
        this.f38624a = (AbstractC11567h) C11593a.m20020b(abstractC11567h);
        this.f38625b = (AbstractC11565g) C11593a.m20020b(abstractC11565g);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f38627d == 0) {
            return -1;
        }
        int a = this.f38624a.mo20033a(bArr, i, i2);
        if (a > 0) {
            this.f38625b.mo20078a(bArr, i, a);
            long j = this.f38627d;
            if (j != -1) {
                this.f38627d = j - a;
            }
        }
        return a;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        long mo20035a = this.f38624a.mo20035a(c11570j);
        this.f38627d = mo20035a;
        if (mo20035a == 0) {
            return 0L;
        }
        C11570j c11570j2 = c11570j;
        if (c11570j.f38519h == -1) {
            long j = this.f38627d;
            c11570j2 = c11570j;
            if (j != -1) {
                c11570j2 = c11570j.f38519h == j ? c11570j : new C11570j(c11570j.f38512a, c11570j.f38513b, c11570j.f38514c, c11570j.f38515d, c11570j.f38516e, c11570j.f38518g + 0, j, c11570j.f38520i, c11570j.f38521j, c11570j.f38522k);
            }
        }
        this.f38626c = true;
        this.f38625b.mo20079a(c11570j2);
        return this.f38627d;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38624a.mo20036a();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f38624a.mo20034a(abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        return this.f38624a.mo20032b();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws IOException {
        try {
            this.f38624a.mo20031c();
            if (!this.f38626c) {
                return;
            }
            this.f38626c = false;
            this.f38625b.mo20080a();
        } catch (Throwable th) {
            if (this.f38626c) {
                this.f38626c = false;
                this.f38625b.mo20080a();
            }
            throw th;
        }
    }
}
