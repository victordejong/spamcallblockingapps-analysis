package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.google.android.gms.common.internal.C12024c;
/* renamed from: com.google.android.gms.common.images.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/e.class */
public abstract class AbstractC11967e {

    /* renamed from: a */
    final C11965c f39472a;

    /* renamed from: b */
    protected int f39473b;

    public AbstractC11967e(Uri uri, int i) {
        this.f39473b = 0;
        this.f39472a = new C11965c(uri);
        this.f39473b = i;
    }

    /* renamed from: a */
    protected abstract void mo19232a();

    /* renamed from: a */
    public final void m19231a(Context context) {
        int i = this.f39473b;
        if (i != 0) {
            context.getResources().getDrawable(i);
        }
        mo19232a();
    }

    /* renamed from: a */
    public final void m19230a(Context context, Bitmap bitmap) {
        C12024c.m19191a(bitmap);
        new BitmapDrawable(context.getResources(), bitmap);
        mo19232a();
    }
}
