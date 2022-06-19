package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect.class */
public class DecoDrawEffect {

    /* renamed from: a */
    final EffectType f20024a;

    /* renamed from: b */
    private Paint f20025b;

    /* renamed from: c */
    private Paint f20026c;

    /* renamed from: d */
    private Paint f20027d;

    /* renamed from: e */
    private String f20028e;

    /* renamed from: f */
    private final RectF f20029f = new RectF();

    /* renamed from: g */
    private int f20030g = 6;

    /* renamed from: com.callapp.contacts.activity.analytics.graph.charts.DecoDrawEffect$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$1.class */
    static /* synthetic */ class C57591 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20031a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EffectType.values().length];
            f20031a = iArr;
            try {
                iArr[EffectType.EFFECT_SPIRAL_EXPLODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20031a[EffectType.EFFECT_EXPLODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20031a[EffectType.EFFECT_SPIRAL_IN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20031a[EffectType.EFFECT_SPIRAL_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20031a[EffectType.EFFECT_SPIRAL_OUT_FILL.ordinal()] = 5;
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
        this.f20024a = effectType;
        setPaint(paint);
    }

    public DecoDrawEffect(EffectType effectType, Paint paint, String str) {
        this.f20024a = effectType;
        setPaint(paint);
        int color = paint.getColor();
        this.f20028e = str;
        Paint paint2 = new Paint();
        this.f20027d = paint2;
        paint2.setColor(color);
        this.f20027d.setTextAlign(Paint.Align.CENTER);
        this.f20027d.setAntiAlias(true);
    }

    /* renamed from: a */
    private static float m31588a(float f) {
        return ((double) f) < 0.5d ? (f * 2.0f * 29.9f) + 0.1f : 30.0f - (((f - 0.5f) * 2.0f) * 29.9f);
    }

    /* renamed from: a */
    private static float m31585a(Paint paint, float f) {
        return Math.max(Math.min(paint.getStrokeWidth(), 100.0f), 10.0f) * f;
    }

    private void setPaint(Paint paint) {
        Paint paint2 = new Paint(paint);
        this.f20025b = paint2;
        paint2.setStrokeCap(Paint.Cap.ROUND);
        this.f20025b.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f20025b.setStrokeWidth(m31585a(paint, 1.0f));
        Paint paint3 = new Paint(paint);
        this.f20026c = paint3;
        paint3.setStrokeCap(Paint.Cap.ROUND);
        this.f20026c.setStyle(Paint.Style.FILL);
        this.f20026c.setStrokeWidth(m31585a(paint, 0.66f));
    }

    /* renamed from: a */
    public final void m31587a(Canvas canvas, RectF rectF, float f) {
        String str = this.f20028e;
        if (str == null || str.length() <= 0) {
            return;
        }
        this.f20027d.setTextSize(100.0f * f);
        this.f20027d.setAlpha(255);
        if (f > 0.7f) {
            this.f20027d.setAlpha((int) (255.0f - (((f - 0.7f) / 0.3f) * 255.0f)));
        }
        canvas.drawText(this.f20028e, rectF.left + (rectF.width() / 2.0f), (rectF.top + (rectF.height() / 2.0f)) - ((this.f20027d.descent() + this.f20027d.ascent()) / 2.0f), this.f20027d);
    }

    /* renamed from: a */
    public final void m31586a(Canvas canvas, RectF rectF, float f, float f2, float f3) {
        float f4;
        float f5;
        boolean z = this.f20024a == EffectType.EFFECT_SPIRAL_OUT || this.f20024a == EffectType.EFFECT_SPIRAL_OUT_FILL;
        boolean z2 = false;
        if (this.f20024a != EffectType.EFFECT_SPIRAL_IN) {
            z2 = false;
            if (this.f20024a != EffectType.EFFECT_SPIRAL_EXPLODE) {
                z2 = true;
            }
        }
        float width = (rectF.width() / 2.0f) - 10.0f;
        float height = (rectF.height() / 2.0f) - 10.0f;
        float f6 = this.f20030g * 360.0f;
        float f7 = this.f20024a == EffectType.EFFECT_SPIRAL_OUT_FILL ? f6 + 360.0f : f6;
        float f8 = f7 * f;
        float f9 = z2 ? f8 : -f8;
        float m31588a = m31588a(f);
        this.f20029f.set(rectF);
        if (z) {
            f = 1.0f - f;
        }
        if (this.f20024a != EffectType.EFFECT_SPIRAL_OUT_FILL) {
            this.f20029f.inset(width * f, height * f);
        } else if (f8 > f7 - 360.0f) {
            this.f20025b.setStyle(Paint.Style.STROKE);
            float f10 = f8 % 360.0f;
            if (f10 <= BitmapDescriptorFactory.HUE_RED) {
                f10 = 360.0f;
            }
            float f11 = f10;
            if (f10 > f3) {
                f11 = f3;
            }
            float f12 = f11;
            f5 = f2;
            f4 = f12;
            canvas.drawArc(this.f20029f, f5, f4, false, this.f20025b);
        } else {
            float f13 = 1.0f - (f6 / f7);
            if (f > f13) {
                float f14 = (f - f13) / (1.0f - f13);
                this.f20029f.inset(width * f14, height * f14);
            }
        }
        f5 = (f2 + f9) % 360.0f;
        f4 = m31588a;
        canvas.drawArc(this.f20029f, f5, f4, false, this.f20025b);
    }

    /* renamed from: b */
    public final void m31584b(Canvas canvas, RectF rectF, float f) {
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
        int alpha = this.f20025b.getAlpha();
        if (i < 255) {
            this.f20026c.setAlpha((int) (alpha * (i / 255.0f)));
        }
        float width4 = width3 + ((int) (((rectF.width() / 2.0f) - width3) * f));
        float f4 = width4 - f2;
        float f5 = 0.0f;
        for (int i2 = 0; i2 < 9; i2++) {
            double d = (f5 * 3.141592653589793d) / 180.0d;
            float cos = (float) Math.cos(d);
            float centerX = rectF.centerX();
            float sin = (float) Math.sin(d);
            float centerY = rectF.centerY();
            float cos2 = (((float) Math.cos(d)) * width4) + rectF.centerX();
            float sin2 = (((float) Math.sin(d)) * width4) + rectF.centerY();
            if (!z) {
                canvas.drawLine((cos * f4) + centerX, (sin * f4) + centerY, cos2, sin2, this.f20026c);
            } else {
                canvas.drawCircle(cos2, sin2, (rectF.width() * 0.01f) + (((rectF.width() * 0.1f) - (rectF.width() * 0.01f)) * f), this.f20026c);
            }
            f5 += 40.0f;
        }
        if (i < 255) {
            this.f20025b.setAlpha(alpha);
        }
    }

    public void setRotationCount(int i) {
        this.f20030g = i;
    }
}
