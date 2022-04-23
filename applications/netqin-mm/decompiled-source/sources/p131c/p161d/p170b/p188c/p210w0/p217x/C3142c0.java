package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import java.util.List;
import p131c.p161d.p170b.p188c.p196c1.p197d.C2765b;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.c0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/c0.class */
public final class C3142c0 {

    /* renamed from: a */
    public final List<Format> f11457a;

    /* renamed from: b */
    public final AbstractC3054q[] f11458b;

    public C3142c0(List<Format> list) {
        this.f11457a = list;
        this.f11458b = new AbstractC3054q[list.size()];
    }

    /* renamed from: a */
    public void m27725a(long j, C2904v vVar) {
        C2765b.m29079a(j, vVar, this.f11458b);
    }

    /* renamed from: a */
    public void m27724a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        for (int i = 0; i < this.f11458b.length; i++) {
            dVar.m27684a();
            AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 3);
            Format format = this.f11457a.get(i);
            String str = format.f21952i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            C2877e.m28733a(z, "Invalid closed caption mime type provided: " + str);
            String str2 = format.f21944a;
            if (str2 == null) {
                str2 = dVar.m27683b();
            }
            a.mo28034a(Format.m18697a(str2, str, null, -1, format.f21946c, format.f21940A, format.f21941B, null, Long.MAX_VALUE, format.f21954k));
            this.f11458b[i] = a;
        }
    }
}
