package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.callapp.contacts.activity.analytics.graph.util.GenericFunctions;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesLabel.class */
public class SeriesLabel {
    private static Typeface h;

    /* renamed from: a  reason: collision with root package name */
    String f10970a;

    /* renamed from: b  reason: collision with root package name */
    Paint f10971b;

    /* renamed from: c  reason: collision with root package name */
    Paint f10972c;

    /* renamed from: d  reason: collision with root package name */
    Rect f10973d;
    RectF e;
    float f;
    final boolean g;
    private final float i;
    private final float j;
    private final float k;
    private final Typeface l;
    private final int m;
    private final int n;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final String f10974a;

        /* renamed from: b  reason: collision with root package name */
        private Typeface f10975b;

        /* renamed from: c  reason: collision with root package name */
        private float f10976c = 16.0f;

        /* renamed from: d  reason: collision with root package name */
        private int f10977d = Color.parseColor("#FFFFFFFF");
        private int e = Color.parseColor("#AA000000");
        private boolean f = true;

        public Builder(String str) {
            this.f10974a = str;
        }
    }

    private SeriesLabel(Builder builder) {
        this.i = 15.0f;
        this.j = 15.0f;
        this.f10970a = builder.f10974a;
        this.g = builder.f;
        int i = builder.f10977d;
        this.m = i;
        int i2 = builder.e;
        this.n = i2;
        Typeface typeface = builder.f10975b;
        this.l = typeface;
        float f = builder.f10976c;
        this.k = f;
        if (this.f10971b == null) {
            Paint paint = new Paint();
            this.f10971b = paint;
            paint.setColor(i2);
        }
        if (this.f10972c == null) {
            Paint paint2 = new Paint();
            this.f10972c = paint2;
            paint2.setColor(i);
            this.f10972c.setTextSize(GenericFunctions.a(f));
            this.f10972c.setTextAlign(Paint.Align.CENTER);
            if (typeface != null) {
                this.f10972c.setTypeface(h);
            } else {
                Typeface typeface2 = h;
                if (typeface2 != null) {
                    this.f10972c.setTypeface(typeface2);
                }
            }
        }
        if (this.f10973d == null) {
            this.f10973d = new Rect();
            Paint paint3 = this.f10972c;
            String str = this.f10970a;
            paint3.getTextBounds(str, 0, str.length(), this.f10973d);
            this.e = new RectF();
            this.f = (this.f10972c.descent() + this.f10972c.ascent()) / 2.0f;
        }
    }
}
