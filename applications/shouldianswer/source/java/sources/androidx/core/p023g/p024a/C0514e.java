package androidx.core.p023g.p024a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.g.a.e */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/e.class */
public class C0514e {

    /* renamed from: a */
    private final Object f1855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/e$a.class */
    public static class C0515a extends AccessibilityNodeProvider {

        /* renamed from: a */
        final C0514e f1856a;

        C0515a(C0514e c0514e) {
            this.f1856a = c0514e;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C0510d mo5953a = this.f1856a.mo5953a(i);
            if (mo5953a == null) {
                return null;
            }
            return mo5953a.m6456a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<C0510d> m6374a = this.f1856a.m6374a(str, i);
            if (m6374a == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = m6374a.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(m6374a.get(i2).m6456a());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f1856a.mo5952a(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.a.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/a/e$b.class */
    public static class C0516b extends C0515a {
        C0516b(C0514e c0514e) {
            super(c0514e);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C0510d mo5951b = this.f1856a.mo5951b(i);
            if (mo5951b == null) {
                return null;
            }
            return mo5951b.m6456a();
        }
    }

    public C0514e() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1855a = new C0516b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f1855a = new C0515a(this);
        } else {
            this.f1855a = null;
        }
    }

    public C0514e(Object obj) {
        this.f1855a = obj;
    }

    /* renamed from: a */
    public C0510d mo5953a(int i) {
        return null;
    }

    /* renamed from: a */
    public Object m6375a() {
        return this.f1855a;
    }

    /* renamed from: a */
    public List<C0510d> m6374a(String str, int i) {
        return null;
    }

    /* renamed from: a */
    public boolean mo5952a(int i, int i2, Bundle bundle) {
        return false;
    }

    /* renamed from: b */
    public C0510d mo5951b(int i) {
        return null;
    }
}
