package androidx.core.p026h.p027a;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
/* renamed from: androidx.core.h.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a/e.class */
public class C0560e {

    /* renamed from: a */
    private final AccessibilityRecord f2066a;

    /* renamed from: a */
    public static void m20447a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* renamed from: a */
    public static void m20446a(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    /* renamed from: b */
    public static void m20445b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    @Deprecated
    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null) {
                z = false;
            } else if (getClass() != obj.getClass()) {
                z = false;
            } else {
                C0560e c0560e = (C0560e) obj;
                if (this.f2066a == null) {
                    if (c0560e.f2066a != null) {
                        z = false;
                    }
                } else if (!this.f2066a.equals(c0560e.f2066a)) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Deprecated
    public int hashCode() {
        return this.f2066a == null ? 0 : this.f2066a.hashCode();
    }
}
