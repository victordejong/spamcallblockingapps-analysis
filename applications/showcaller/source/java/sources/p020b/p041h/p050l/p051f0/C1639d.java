package p020b.p041h.p050l.p051f0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;
/* renamed from: b.h.l.f0.d */
/* loaded from: classes-dex2jar.jar:b/h/l/f0/d.class */
public class C1639d {

    /* renamed from: a */
    private final Object f6315a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.f0.d$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/d$a.class */
    public static class C1640a extends AccessibilityNodeProvider {

        /* renamed from: a */
        final C1639d f6316a;

        C1640a(C1639d c1639d) {
            this.f6316a = c1639d;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C1634c mo29159b = this.f6316a.mo29159b(i);
            if (mo29159b == null) {
                return null;
            }
            return mo29159b.m29515G0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<C1634c> m29433c = this.f6316a.m29433c(str, i);
            if (m29433c == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = m29433c.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(m29433c.get(i2).m29515G0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f6316a.mo29157f(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.f0.d$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/d$b.class */
    public static class C1641b extends C1640a {
        C1641b(C1639d c1639d) {
            super(c1639d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C1634c mo29158d = this.f6316a.mo29158d(i);
            if (mo29158d == null) {
                return null;
            }
            return mo29158d.m29515G0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.f0.d$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/f0/d$c.class */
    public static class C1642c extends C1641b {
        C1642c(C1639d c1639d) {
            super(c1639d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f6316a.m29434a(i, C1634c.m29513H0(accessibilityNodeInfo), str, bundle);
        }
    }

    public C1639d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f6315a = new C1642c(this);
        } else if (i >= 19) {
            this.f6315a = new C1641b(this);
        } else if (i >= 16) {
            this.f6315a = new C1640a(this);
        } else {
            this.f6315a = null;
        }
    }

    public C1639d(Object obj) {
        this.f6315a = obj;
    }

    /* renamed from: a */
    public void m29434a(int i, C1634c c1634c, String str, Bundle bundle) {
    }

    /* renamed from: b */
    public C1634c mo29159b(int i) {
        return null;
    }

    /* renamed from: c */
    public List<C1634c> m29433c(String str, int i) {
        return null;
    }

    /* renamed from: d */
    public C1634c mo29158d(int i) {
        return null;
    }

    /* renamed from: e */
    public Object m29432e() {
        return this.f6315a;
    }

    /* renamed from: f */
    public boolean mo29157f(int i, int i2, Bundle bundle) {
        return false;
    }
}
