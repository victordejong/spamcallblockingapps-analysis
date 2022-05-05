package androidx.core.view.accessibility;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityRecordCompat.class */
public class AccessibilityRecordCompat {

    /* renamed from: a */
    private final AccessibilityRecord f3350a;

    @Deprecated
    public AccessibilityRecordCompat(Object obj) {
        this.f3350a = (AccessibilityRecord) obj;
    }

    /* renamed from: b */
    public static void m18968b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* renamed from: d */
    public static void m18966d(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    /* renamed from: h */
    public static void m18962h(@NonNull AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }

    @Deprecated
    /* renamed from: a */
    public void m18969a(int i) {
        m18968b(this.f3350a, i);
    }

    @Deprecated
    /* renamed from: c */
    public void m18967c(int i) {
        m18966d(this.f3350a, i);
    }

    @Deprecated
    /* renamed from: e */
    public void m18965e(int i) {
        this.f3350a.setScrollX(i);
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityRecordCompat)) {
            return false;
        }
        AccessibilityRecordCompat accessibilityRecordCompat = (AccessibilityRecordCompat) obj;
        AccessibilityRecord accessibilityRecord = this.f3350a;
        return accessibilityRecord == null ? accessibilityRecordCompat.f3350a == null : accessibilityRecord.equals(accessibilityRecordCompat.f3350a);
    }

    @Deprecated
    /* renamed from: f */
    public void m18964f(int i) {
        this.f3350a.setScrollY(i);
    }

    @Deprecated
    /* renamed from: g */
    public void m18963g(boolean z) {
        this.f3350a.setScrollable(z);
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f3350a;
        return accessibilityRecord == null ? 0 : accessibilityRecord.hashCode();
    }
}
