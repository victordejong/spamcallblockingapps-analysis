package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Color;
import android.opengl.GLES20;
import com.linkedin.android.litr.c.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter.class */
public class SolidBackgroundColorFilter implements a {

    /* renamed from: a  reason: collision with root package name */
    private final float f16364a;

    /* renamed from: b  reason: collision with root package name */
    private final float f16365b;

    /* renamed from: c  reason: collision with root package name */
    private final float f16366c;

    public SolidBackgroundColorFilter(float f, float f2, float f3) {
        this.f16364a = f;
        this.f16365b = f2;
        this.f16366c = f3;
    }

    public SolidBackgroundColorFilter(int i) {
        this.f16364a = Color.red(i) / 255.0f;
        this.f16365b = Color.green(i) / 255.0f;
        this.f16366c = Color.blue(i) / 255.0f;
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a() {
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(long j) {
        GLES20.glClearColor(this.f16364a, this.f16365b, this.f16366c, 1.0f);
        GLES20.glClear(16640);
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(float[] fArr, int i) {
    }

    @Override // com.linkedin.android.litr.c.a
    public final void b() {
    }
}
