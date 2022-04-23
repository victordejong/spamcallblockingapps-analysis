package com.callapp.contacts.activity.contact.details;

import android.graphics.Color;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ColorTransitionCalculator.class */
public class ColorTransitionCalculator {

    /* renamed from: a  reason: collision with root package name */
    private final int f12020a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12021b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12022c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12023d;
    private final boolean e;
    private final float[] f;
    private final float[] g;
    private final float[] h;
    private final float[] i;

    public ColorTransitionCalculator(int i, int i2) {
        this.f12020a = i;
        this.f12021b = i2;
        int i3 = ((i & (-16777216)) >> 24) & 255;
        this.f12022c = i3;
        int i4 = (((-16777216) & i2) >> 24) & 255;
        this.f12023d = i4;
        this.e = i3 != i4;
        this.g = new float[3];
        this.h = new float[3];
        this.f = b(a(i));
        this.i = b(a(i2));
    }

    private float[] a(int i) {
        float[] fArr = this.h;
        Color.colorToHSV(i, fArr);
        return fArr;
    }

    private float[] a(float[] fArr) {
        float[] fArr2 = this.h;
        fArr2[1] = (float) Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1]));
        fArr2[0] = fArr2[1] < 0.001f ? BitmapDescriptorFactory.HUE_RED : (float) ((Math.atan2(fArr[1] / fArr2[1], fArr[0] / fArr2[1]) * 180.0d) / 3.141592653589793d);
        if (fArr2[0] < BitmapDescriptorFactory.HUE_RED) {
            fArr2[0] = fArr2[0] + 360.0f;
        }
        fArr2[2] = fArr[2];
        return fArr2;
    }

    private float[] a(float[] fArr, float[] fArr2, float f) {
        float[] fArr3 = this.g;
        fArr3[0] = ((fArr2[0] - fArr[0]) * f) + fArr[0];
        fArr3[1] = ((fArr2[1] - fArr[1]) * f) + fArr[1];
        fArr3[2] = ((fArr2[2] - fArr[2]) * f) + fArr[2];
        return fArr3;
    }

    private static float[] b(float[] fArr) {
        double d2 = (fArr[0] * 3.141592653589793d) / 180.0d;
        return new float[]{((float) Math.cos(d2)) * fArr[1], ((float) Math.sin(d2)) * fArr[1], fArr[2]};
    }

    public final int a(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return this.f12020a;
        }
        if (f >= 1.0f) {
            return this.f12021b;
        }
        int HSVToColor = Color.HSVToColor(a(a(this.f, this.i, f)));
        int i = HSVToColor;
        if (this.e) {
            i = (HSVToColor & 16777215) | (CallappAnimationUtils.a(this.f12022c, this.f12023d, f) << 24);
        }
        return i;
    }
}
