package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Color;
import android.opengl.GLES20;
import com.linkedin.android.litr.p461c.AbstractC16622a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter.class */
public class SolidBackgroundColorFilter implements AbstractC16622a {

    /* renamed from: a */
    private final float f28504a;

    /* renamed from: b */
    private final float f28505b;

    /* renamed from: c */
    private final float f28506c;

    public SolidBackgroundColorFilter(float f, float f2, float f3) {
        this.f28504a = f;
        this.f28505b = f2;
        this.f28506c = f3;
    }

    public SolidBackgroundColorFilter(int i) {
        this.f28504a = Color.red(i) / 255.0f;
        this.f28505b = Color.green(i) / 255.0f;
        this.f28506c = Color.blue(i) / 255.0f;
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6874a() {
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6872a(long j) {
        GLES20.glClearColor(this.f28504a, this.f28505b, this.f28506c, 1.0f);
        GLES20.glClear(16640);
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6871a(float[] fArr, int i) {
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: b */
    public final void mo6870b() {
    }
}
