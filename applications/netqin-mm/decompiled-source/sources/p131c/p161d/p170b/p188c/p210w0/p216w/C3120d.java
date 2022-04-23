package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.w.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/d.class */
public class C3120d implements AbstractC3042g {

    /* renamed from: a */
    public AbstractC3044i f11395a;

    /* renamed from: b */
    public AbstractC3125i f11396b;

    /* renamed from: c */
    public boolean f11397c;

    static {
        C3114a aVar = C3114a.f11374a;
    }

    /* renamed from: a */
    public static C2904v m27774a(C2904v vVar) {
        vVar.m28538e(0);
        return vVar;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27773b() {
        return new AbstractC3042g[]{new C3120d()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        if (this.f11396b == null) {
            if (m27772b(hVar)) {
                hVar.mo28050c();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f11397c) {
            AbstractC3054q a = this.f11395a.mo28048a(0, 1);
            this.f11395a.mo28046e();
            this.f11396b.m27756a(this.f11395a, a);
            this.f11397c = true;
        }
        return this.f11396b.m27757a(hVar, nVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        AbstractC3125i iVar = this.f11396b;
        if (iVar != null) {
            iVar.m27759a(j, j2);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11395a = iVar;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        try {
            return m27772b(hVar);
        } catch (ParserException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m27772b(AbstractC3043h hVar) throws IOException, InterruptedException {
        C3122f fVar = new C3122f();
        if (!fVar.m27764a(hVar, true) || (fVar.f11404b & 2) != 2) {
            return false;
        }
        int min = Math.min(fVar.f11408f, 8);
        C2904v vVar = new C2904v(min);
        hVar.mo28055a(vVar.f10530a, 0, min);
        m27774a(vVar);
        if (C3118c.m27777c(vVar)) {
            this.f11396b = new C3118c();
            return true;
        }
        m27774a(vVar);
        if (C3130k.m27737c(vVar)) {
            this.f11396b = new C3130k();
            return true;
        }
        m27774a(vVar);
        if (!C3124h.m27761b(vVar)) {
            return false;
        }
        this.f11396b = new C3124h();
        return true;
    }
}
