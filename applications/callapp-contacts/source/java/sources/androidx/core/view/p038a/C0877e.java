package androidx.core.view.p038a;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
/* renamed from: androidx.core.view.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/e.class */
public final class C0877e {

    /* renamed from: a */
    private final AccessibilityRecord f3693a;

    @Deprecated
    public C0877e(Object obj) {
        this.f3693a = (AccessibilityRecord) obj;
    }

    /* renamed from: a */
    public static void m44233a(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    @Deprecated
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0877e)) {
            return false;
        }
        C0877e c0877e = (C0877e) obj;
        AccessibilityRecord accessibilityRecord = this.f3693a;
        return accessibilityRecord == null ? c0877e.f3693a == null : accessibilityRecord.equals(c0877e.f3693a);
    }

    @Deprecated
    public final int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f3693a;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }
}
