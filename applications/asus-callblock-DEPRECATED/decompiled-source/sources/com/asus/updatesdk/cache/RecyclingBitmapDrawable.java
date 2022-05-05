package com.asus.updatesdk.cache;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/RecyclingBitmapDrawable.class */
public class RecyclingBitmapDrawable extends BitmapDrawable {

    /* renamed from: a  reason: collision with root package name */
    private int f3174a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f3175b = 0;
    private boolean c;

    public RecyclingBitmapDrawable(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    private void a() {
        synchronized (this) {
            if (this.f3174a <= 0 && this.f3175b <= 0 && this.c && b()) {
                getBitmap().recycle();
            }
        }
    }

    private boolean b() {
        boolean z;
        synchronized (this) {
            Bitmap bitmap = getBitmap();
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public void setIsCached(boolean z) {
        synchronized (this) {
            if (z) {
                this.f3174a++;
            } else {
                this.f3174a--;
            }
        }
        a();
    }

    public void setIsDisplayed(boolean z) {
        synchronized (this) {
            if (z) {
                this.f3175b++;
                this.c = true;
            } else {
                this.f3175b--;
            }
        }
        a();
    }
}
