package android.support.v4.view;

import android.graphics.Rect;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/w.class */
final class w {

    /* renamed from: a  reason: collision with root package name */
    private static ThreadLocal<Rect> f244a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect a() {
        if (f244a == null) {
            f244a = new ThreadLocal<>();
        }
        Rect rect = f244a.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f244a.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }
}
