package p193e.p1577m.p1578a.p1596c.p1622m1.p1623m;

import android.text.Layout;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
/* renamed from: e.m.a.c.m1.m.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/b.class */
public final class C24577b extends C24562b implements Comparable<C24577b> {

    /* renamed from: p */
    public final int f68726p;

    public C24577b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3, z, i4);
        this.f68726p = i5;
    }

    @Override // java.lang.Comparable
    public int compareTo(C24577b c24577b) {
        int i = c24577b.f68726p;
        int i2 = this.f68726p;
        return i < i2 ? -1 : i > i2 ? 1 : 0;
    }
}
