package p1727n3.p1807k.p1821i.p1822f0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;
/* renamed from: n3.k.i.f0.c */
/* loaded from: classes-dex2jar.jar:n3/k/i/f0/c.class */
public class C26588c {

    /* renamed from: a */
    public final Object f74483a;

    /* renamed from: n3.k.i.f0.c$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f0/c$a.class */
    public static class C26589a extends AccessibilityNodeProvider {

        /* renamed from: a */
        public final C26588c f74484a;

        public C26589a(C26588c c26588c) {
            this.f74484a = c26588c;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C26584b mo1491a = this.f74484a.mo1491a(i);
            if (mo1491a == null) {
                return null;
            }
            return mo1491a.f74463a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            Objects.requireNonNull(this.f74484a);
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f74484a.mo1489c(i, i2, bundle);
        }
    }

    /* renamed from: n3.k.i.f0.c$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/f0/c$b.class */
    public static class C26590b extends C26589a {
        public C26590b(C26588c c26588c) {
            super(c26588c);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C26584b mo1490b = this.f74484a.mo1490b(i);
            if (mo1490b == null) {
                return null;
            }
            return mo1490b.f74463a;
        }
    }

    public C26588c() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f74483a = new c(this);
        } else {
            this.f74483a = new C26590b(this);
        }
    }

    public C26588c(Object obj) {
        this.f74483a = obj;
    }

    /* renamed from: a */
    public C26584b mo1491a(int i) {
        return null;
    }

    /* renamed from: b */
    public C26584b mo1490b(int i) {
        return null;
    }

    /* renamed from: c */
    public boolean mo1489c(int i, int i2, Bundle bundle) {
        return false;
    }
}
