package p081h.p093b.p099c.p103c.p106h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
/* renamed from: h.b.c.c.h.b */
/* loaded from: classes-dex2jar.jar:h/b/c/c/h/b.class */
public interface AbstractC5649b {

    /* renamed from: h.b.c.c.h.b$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/h/b$a.class */
    public static class C5650a {

        /* renamed from: a */
        public Drawable f14149a;

        /* renamed from: b */
        public Bitmap f14150b;

        /* renamed from: c */
        public int f14151c;

        /* renamed from: a */
        public Drawable m24879a(Resources resources) {
            if (resources != null) {
                Drawable drawable = this.f14149a;
                if (drawable != null) {
                    return drawable;
                }
                Bitmap bitmap = this.f14150b;
                if (bitmap == null) {
                    return null;
                }
                return new BitmapDrawable(resources, bitmap);
            }
            throw new IllegalArgumentException("resources can not be null!");
        }
    }

    /* renamed from: a */
    void mo24880a(String str);

    void forceLoad();
}
