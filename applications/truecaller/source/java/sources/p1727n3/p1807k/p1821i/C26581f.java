package p1727n3.p1807k.p1821i;

import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.C0122R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.k.i.f */
/* loaded from: classes-dex2jar.jar:n3/k/i/f.class */
public class C26581f {

    /* renamed from: a */
    public static boolean f74455a = false;

    /* renamed from: b */
    public static Method f74456b;

    /* renamed from: c */
    public static boolean f74457c = false;

    /* renamed from: d */
    public static Field f74458d;

    /* renamed from: n3.k.i.f$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f$a.class */
    public interface AbstractC26582a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    /* renamed from: a */
    public static boolean m1632a(View view, KeyEvent keyEvent) {
        boolean z;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = C26614s.C26618d.f74515d;
            int i = C0122R.C0124id.tag_unhandled_key_event_manager;
            C26614s.C26618d c26618d = (C26614s.C26618d) view.getTag(i);
            C26614s.C26618d c26618d2 = c26618d;
            if (c26618d == null) {
                c26618d2 = new C26614s.C26618d();
                view.setTag(i, c26618d2);
            }
            WeakReference<KeyEvent> weakReference = c26618d2.f74518c;
            if (weakReference == null || weakReference.get() != keyEvent) {
                c26618d2.f74518c = new WeakReference<>(keyEvent);
                if (c26618d2.f74517b == null) {
                    c26618d2.f74517b = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = c26618d2.f74517b;
                WeakReference<View> weakReference2 = null;
                if (keyEvent.getAction() == 1) {
                    int indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode());
                    weakReference2 = null;
                    if (indexOfKey >= 0) {
                        weakReference2 = sparseArray.valueAt(indexOfKey);
                        sparseArray.removeAt(indexOfKey);
                    }
                }
                WeakReference<View> weakReference3 = weakReference2;
                if (weakReference2 == null) {
                    weakReference3 = sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference3 != null) {
                    View view2 = weakReference3.get();
                    z = true;
                    if (view2 != null) {
                        z = true;
                        if (view2.isAttachedToWindow()) {
                            c26618d2.m1556b(view2, keyEvent);
                            z = true;
                        }
                    }
                    return z;
                }
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0151  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1631b(p1727n3.p1807k.p1821i.C26581f.AbstractC26582a r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1821i.C26581f.m1631b(n3.k.i.f$a, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
