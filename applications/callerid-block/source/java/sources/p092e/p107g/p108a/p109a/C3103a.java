package p092e.p107g.p108a.p109a;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: e.g.a.a.a */
/* loaded from: classes2-dex2jar.jar:e/g/a/a/a.class */
public class C3103a extends Drawable {

    /* renamed from: a */
    private static C3103a f12737a;

    /* renamed from: a */
    public static C3103a m216a() {
        if (f12737a == null) {
            synchronized (C3103a.class) {
                try {
                    if (f12737a == null) {
                        f12737a = new C3103a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f12737a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
