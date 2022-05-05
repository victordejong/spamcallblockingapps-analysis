package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityWindowInfoCompat.class */
public class AccessibilityWindowInfoCompat {

    /* renamed from: a */
    private Object f3352a;

    private AccessibilityWindowInfoCompat(Object obj) {
        this.f3352a = obj;
    }

    /* renamed from: i */
    private static String m18952i(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY" : "TYPE_SYSTEM" : "TYPE_INPUT_METHOD" : "TYPE_APPLICATION";
    }

    /* renamed from: j */
    static AccessibilityWindowInfoCompat m18951j(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    /* renamed from: a */
    public void m18960a(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((AccessibilityWindowInfo) this.f3352a).getBoundsInScreen(rect);
        }
    }

    /* renamed from: b */
    public int m18959b() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).getChildCount();
        }
        return 0;
    }

    /* renamed from: c */
    public int m18958c() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).getId();
        }
        return -1;
    }

    /* renamed from: d */
    public int m18957d() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).getLayer();
        }
        return -1;
    }

    /* renamed from: e */
    public AccessibilityWindowInfoCompat m18956e() {
        if (Build.VERSION.SDK_INT >= 21) {
            return m18951j(((AccessibilityWindowInfo) this.f3352a).getParent());
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
        Object obj2 = this.f3352a;
        return obj2 == null ? accessibilityWindowInfoCompat.f3352a == null : obj2.equals(accessibilityWindowInfoCompat.f3352a);
    }

    /* renamed from: f */
    public int m18955f() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).getType();
        }
        return -1;
    }

    /* renamed from: g */
    public boolean m18954g() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).isActive();
        }
        return true;
    }

    /* renamed from: h */
    public boolean m18953h() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((AccessibilityWindowInfo) this.f3352a).isFocused();
        }
        return true;
    }

    public int hashCode() {
        Object obj = this.f3352a;
        return obj == null ? 0 : obj.hashCode();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        m18960a(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=");
        sb.append(m18958c());
        sb.append(", type=");
        sb.append(m18952i(m18955f()));
        sb.append(", layer=");
        sb.append(m18957d());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(m18953h());
        sb.append(", active=");
        sb.append(m18954g());
        sb.append(", hasParent=");
        boolean z = true;
        sb.append(m18956e() != null);
        sb.append(", hasChildren=");
        if (m18959b() <= 0) {
            z = false;
        }
        sb.append(z);
        sb.append(']');
        return sb.toString();
    }
}
