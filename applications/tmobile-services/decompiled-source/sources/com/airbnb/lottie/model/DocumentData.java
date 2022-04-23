package com.airbnb.lottie.model;

import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/DocumentData.class */
public class DocumentData {

    /* renamed from: a */
    public final String f6059a;

    /* renamed from: b */
    public final String f6060b;

    /* renamed from: c */
    public final float f6061c;

    /* renamed from: d */
    public final Justification f6062d;

    /* renamed from: e */
    public final int f6063e;

    /* renamed from: f */
    public final float f6064f;

    /* renamed from: g */
    public final float f6065g;
    @ColorInt

    /* renamed from: h */
    public final int f6066h;
    @ColorInt

    /* renamed from: i */
    public final int f6067i;

    /* renamed from: j */
    public final float f6068j;

    /* renamed from: k */
    public final boolean f6069k;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/DocumentData$Justification.class */
    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, float f, Justification justification, int i, float f2, float f3, @ColorInt int i2, @ColorInt int i3, float f4, boolean z) {
        this.f6059a = str;
        this.f6060b = str2;
        this.f6061c = f;
        this.f6062d = justification;
        this.f6063e = i;
        this.f6064f = f2;
        this.f6065g = f3;
        this.f6066h = i2;
        this.f6067i = i3;
        this.f6068j = f4;
        this.f6069k = z;
    }

    public int hashCode() {
        int hashCode = (int) ((((this.f6059a.hashCode() * 31) + this.f6060b.hashCode()) * 31) + this.f6061c);
        int ordinal = this.f6062d.ordinal();
        int i = this.f6063e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f6064f);
        return (((((((hashCode * 31) + ordinal) * 31) + i) * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f6066h;
    }
}
