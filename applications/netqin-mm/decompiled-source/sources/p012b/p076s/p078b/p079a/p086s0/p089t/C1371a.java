package p012b.p076s.p078b.p079a.p086s0.p089t;

import java.io.IOException;
import java.util.ArrayDeque;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.t.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/a.class */
public final class C1371a implements AbstractC1375c {

    /* renamed from: a */
    public final byte[] f5414a = new byte[8];

    /* renamed from: b */
    public final ArrayDeque<C1373b> f5415b = new ArrayDeque<>();

    /* renamed from: c */
    public final C1383g f5416c = new C1383g();

    /* renamed from: d */
    public AbstractC1374b f5417d;

    /* renamed from: e */
    public int f5418e;

    /* renamed from: f */
    public int f5419f;

    /* renamed from: g */
    public long f5420g;

    /* renamed from: b.s.b.a.s0.t.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/a$b.class */
    public static final class C1373b {

        /* renamed from: a */
        public final int f5421a;

        /* renamed from: b */
        public final long f5422b;

        public C1373b(int i, long j) {
            this.f5421a = i;
            this.f5422b = j;
        }
    }

    /* renamed from: a */
    public final double m33572a(AbstractC1351h hVar, int i) throws IOException, InterruptedException {
        long b = m33570b(hVar, i);
        return i == 4 ? Float.intBitsToFloat((int) b) : Double.longBitsToDouble(b);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1375c
    /* renamed from: a */
    public void mo33566a() {
        this.f5418e = 0;
        this.f5415b.clear();
        this.f5416c.m33512b();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1375c
    /* renamed from: a */
    public void mo33564a(AbstractC1374b bVar) {
        this.f5417d = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1375c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo33565a(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p089t.C1371a.mo33565a(b.s.b.a.s0.h):boolean");
    }

    /* renamed from: b */
    public final long m33571b(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33614c();
        while (true) {
            hVar.mo33619a(this.f5414a, 0, 4);
            int a = C1383g.m33515a(this.f5414a[0]);
            if (a != -1 && a <= 4) {
                int a2 = (int) C1383g.m33513a(this.f5414a, a, false);
                if (this.f5417d.mo33531c(a2)) {
                    hVar.mo33613c(a);
                    return a2;
                }
            }
            hVar.mo33613c(1);
        }
    }

    /* renamed from: b */
    public final long m33570b(AbstractC1351h hVar, int i) throws IOException, InterruptedException {
        hVar.readFully(this.f5414a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f5414a[i2] & 255);
        }
        return j;
    }

    /* renamed from: c */
    public final String m33569c(AbstractC1351h hVar, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        hVar.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }
}
