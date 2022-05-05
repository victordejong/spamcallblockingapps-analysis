package com.asus.contacts.yellowpage;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/o.class */
public final class o {
    static final int[] e = {16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    double f2846a = 0.0d;

    /* renamed from: b  reason: collision with root package name */
    double f2847b = 0.0d;
    private double f = 0.0d;
    private double g = 0.0d;
    double[] c = {-90.0d, 90.0d};
    double[] d = {-180.0d, 180.0d};
    private final int h = 5;
    private final double i = 6378137.0d;

    public final double a() {
        double d = (this.f2846a * 3.141592653589793d) / 180.0d;
        double d2 = (this.f * 3.141592653589793d) / 180.0d;
        double d3 = ((this.f2847b - this.g) * 3.141592653589793d) / 180.0d;
        return Math.asin(Math.sqrt((Math.cos(d) * Math.cos(d2) * Math.pow(Math.sin(d3 / 2.0d), 2.0d)) + Math.pow(Math.sin((d - d2) / 2.0d), 2.0d))) * 2.0d * 6378137.0d;
    }

    public final void a(double d, double d2) {
        this.f2846a = d;
        this.f2847b = d2;
    }

    public final void b(double d, double d2) {
        this.f = d;
        this.g = d2;
    }
}
