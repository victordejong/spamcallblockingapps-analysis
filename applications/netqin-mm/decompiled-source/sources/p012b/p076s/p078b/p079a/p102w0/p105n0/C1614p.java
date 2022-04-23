package p012b.p076s.p078b.p079a.p102w0.p105n0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p107x0.p109d.C1651b;
/* renamed from: b.s.b.a.w0.n0.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/p.class */
public final class C1614p implements AbstractC1350g {

    /* renamed from: g */
    public static final Pattern f6626g = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: h */
    public static final Pattern f6627h = Pattern.compile("MPEGTS:(\\d+)");

    /* renamed from: a */
    public final String f6628a;

    /* renamed from: b */
    public final C1196z f6629b;

    /* renamed from: d */
    public AbstractC1352i f6631d;

    /* renamed from: f */
    public int f6633f;

    /* renamed from: c */
    public final C1184p f6630c = new C1184p();

    /* renamed from: e */
    public byte[] f6632e = new byte[1024];

    public C1614p(String str, C1196z zVar) {
        this.f6628a = str;
        this.f6629b = zVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        int a = (int) hVar.mo33622a();
        int i = this.f6633f;
        byte[] bArr = this.f6632e;
        if (i == bArr.length) {
            this.f6632e = Arrays.copyOf(bArr, ((a != -1 ? a : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f6632e;
        int i2 = this.f6633f;
        int read = hVar.read(bArr2, i2, bArr2.length - i2);
        if (read != -1) {
            int i3 = this.f6633f + read;
            this.f6633f = i3;
            if (a == -1 || i3 != a) {
                return 0;
            }
        }
        m32613b();
        return -1;
    }

    /* renamed from: a */
    public final AbstractC1362q m32618a(long j) {
        AbstractC1362q a = this.f6631d.mo32666a(0, 3);
        a.mo32623a(Format.m38178a((String) null, "text/vtt", (String) null, -1, 0, this.f6628a, (DrmInitData) null, j));
        this.f6631d.mo32639e();
        return a;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f6631d = iVar;
        iVar.mo32656a(new AbstractC1358o.C1360b(-9223372036854775807L));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33615b(this.f6632e, 0, 6, false);
        this.f6630c.m34367a(this.f6632e, 6);
        if (C1651b.m32484b(this.f6630c)) {
            return true;
        }
        hVar.mo33615b(this.f6632e, 6, 3, false);
        this.f6630c.m34367a(this.f6632e, 9);
        return C1651b.m32484b(this.f6630c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32613b() throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.C1614p.m32613b():void");
    }
}
