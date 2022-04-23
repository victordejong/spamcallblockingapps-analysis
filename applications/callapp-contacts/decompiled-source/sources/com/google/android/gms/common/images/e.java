package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.google.android.gms.common.internal.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/e.class */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    final c f22827a;

    /* renamed from: b  reason: collision with root package name */
    protected int f22828b;

    public e(Uri uri, int i) {
        this.f22828b = 0;
        this.f22827a = new c(uri);
        this.f22828b = i;
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context) {
        int i = this.f22828b;
        if (i != 0) {
            context.getResources().getDrawable(i);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, Bitmap bitmap) {
        c.a(bitmap);
        new BitmapDrawable(context.getResources(), bitmap);
        a();
    }
}
