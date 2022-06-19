package p020b.p041h.p050l.p051f0;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
/* renamed from: b.h.l.f0.e */
/* loaded from: classes-dex2jar.jar:b/h/l/f0/e.class */
public class C1643e {
    /* renamed from: a */
    public static void m29431a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* renamed from: b */
    public static void m29430b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    /* renamed from: c */
    public static void m29429c(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }
}
