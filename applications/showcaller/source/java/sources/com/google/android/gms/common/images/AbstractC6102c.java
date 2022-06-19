package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.C6110c;
import com.google.android.gms.internal.base.C7286e;
/* renamed from: com.google.android.gms.common.images.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/c.class */
public abstract class AbstractC6102c {

    /* renamed from: a */
    protected int f19444a;

    /* renamed from: a */
    protected abstract void m17164a(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* renamed from: b */
    public final void m17163b(Context context, Bitmap bitmap, boolean z) {
        C6110c.m17137c(bitmap);
        m17164a(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }

    /* renamed from: c */
    public final void m17162c(Context context, C7286e c7286e, boolean z) {
        int i = this.f19444a;
        m17164a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }
}
