package com.jjoe64.graphview.p455a;

import java.io.Serializable;
import java.util.Date;
/* renamed from: com.jjoe64.graphview.a.c */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a/c.class */
public final class C16548c implements AbstractC16549d, Serializable {

    /* renamed from: a */
    private double f58214a;

    /* renamed from: b */
    private double f58215b;

    public C16548c(double d, double d2) {
        this.f58214a = d;
        this.f58215b = d2;
    }

    public C16548c(Date date, double d) {
        this.f58214a = date.getTime();
        this.f58215b = d;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16549d
    /* renamed from: a */
    public final double mo7040a() {
        return this.f58214a;
    }

    @Override // com.jjoe64.graphview.p455a.AbstractC16549d
    /* renamed from: b */
    public final double mo7039b() {
        return this.f58215b;
    }

    public final String toString() {
        return "[" + this.f58214a + "/" + this.f58215b + "]";
    }
}
