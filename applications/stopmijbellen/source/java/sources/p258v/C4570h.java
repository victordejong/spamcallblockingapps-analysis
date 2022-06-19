package p258v;

import java.util.ArrayList;
import p269w.C4703i;
import p269w.C4709o;
/* renamed from: v.h */
/* loaded from: classes-dex2jar.jar:v/h.class */
public class C4570h extends C4566d implements AbstractC4569g {

    /* renamed from: r0 */
    public C4566d[] f14144r0 = new C4566d[4];

    /* renamed from: s0 */
    public int f14145s0 = 0;

    /* renamed from: V */
    public void m768V(ArrayList<C4709o> arrayList, int i, C4709o c4709o) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 < this.f14145s0) {
                c4709o.m565a(this.f14144r0[i3]);
                i3++;
            }
        }
        for (i2 = 0; i2 < this.f14145s0; i2++) {
            C4703i.m575a(this.f14144r0[i2], i, arrayList, c4709o);
        }
    }

    @Override // p258v.AbstractC4569g
    /* renamed from: a */
    public void mo767a(C4567e c4567e) {
    }
}
