package androidx.core.p026h.p027a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.h.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a/d.class */
public class C0557d {

    /* renamed from: a */
    private final Object f2064a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.h.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a/d$a.class */
    public static class C0558a extends AccessibilityNodeProvider {

        /* renamed from: a */
        final C0557d f2065a;

        C0558a(C0557d c0557d) {
            this.f2065a = c0557d;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C0553c mo20085a = this.f2065a.mo20085a(i);
            return mo20085a == null ? null : mo20085a.m20526a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            ArrayList arrayList;
            List<C0553c> m20448a = this.f2065a.m20448a(str, i);
            if (m20448a == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                int size = m20448a.size();
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(m20448a.get(i2).m20526a());
                }
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f2065a.mo20084a(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.h.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/a/d$b.class */
    public static class C0559b extends C0558a {
        C0559b(C0557d c0557d) {
            super(c0557d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C0553c mo20083b = this.f2065a.mo20083b(i);
            return mo20083b == null ? null : mo20083b.m20526a();
        }
    }

    public C0557d() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2064a = new C0559b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f2064a = new C0558a(this);
        } else {
            this.f2064a = null;
        }
    }

    public C0557d(Object obj) {
        this.f2064a = obj;
    }

    /* renamed from: a */
    public C0553c mo20085a(int i) {
        return null;
    }

    /* renamed from: a */
    public Object m20449a() {
        return this.f2064a;
    }

    /* renamed from: a */
    public List<C0553c> m20448a(String str, int i) {
        return null;
    }

    /* renamed from: a */
    public boolean mo20084a(int i, int i2, Bundle bundle) {
        return false;
    }

    /* renamed from: b */
    public C0553c mo20083b(int i) {
        return null;
    }
}
