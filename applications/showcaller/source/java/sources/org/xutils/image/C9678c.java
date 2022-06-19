package org.xutils.image;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
/* renamed from: org.xutils.image.c */
/* loaded from: classes2-dex2jar.jar:org/xutils/image/c.class */
final class C9678c extends BitmapDrawable implements AbstractC9679d {

    /* renamed from: d */
    private C9677b f40882d;

    public C9678c(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    @Override // org.xutils.image.AbstractC9679d
    public C9677b getMemCacheKey() {
        return this.f40882d;
    }

    @Override // org.xutils.image.AbstractC9679d
    public void setMemCacheKey(C9677b c9677b) {
        this.f40882d = c9677b;
    }
}
