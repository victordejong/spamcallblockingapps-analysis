package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
/* renamed from: e.m.a.c.l1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/n.class */
public final class C24527n implements AbstractC24739l {

    /* renamed from: a */
    public final AbstractC24739l f68502a;

    /* renamed from: b */
    public final int f68503b;

    /* renamed from: c */
    public final AbstractC24528a f68504c;

    /* renamed from: d */
    public final byte[] f68505d;

    /* renamed from: e */
    public int f68506e;

    /* renamed from: e.m.a.c.l1.n$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/n$a.class */
    public interface AbstractC24528a {
    }

    public C24527n(AbstractC24739l abstractC24739l, int i, AbstractC24528a abstractC24528a) {
        C26232y.m2310r(i > 0);
        this.f68502a = abstractC24739l;
        this.f68503b = i;
        this.f68504c = abstractC24528a;
        this.f68505d = new byte[1];
        this.f68506e = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        return this.f68502a.mo4667a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public void mo4669c(AbstractC24697f0 abstractC24697f0) {
        this.f68502a.mo4669c(abstractC24697f0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f68502a.getUri();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (r18 <= 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008f, code lost:
        r0 = r18 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009a, code lost:
        if (r0[r0] != 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
        if (r18 <= 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a9, code lost:
        r0 = r8.f68504c;
        r0 = new p193e.p1577m.p1578a.p1596c.p1636q1.C24798t(r0, r18);
        r0 = (p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.C24541a) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c8, code lost:
        if (r0.f68572m != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cb, code lost:
        r19 = r0.f68568i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d5, code lost:
        r0 = p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.this;
        r0 = p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.f68520Q;
        r19 = java.lang.Math.max(r0.m4951u(), r0.f68568i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f0, code lost:
        r0 = r0.m4545a();
        r0 = r0.f68571l;
        java.util.Objects.requireNonNull(r0);
        r0.mo4929a(r0, r0);
        r0.mo4927c(r19, 1, r0, 0, null);
        r0.f68572m = true;
     */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r9, int r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24527n.read(byte[], int, int):int");
    }
}
