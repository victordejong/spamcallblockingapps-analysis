package p131c.p161d.p170b.p188c.p210w0.p218y;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.y.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/y/b.class */
public final class C3189b implements AbstractC3042g {

    /* renamed from: a */
    public AbstractC3044i f11780a;

    /* renamed from: b */
    public AbstractC3054q f11781b;

    /* renamed from: c */
    public C3190c f11782c;

    /* renamed from: d */
    public int f11783d;

    /* renamed from: e */
    public int f11784e;

    static {
        C3188a aVar = C3188a.f11779a;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27549b() {
        return new AbstractC3042g[]{new C3189b()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        if (this.f11782c == null) {
            C3190c a = C3191d.m27535a(hVar);
            this.f11782c = a;
            if (a != null) {
                this.f11781b.mo28034a(Format.m18699a((String) null, "audio/raw", (String) null, a.m27548a(), (int) RegularImmutableMap.SHORT_MAX_SIZE, this.f11782c.m27538h(), this.f11782c.m27537i(), this.f11782c.m27539g(), (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f11783d = this.f11782c.m27541e();
            } else {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
        }
        if (!this.f11782c.m27536j()) {
            C3191d.m27534a(hVar, this.f11782c);
            this.f11780a.mo28047a(this.f11782c);
        } else if (hVar.getPosition() == 0) {
            hVar.mo28049c(this.f11782c.m27540f());
        }
        long d = this.f11782c.m27542d();
        int i = 0;
        C2877e.m28731b(d != -1);
        long position = d - hVar.getPosition();
        if (position <= 0) {
            return -1;
        }
        int a2 = this.f11781b.mo28035a(hVar, (int) Math.min(RegularImmutableMap.SHORT_MAX_SIZE - this.f11784e, position), true);
        if (a2 != -1) {
            this.f11784e += a2;
        }
        int i2 = this.f11784e / this.f11783d;
        if (i2 > 0) {
            long a3 = this.f11782c.m27546a(hVar.getPosition() - this.f11784e);
            int i3 = i2 * this.f11783d;
            int i4 = this.f11784e - i3;
            this.f11784e = i4;
            this.f11781b.mo28037a(a3, 1, i3, i4, null);
        }
        if (a2 == -1) {
            i = -1;
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11784e = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11780a = iVar;
        this.f11781b = iVar.mo28048a(0, 1);
        this.f11782c = null;
        iVar.mo28046e();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        return C3191d.m27535a(hVar) != null;
    }
}
