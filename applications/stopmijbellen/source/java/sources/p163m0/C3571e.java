package p163m0;

import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p163m0.C3589v;
/* renamed from: m0.e */
/* loaded from: classes-dex2jar.jar:m0/e.class */
public class C3571e {

    /* renamed from: a */
    public static boolean f11764a = false;

    /* renamed from: b */
    public static Method f11765b;

    /* renamed from: c */
    public static boolean f11766c = false;

    /* renamed from: d */
    public static Field f11767d;

    /* renamed from: m0.e$a */
    /* loaded from: classes-dex2jar.jar:m0/e$a.class */
    public interface AbstractC3572a {
        /* renamed from: d */
        boolean mo2141d(KeyEvent keyEvent);
    }

    /* renamed from: a */
    public static boolean m2143a(View view, KeyEvent keyEvent) {
        boolean z;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = C3589v.C3608r.f11796d;
            C3589v.C3608r c3608r = (C3589v.C3608r) view.getTag(2131297099);
            C3589v.C3608r c3608r2 = c3608r;
            if (c3608r == null) {
                c3608r2 = new C3589v.C3608r();
                view.setTag(2131297099, c3608r2);
            }
            WeakReference<KeyEvent> weakReference = c3608r2.f11799c;
            if (weakReference == null || weakReference.get() != keyEvent) {
                c3608r2.f11799c = new WeakReference<>(keyEvent);
                if (c3608r2.f11798b == null) {
                    c3608r2.f11798b = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = c3608r2.f11798b;
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
                        if (C3589v.C3596g.m2059b(view2)) {
                            c3608r2.m1986b(view2, keyEvent);
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

    /* JADX WARN: Removed duplicated region for block: B:60:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0159  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2142b(p163m0.C3571e.AbstractC3572a r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p163m0.C3571e.m2142b(m0.e$a, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
