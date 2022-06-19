package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
/* renamed from: e.m.a.c.g1.e0.x */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/x.class */
public final class C24395x {

    /* renamed from: a */
    public final List<Format> f68046a;

    /* renamed from: b */
    public final AbstractC24422s[] f68047b;

    public C24395x(List<Format> list) {
        this.f68046a = list;
        this.f68047b = new AbstractC24422s[list.size()];
    }

    /* renamed from: a */
    public void m5166a(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        for (int i = 0; i < this.f68047b.length; i++) {
            c24365d.m5203a();
            AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 3);
            Format format = this.f68046a.get(i);
            String str = format.f4847i;
            C26232y.m2306s("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String str2 = format.f4839a;
            if (str2 == null) {
                str2 = c24365d.m5202b();
            }
            mo4960i.mo4928b(Format.m39248m(str2, str, null, -1, format.f4841c, format.f4835A, format.f4836B, null, RecyclerView.FOREVER_NS, format.f4849k));
            this.f68047b[i] = mo4960i;
        }
    }
}
