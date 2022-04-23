package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g.h;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/c.class */
public final class c implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21115a = _$$Lambda$c$loKAew4UdPo9cuEUkCza_LTHvuU.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private j f21116b;

    /* renamed from: c  reason: collision with root package name */
    private h f21117c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21118d;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new c()};
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private boolean b(i iVar) throws IOException {
        e eVar = new e();
        if (!eVar.a(iVar, true) || (eVar.f21124b & 2) != 2) {
            return false;
        }
        int min = Math.min(eVar.i, 8);
        u uVar = new u(min);
        iVar.d(uVar.f22335a, 0, min);
        uVar.d(0);
        if (b.a(uVar)) {
            this.f21117c = new b();
            return true;
        }
        uVar.d(0);
        if (i.a(uVar)) {
            this.f21117c = new i();
            return true;
        }
        uVar.d(0);
        if (!g.a(uVar)) {
            return false;
        }
        this.f21117c = new g();
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        a.a(this.f21116b);
        if (this.f21117c == null) {
            if (b(iVar)) {
                iVar.a();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f21118d) {
            x a2 = this.f21116b.a(0, 1);
            this.f21116b.a();
            this.f21117c.a(this.f21116b, a2);
            this.f21118d = true;
        }
        h hVar = this.f21117c;
        a.a(hVar.f21128b);
        af.a(hVar.f21129c);
        int i = hVar.f;
        if (i != 0) {
            if (i == 1) {
                iVar.b((int) hVar.e);
                hVar.f = 2;
                return 0;
            } else if (i == 2) {
                af.a(hVar.f21130d);
                return hVar.a(iVar, uVar);
            } else if (i == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        } else if (!hVar.a(iVar)) {
            return -1;
        } else {
            hVar.g = hVar.h.f21131a.sampleRate;
            if (!hVar.i) {
                hVar.f21128b.a(hVar.h.f21131a);
                hVar.i = true;
            }
            if (hVar.h.f21132b != null) {
                hVar.f21130d = hVar.h.f21132b;
            } else if (iVar.d() == -1) {
                hVar.f21130d = new h.b();
            } else {
                e eVar = hVar.f21127a.f21119a;
                hVar.f21130d = new a(hVar, hVar.e, iVar.d(), eVar.h + eVar.i, eVar.f21125c, (eVar.f21124b & 4) != 0);
            }
            hVar.f = 2;
            d dVar = hVar.f21127a;
            if (dVar.f21120b.f22335a.length == 65025) {
                return 0;
            }
            dVar.f21120b.a(Arrays.copyOf(dVar.f21120b.f22335a, Math.max(65025, dVar.f21120b.f22337c)), dVar.f21120b.f22337c);
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        h hVar = this.f21117c;
        if (hVar != null) {
            hVar.a(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f21116b = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        try {
            return b(iVar);
        } catch (ParserException e) {
            return false;
        }
    }
}
