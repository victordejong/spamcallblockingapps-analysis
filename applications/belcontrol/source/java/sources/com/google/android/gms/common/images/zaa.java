package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/zaa.class */
public abstract class zaa {
    public final zac zaa;
    public int zab;
    private int zac = 0;
    private boolean zad = false;
    private boolean zae = true;
    private boolean zaf = false;
    private boolean zag = true;

    public zaa(Uri uri, int i) {
        this.zab = 0;
        this.zaa = new zac(uri);
        this.zab = i;
    }

    public final void zaa(Context context, Bitmap bitmap, boolean z) {
        Asserts.checkNotNull(bitmap);
        zaa(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    public final void zaa(Context context, zak zakVar) {
        if (this.zag) {
            zaa(null, false, true, false);
        }
    }

    public final void zaa(Context context, zak zakVar, boolean z) {
        int i = this.zab;
        zaa(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }

    public abstract void zaa(Drawable drawable, boolean z, boolean z2, boolean z3);

    public final boolean zaa(boolean z, boolean z2) {
        return this.zae && !z2 && !z;
    }
}
