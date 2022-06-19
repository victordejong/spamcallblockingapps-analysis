package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.callapp.contacts.activity.analytics.graph.util.GenericFunctions;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesLabel.class */
public class SeriesLabel {

    /* renamed from: h */
    private static Typeface f20083h;

    /* renamed from: a */
    String f20084a;

    /* renamed from: b */
    Paint f20085b;

    /* renamed from: c */
    Paint f20086c;

    /* renamed from: d */
    Rect f20087d;

    /* renamed from: e */
    RectF f20088e;

    /* renamed from: f */
    float f20089f;

    /* renamed from: g */
    final boolean f20090g;

    /* renamed from: i */
    private final float f20091i;

    /* renamed from: j */
    private final float f20092j;

    /* renamed from: k */
    private final float f20093k;

    /* renamed from: l */
    private final Typeface f20094l;

    /* renamed from: m */
    private final int f20095m;

    /* renamed from: n */
    private final int f20096n;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/SeriesLabel$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final String f20097a;

        /* renamed from: b */
        private Typeface f20098b;

        /* renamed from: c */
        private float f20099c = 16.0f;

        /* renamed from: d */
        private int f20100d = Color.parseColor("#FFFFFFFF");

        /* renamed from: e */
        private int f20101e = Color.parseColor("#AA000000");

        /* renamed from: f */
        private boolean f20102f = true;

        public Builder(String str) {
            this.f20097a = str;
        }
    }

    private SeriesLabel(Builder builder) {
        this.f20091i = 15.0f;
        this.f20092j = 15.0f;
        this.f20084a = builder.f20097a;
        this.f20090g = builder.f20102f;
        int i = builder.f20100d;
        this.f20095m = i;
        int i2 = builder.f20101e;
        this.f20096n = i2;
        Typeface typeface = builder.f20098b;
        this.f20094l = typeface;
        float f = builder.f20099c;
        this.f20093k = f;
        if (this.f20085b == null) {
            Paint paint = new Paint();
            this.f20085b = paint;
            paint.setColor(i2);
        }
        if (this.f20086c == null) {
            Paint paint2 = new Paint();
            this.f20086c = paint2;
            paint2.setColor(i);
            this.f20086c.setTextSize(GenericFunctions.m31531a(f));
            this.f20086c.setTextAlign(Paint.Align.CENTER);
            if (typeface != null) {
                this.f20086c.setTypeface(f20083h);
            } else {
                Typeface typeface2 = f20083h;
                if (typeface2 != null) {
                    this.f20086c.setTypeface(typeface2);
                }
            }
        }
        if (this.f20087d == null) {
            this.f20087d = new Rect();
            Paint paint3 = this.f20086c;
            String str = this.f20084a;
            paint3.getTextBounds(str, 0, str.length(), this.f20087d);
            this.f20088e = new RectF();
            this.f20089f = (this.f20086c.descent() + this.f20086c.ascent()) / 2.0f;
        }
    }
}
