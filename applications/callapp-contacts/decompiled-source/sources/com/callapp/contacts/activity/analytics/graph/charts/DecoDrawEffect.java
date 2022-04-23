package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect.class */
public class DecoDrawEffect {

    /* renamed from: a  reason: collision with root package name */
    final EffectType f10949a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f10950b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f10951c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f10952d;
    private String e;
    private final RectF f = new RectF();
    private int g = 6;

    /* renamed from: com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10953a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EffectType.values().length];
            f10953a = iArr;
            try {
                iArr[EffectType.EFFECT_SPIRAL_EXPLODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10953a[EffectType.EFFECT_EXPLODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10953a[EffectType.EFFECT_SPIRAL_IN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10953a[EffectType.EFFECT_SPIRAL_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10953a[EffectType.EFFECT_SPIRAL_OUT_FILL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType.class */
    public enum EffectType {
        EFFECT_SPIRAL_OUT_FILL,
        EFFECT_SPIRAL_OUT,
        EFFECT_SPIRAL_IN,
        EFFECT_EXPLODE,
        EFFECT_SPIRAL_EXPLODE
    }

    DecoDrawEffect(EffectType effectType, Paint paint) {
        this.f10949a = effectType;
        setPaint(paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecoDrawEffect(EffectType effectType, Paint paint, String str) {
        this.f10949a = effectType;
        setPaint(paint);
        int color = paint.getColor();
        this.e = str;
        Paint paint2 = new Paint();
        this.f10952d = paint2;
        paint2.setColor(color);
        this.f10952d.setTextAlign(Paint.Align.CENTER);
        this.f10952d.setAntiAlias(true);
    }

    private static float a(float f) {
        return ((double) f) < 0.5d ? (f * 2.0f * 29.9f) + 0.1f : 30.0f - (((f - 0.5f) * 2.0f) * 29.9f);
    }

    private static float a(Paint paint, float f) {
        return Math.max(Math.min(paint.getStrokeWidth(), 100.0f), 10.0f) * f;
    }

    private void setPaint(Paint paint) {
        Paint paint2 = new Paint(paint);
        this.f10950b = paint2;
        paint2.setStrokeCap(Paint.Cap.ROUND);
        this.f10950b.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f10950b.setStrokeWidth(a(paint, 1.0f));
        Paint paint3 = new Paint(paint);
        this.f10951c = paint3;
        paint3.setStrokeCap(Paint.Cap.ROUND);
        this.f10951c.setStyle(Paint.Style.FILL);
        this.f10951c.setStrokeWidth(a(paint, 0.66f));
    }

    public final void a(Canvas canvas, RectF rectF, float f) {
        String str = this.e;
        if (str != null && str.length() > 0) {
            this.f10952d.setTextSize(100.0f * f);
            this.f10952d.setAlpha(255);
            if (f > 0.7f) {
                this.f10952d.setAlpha((int) (255.0f - (((f - 0.7f) / 0.3f) * 255.0f)));
            }
            canvas.drawText(this.e, rectF.left + (rectF.width() / 2.0f), (rectF.top + (rectF.height() / 2.0f)) - ((this.f10952d.descent() + this.f10952d.ascent()) / 2.0f), this.f10952d);
        }
    }

    public final void a(Canvas canvas, RectF rectF, float f, float f2, float f3) {
        float f4;
        boolean z = this.f10949a == EffectType.EFFECT_SPIRAL_OUT || this.f10949a == EffectType.EFFECT_SPIRAL_OUT_FILL;
        boolean z2 = false;
        if (this.f10949a != EffectType.EFFECT_SPIRAL_IN) {
            z2 = false;
            if (this.f10949a != EffectType.EFFECT_SPIRAL_EXPLODE) {
                z2 = true;
            }
        }
        float width = (rectF.width() / 2.0f) - 10.0f;
        float height = (rectF.height() / 2.0f) - 10.0f;
        float f5 = 360.0f;
        float f6 = this.g * 360.0f;
        float f7 = this.f10949a == EffectType.EFFECT_SPIRAL_OUT_FILL ? f6 + 360.0f : f6;
        float f8 = f7 * f;
        float f9 = z2 ? f8 : -f8;
        float f10 = a(f);
        this.f.set(rectF);
        if (z) {
            f = 1.0f - f;
        }
        if (this.f10949a != EffectType.EFFECT_SPIRAL_OUT_FILL) {
            this.f.inset(width * f, height * f);
        } else if (f8 > f7 - 360.0f) {
            this.f10950b.setStyle(Paint.Style.STROKE);
            f5 = f8 % 360.0f;
            if (f5 <= BitmapDescriptorFactory.HUE_RED) {
            }
            f10 = f5;
            if (f5 > f3) {
                f10 = f3;
            }
            f4 = f2;
            canvas.drawArc(this.f, f4, f10, false, this.f10950b);
        } else {
            float f11 = 1.0f - (f6 / f7);
            if (f > f11) {
                float f12 = (f - f11) / (1.0f - f11);
                this.f.inset(width * f12, height * f12);
            }
        }
        f4 = (f2 + f9) % 360.0f;
        canvas.drawArc(this.f, f4, f10, false, this.f10950b);
    }

    public final void b(Canvas canvas, RectF rectF, float f) {
        int i;
        float f2;
        boolean z = Build.VERSION.SDK_INT <= 17;
        float width = rectF.width() * 0.1f;
        float width2 = rectF.width() * 0.01f;
        float width3 = rectF.width() * 0.1f;
        if (f > 0.5f) {
            float f3 = (f - 0.5f) * 2.0f;
            f2 = width - ((width - width2) * f3);
            i = 255 - ((int) (f3 * 255.0f));
        } else {
            f2 = width2 + (f * 2.0f * (width - width2));
            i = 255;
        }
        int alpha = this.f10950b.getAlpha();
        if (i < 255) {
            this.f10951c.setAlpha((int) (alpha * (i / 255.0f)));
        }
        float width4 = width3 + ((int) (((rectF.width() / 2.0f) - width3) * f));
        float f4 = width4 - f2;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        for (int i2 = 0; i2 < 9; i2++) {
            double d2 = (f5 * 3.141592653589793d) / 180.0d;
            float cos = (float) Math.cos(d2);
            float centerX = rectF.centerX();
            float sin = (float) Math.sin(d2);
            float centerY = rectF.centerY();
            float cos2 = (((float) Math.cos(d2)) * width4) + rectF.centerX();
            float sin2 = (((float) Math.sin(d2)) * width4) + rectF.centerY();
            if (!z) {
                canvas.drawLine((cos * f4) + centerX, (sin * f4) + centerY, cos2, sin2, this.f10951c);
            } else {
                canvas.drawCircle(cos2, sin2, (rectF.width() * 0.01f) + (((rectF.width() * 0.1f) - (rectF.width() * 0.01f)) * f), this.f10951c);
            }
            f5 += 40.0f;
        }
        if (i < 255) {
            this.f10950b.setAlpha(alpha);
        }
    }

    public void setRotationCount(int i) {
        this.g = i;
    }
}
