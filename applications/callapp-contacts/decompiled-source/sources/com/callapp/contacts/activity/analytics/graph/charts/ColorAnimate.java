package com.callapp.contacts.activity.analytics.graph.charts;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/ColorAnimate.class */
public class ColorAnimate {

    /* renamed from: a  reason: collision with root package name */
    final int f10945a;

    /* renamed from: b  reason: collision with root package name */
    final int f10946b;

    /* renamed from: c  reason: collision with root package name */
    int f10947c;

    /* renamed from: d  reason: collision with root package name */
    private int f10948d;

    public ColorAnimate(int i, int i2) {
        this.f10945a = i;
        this.f10946b = i2;
        this.f10947c = i;
        setMask(15);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i, int i2, int i3, float f) {
        return (i & this.f10948d) == 0 ? i2 : i2 + ((int) ((i3 - i2) * f));
    }

    public void setMask(int i) {
        this.f10948d = i;
    }
}
