package com.adbert.p009a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: com.adbert.a.h */
/* loaded from: classes-dex2jar.jar:com/adbert/a/h.class */
public class C1406h {

    /* renamed from: a */
    public int f661a;

    /* renamed from: b */
    public int f662b;

    /* renamed from: c */
    public Context f663c;

    public C1406h(Context context) {
        this.f663c = context;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.f661a = displayMetrics.widthPixels;
            this.f662b = displayMetrics.heightPixels;
        } catch (Exception e) {
            C1402g.m37141a(e);
            try {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                this.f661a = point.x;
                this.f662b = point.y;
            } catch (Exception e2) {
                C1402g.m37141a(e2);
            }
        }
    }

    /* renamed from: a */
    public int m37121a() {
        return this.f661a;
    }

    /* renamed from: a */
    public int m37120a(double d) {
        return (int) (this.f661a * d);
    }

    /* renamed from: a */
    public int m37119a(int i, int i2, int i3) {
        return (int) ((i / i2) * i3);
    }

    /* renamed from: b */
    public int m37118b() {
        return this.f662b;
    }

    /* renamed from: c */
    public String m37117c() {
        return this.f661a + "X" + this.f662b;
    }
}
