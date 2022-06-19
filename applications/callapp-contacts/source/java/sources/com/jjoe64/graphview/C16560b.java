package com.jjoe64.graphview;

import java.text.NumberFormat;
/* renamed from: com.jjoe64.graphview.b */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/b.class */
public final class C16560b implements AbstractC16566d {

    /* renamed from: a */
    protected NumberFormat[] f58245a;

    /* renamed from: b */
    protected C16577j f58246b;

    public C16560b() {
        this.f58245a = new NumberFormat[2];
    }

    public C16560b(NumberFormat numberFormat, NumberFormat numberFormat2) {
        this.f58245a = r0;
        NumberFormat[] numberFormatArr = {numberFormat2, numberFormat};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v47, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [double] */
    /* JADX WARN: Type inference failed for: r8v1 */
    @Override // com.jjoe64.graphview.AbstractC16566d
    /* renamed from: a */
    public final String mo6982a(double d, boolean z) {
        NumberFormat[] numberFormatArr = this.f58245a;
        if (numberFormatArr[z ? 1 : 0] == null) {
            numberFormatArr[z] = NumberFormat.getNumberInstance();
            C16577j c16577j = this.f58246b;
            ?? m6968b = z != 0 ? c16577j.m6968b(false) : c16577j.m6962d(false);
            C16577j c16577j2 = this.f58246b;
            double m6972a = m6968b - (z != 0 ? c16577j2.m6972a(false) : c16577j2.m6965c(false));
            if (m6972a < 0.1d) {
                this.f58245a[z].setMaximumFractionDigits(6);
            } else if (m6972a < 1.0d) {
                this.f58245a[z].setMaximumFractionDigits(4);
            } else if (m6972a < 20.0d) {
                this.f58245a[z].setMaximumFractionDigits(3);
            } else if (m6972a < 100.0d) {
                this.f58245a[z].setMaximumFractionDigits(1);
            } else {
                this.f58245a[z].setMaximumFractionDigits(0);
            }
        }
        return this.f58245a[z].format(d);
    }

    @Override // com.jjoe64.graphview.AbstractC16566d
    /* renamed from: a */
    public final void mo6981a(C16577j c16577j) {
        this.f58246b = c16577j;
    }
}
