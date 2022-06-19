package androidx.core.p023g.p024a;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
/* renamed from: androidx.core.g.a.f */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/f.class */
public class C0517f {

    /* renamed from: a */
    private final AccessibilityRecord f1857a;

    /* renamed from: a */
    public static void m6373a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* renamed from: a */
    public static void m6372a(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    /* renamed from: b */
    public static void m6371b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0517f c0517f = (C0517f) obj;
        AccessibilityRecord accessibilityRecord = this.f1857a;
        return accessibilityRecord == null ? c0517f.f1857a == null : accessibilityRecord.equals(c0517f.f1857a);
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f1857a;
        return accessibilityRecord == null ? 0 : accessibilityRecord.hashCode();
    }
}
