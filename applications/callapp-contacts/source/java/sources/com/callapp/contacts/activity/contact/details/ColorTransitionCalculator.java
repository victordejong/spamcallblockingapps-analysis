package com.callapp.contacts.activity.contact.details;

import android.graphics.Color;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ColorTransitionCalculator.class */
public class ColorTransitionCalculator {

    /* renamed from: a */
    private final int f21734a;

    /* renamed from: b */
    private final int f21735b;

    /* renamed from: c */
    private final int f21736c;

    /* renamed from: d */
    private final int f21737d;

    /* renamed from: e */
    private final boolean f21738e;

    /* renamed from: f */
    private final float[] f21739f;

    /* renamed from: g */
    private final float[] f21740g;

    /* renamed from: h */
    private final float[] f21741h;

    /* renamed from: i */
    private final float[] f21742i;

    public ColorTransitionCalculator(int i, int i2) {
        this.f21734a = i;
        this.f21735b = i2;
        int i3 = ((i & (-16777216)) >> 24) & 255;
        this.f21736c = i3;
        int i4 = (((-16777216) & i2) >> 24) & 255;
        this.f21737d = i4;
        this.f21738e = i3 != i4;
        this.f21740g = new float[3];
        this.f21741h = new float[3];
        this.f21739f = m30942b(m30945a(i));
        this.f21742i = m30942b(m30945a(i2));
    }

    /* renamed from: a */
    private float[] m30945a(int i) {
        float[] fArr = this.f21741h;
        Color.colorToHSV(i, fArr);
        return fArr;
    }

    /* renamed from: a */
    private float[] m30944a(float[] fArr) {
        float[] fArr2 = this.f21741h;
        fArr2[1] = (float) Math.sqrt((fArr[0] * fArr[0]) + (fArr[1] * fArr[1]));
        fArr2[0] = fArr2[1] < 0.001f ? 0.0f : (float) ((Math.atan2(fArr[1] / fArr2[1], fArr[0] / fArr2[1]) * 180.0d) / 3.141592653589793d);
        if (fArr2[0] < BitmapDescriptorFactory.HUE_RED) {
            fArr2[0] = fArr2[0] + 360.0f;
        }
        fArr2[2] = fArr[2];
        return fArr2;
    }

    /* renamed from: a */
    private float[] m30943a(float[] fArr, float[] fArr2, float f) {
        float[] fArr3 = this.f21740g;
        fArr3[0] = ((fArr2[0] - fArr[0]) * f) + fArr[0];
        fArr3[1] = ((fArr2[1] - fArr[1]) * f) + fArr[1];
        fArr3[2] = ((fArr2[2] - fArr[2]) * f) + fArr[2];
        return fArr3;
    }

    /* renamed from: b */
    private static float[] m30942b(float[] fArr) {
        double d = (fArr[0] * 3.141592653589793d) / 180.0d;
        return new float[]{((float) Math.cos(d)) * fArr[1], ((float) Math.sin(d)) * fArr[1], fArr[2]};
    }

    /* renamed from: a */
    public final int m30946a(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return this.f21734a;
        }
        if (f >= 1.0f) {
            return this.f21735b;
        }
        int HSVToColor = Color.HSVToColor(m30944a(m30943a(this.f21739f, this.f21742i, f)));
        int i = HSVToColor;
        if (this.f21738e) {
            i = (HSVToColor & 16777215) | (CallappAnimationUtils.m27192a(this.f21736c, this.f21737d, f) << 24);
        }
        return i;
    }
}
