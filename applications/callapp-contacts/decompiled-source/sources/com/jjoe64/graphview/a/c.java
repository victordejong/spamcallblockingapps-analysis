package com.jjoe64.graphview.a;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/c.class */
public final class c implements d, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private double f33546a;

    /* renamed from: b  reason: collision with root package name */
    private double f33547b;

    public c(double d2, double d3) {
        this.f33546a = d2;
        this.f33547b = d3;
    }

    public c(Date date, double d2) {
        this.f33546a = date.getTime();
        this.f33547b = d2;
    }

    @Override // com.jjoe64.graphview.a.d
    public final double a() {
        return this.f33546a;
    }

    @Override // com.jjoe64.graphview.a.d
    public final double b() {
        return this.f33547b;
    }

    public final String toString() {
        return "[" + this.f33546a + "/" + this.f33547b + "]";
    }
}
