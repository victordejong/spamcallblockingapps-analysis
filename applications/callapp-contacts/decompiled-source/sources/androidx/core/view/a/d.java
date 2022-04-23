package androidx.core.view.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final Object f1969a;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/d$a.class */
    static class a extends AccessibilityNodeProvider {

        /* renamed from: a  reason: collision with root package name */
        final d f1970a;

        a(d dVar) {
            this.f1970a = dVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            c a2 = this.f1970a.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.f1959a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f1970a.a(i, i2, bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/d$b.class */
    static final class b extends a {
        b(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            c b2 = this.f1970a.b(i);
            if (b2 == null) {
                return null;
            }
            return b2.f1959a;
        }
    }

    public d() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1969a = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f1969a = new a(this);
        } else {
            this.f1969a = null;
        }
    }

    public d(Object obj) {
        this.f1969a = obj;
    }

    public c a(int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public c b(int i) {
        return null;
    }
}
