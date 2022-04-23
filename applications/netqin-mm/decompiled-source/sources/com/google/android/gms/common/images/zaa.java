package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
import p131c.p161d.p170b.p224d.p238d.p242c.C3292a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zaa.class */
public abstract class zaa {

    /* renamed from: a */
    public final C3292a f23362a;

    /* renamed from: b */
    public int f23363b;

    /* renamed from: c */
    public boolean f23364c;

    /* renamed from: a */
    public final void m17403a(Context context, Bitmap bitmap, boolean z) {
        Asserts.m17397a(bitmap);
        mo17400a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* renamed from: a */
    public final void m17402a(Context context, zak zakVar, boolean z) {
        int i = this.f23363b;
        mo17400a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    /* renamed from: a */
    public abstract void mo17400a(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* renamed from: a */
    public final boolean m17401a(boolean z, boolean z2) {
        return this.f23364c && !z2 && !z;
    }
}
