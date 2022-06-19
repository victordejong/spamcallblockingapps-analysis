package com.callapp.contacts.activity.analytics.graph.charts;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/ColorAnimate.class */
public class ColorAnimate {

    /* renamed from: a */
    final int f20020a;

    /* renamed from: b */
    final int f20021b;

    /* renamed from: c */
    int f20022c;

    /* renamed from: d */
    private int f20023d;

    public ColorAnimate(int i, int i2) {
        this.f20020a = i;
        this.f20021b = i2;
        this.f20022c = i;
        setMask(15);
    }

    /* renamed from: a */
    public final int m31589a(int i, int i2, int i3, float f) {
        return (i & this.f20023d) == 0 ? i2 : i2 + ((int) ((i3 - i2) * f));
    }

    public void setMask(int i) {
        this.f20023d = i;
    }
}
