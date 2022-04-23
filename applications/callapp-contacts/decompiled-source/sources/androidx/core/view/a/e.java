package androidx.core.view.a;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityRecord f1971a;

    @Deprecated
    public e(Object obj) {
        this.f1971a = (AccessibilityRecord) obj;
    }

    public static void a(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    @Deprecated
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        AccessibilityRecord accessibilityRecord = this.f1971a;
        return accessibilityRecord == null ? eVar.f1971a == null : accessibilityRecord.equals(eVar.f1971a);
    }

    @Deprecated
    public final int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f1971a;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }
}
