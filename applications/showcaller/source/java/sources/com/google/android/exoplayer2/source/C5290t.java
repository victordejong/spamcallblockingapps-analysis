package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/t.class */
final class C5290t implements AbstractC5478j {

    /* renamed from: b */
    private final AbstractC5478j f16775b;

    /* renamed from: c */
    private final int f16776c;

    /* renamed from: d */
    private final AbstractC5291a f16777d;

    /* renamed from: e */
    private final byte[] f16778e;

    /* renamed from: f */
    private int f16779f;

    /* renamed from: com.google.android.exoplayer2.source.t$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/t$a.class */
    public interface AbstractC5291a {
        /* renamed from: b */
        void mo19741b(C5536v c5536v);
    }

    public C5290t(AbstractC5478j abstractC5478j, int i, AbstractC5291a abstractC5291a) {
        C5508e.m18915a(i > 0);
        this.f16775b = abstractC5478j;
        this.f16776c = i;
        this.f16777d = abstractC5291a;
        this.f16778e = new byte[1];
        this.f16779f = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        if (r11 <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r0[r11 - 1] != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        if (r11 <= 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
        r6.f16777d.mo19741b(new com.google.android.exoplayer2.util.C5536v(r0, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m19850d() {
        /*
            r6 = this;
            r0 = r6
            com.google.android.exoplayer2.upstream.j r0 = r0.f16775b
            r1 = r6
            byte[] r1 = r1.f16778e
            r2 = 0
            r3 = 1
            int r0 = r0.read(r1, r2, r3)
            r1 = -1
            if (r0 != r1) goto L15
            r0 = 0
            return r0
        L15:
            r0 = r6
            byte[] r0 = r0.f16778e
            r1 = 0
            r0 = r0[r1]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r1 = 4
            int r0 = r0 << r1
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L28
            r0 = 1
            return r0
        L28:
            r0 = r7
            byte[] r0 = new byte[r0]
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = 0
            r10 = r0
        L31:
            r0 = r7
            r11 = r0
            r0 = r9
            if (r0 <= 0) goto L5e
            r0 = r6
            com.google.android.exoplayer2.upstream.j r0 = r0.f16775b
            r1 = r8
            r2 = r10
            r3 = r9
            int r0 = r0.read(r1, r2, r3)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L4f
            r0 = 0
            return r0
        L4f:
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = r11
            int r0 = r0 - r1
            r9 = r0
            goto L31
        L5e:
            r0 = r11
            if (r0 <= 0) goto L72
            r0 = r8
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L72
            int r11 = r11 + (-1)
            goto L5e
        L72:
            r0 = r11
            if (r0 <= 0) goto L8a
            r0 = r6
            com.google.android.exoplayer2.source.t$a r0 = r0.f16777d
            com.google.android.exoplayer2.util.v r1 = new com.google.android.exoplayer2.util.v
            r2 = r1
            r3 = r8
            r4 = r11
            r2.<init>(r3, r4)
            r0.mo19741b(r1)
        L8a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5290t.m19850d():boolean");
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: a */
    public void mo18950a(AbstractC5497x abstractC5497x) {
        this.f16775b.mo18950a(abstractC5497x);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f16775b.mo18948c();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public Map<String, List<String>> getResponseHeaders() {
        return this.f16775b.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (this.f16779f == 0) {
            if (!m19850d()) {
                return -1;
            }
            this.f16779f = this.f16776c;
        }
        int read = this.f16775b.read(bArr, i, Math.min(this.f16779f, i2));
        if (read != -1) {
            this.f16779f -= read;
        }
        return read;
    }
}
