package p012b.p042i.p046j;

import android.graphics.Bitmap;
import android.os.Build;
/* renamed from: b.i.j.a */
/* loaded from: classes-dex2jar.jar:b/i/j/a.class */
public final class C0890a {
    /* renamed from: a */
    public static int m35614a(Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
    }
}
