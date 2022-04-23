package com.jjoe64.graphview;

import java.text.NumberFormat;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/b.class */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    protected NumberFormat[] f33559a;

    /* renamed from: b  reason: collision with root package name */
    protected j f33560b;

    public b() {
        this.f33559a = new NumberFormat[2];
    }

    public b(NumberFormat numberFormat, NumberFormat numberFormat2) {
        this.f33559a = r0;
        NumberFormat[] numberFormatArr = {numberFormat2, numberFormat};
    }

    @Override // com.jjoe64.graphview.d
    public final String a(double d2, boolean z) {
        NumberFormat[] numberFormatArr = this.f33559a;
        if (numberFormatArr[z ? 1 : 0] == null) {
            numberFormatArr[z] = NumberFormat.getNumberInstance();
            j jVar = this.f33560b;
            double b2 = z != 0 ? jVar.b(false) : jVar.d(false);
            j jVar2 = this.f33560b;
            double a2 = b2 - (z != 0 ? jVar2.a(false) : jVar2.c(false));
            if (a2 < 0.1d) {
                this.f33559a[z].setMaximumFractionDigits(6);
            } else if (a2 < 1.0d) {
                this.f33559a[z].setMaximumFractionDigits(4);
            } else if (a2 < 20.0d) {
                this.f33559a[z].setMaximumFractionDigits(3);
            } else if (a2 < 100.0d) {
                this.f33559a[z].setMaximumFractionDigits(1);
            } else {
                this.f33559a[z].setMaximumFractionDigits(0);
            }
        }
        return this.f33559a[z].format(d2);
    }

    @Override // com.jjoe64.graphview.d
    public final void a(j jVar) {
        this.f33560b = jVar;
    }
}
