package androidx.core.view.p038a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* renamed from: androidx.core.view.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/d.class */
public class C0874d {

    /* renamed from: a */
    public final Object f3691a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/d$a.class */
    public static class C0875a extends AccessibilityNodeProvider {

        /* renamed from: a */
        final C0874d f3692a;

        C0875a(C0874d c0874d) {
            this.f3692a = c0874d;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C0869c mo43930a = this.f3692a.mo43930a(i);
            if (mo43930a == null) {
                return null;
            }
            return mo43930a.f3644a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f3692a.mo43929a(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/a/d$b.class */
    public static final class C0876b extends C0875a {
        C0876b(C0874d c0874d) {
            super(c0874d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            C0869c mo43928b = this.f3692a.mo43928b(i);
            if (mo43928b == null) {
                return null;
            }
            return mo43928b.f3644a;
        }
    }

    public C0874d() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3691a = new C0876b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f3691a = new C0875a(this);
        } else {
            this.f3691a = null;
        }
    }

    public C0874d(Object obj) {
        this.f3691a = obj;
    }

    /* renamed from: a */
    public C0869c mo43930a(int i) {
        return null;
    }

    /* renamed from: a */
    public boolean mo43929a(int i, int i2, Bundle bundle) {
        return false;
    }

    /* renamed from: b */
    public C0869c mo43928b(int i) {
        return null;
    }
}
