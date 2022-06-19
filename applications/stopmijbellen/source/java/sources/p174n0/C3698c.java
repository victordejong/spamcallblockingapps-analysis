package p174n0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;
/* renamed from: n0.c */
/* loaded from: classes-dex2jar.jar:n0/c.class */
public class C3698c {

    /* renamed from: a */
    public final Object f12089a;

    /* renamed from: n0.c$a */
    /* loaded from: classes-dex2jar.jar:n0/c$a.class */
    public static class C3699a extends AccessibilityNodeProvider {

        /* renamed from: a */
        public final C3698c f12090a;

        public C3699a(C3698c c3698c) {
            this.f12090a = c3698c;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C3694b mo1171a = this.f12090a.mo1171a(i);
            if (mo1171a == null) {
                return null;
            }
            return mo1171a.f12070a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            Objects.requireNonNull(this.f12090a);
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f12090a.mo1169c(i, i2, bundle);
        }
    }

    /* renamed from: n0.c$b */
    /* loaded from: classes-dex2jar.jar:n0/c$b.class */
    public static class C3700b extends C3699a {
        public C3700b(C3698c c3698c) {
            super(c3698c);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C3694b mo1170b = this.f12090a.mo1170b(i);
            if (mo1170b == null) {
                return null;
            }
            return mo1170b.f12070a;
        }
    }

    /* renamed from: n0.c$c */
    /* loaded from: classes-dex2jar.jar:n0/c$c.class */
    public static class C3701c extends C3700b {
        public C3701c(C3698c c3698c) {
            super(c3698c);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            Objects.requireNonNull(this.f12090a);
        }
    }

    public C3698c() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f12089a = new C3701c(this);
        } else {
            this.f12089a = new C3700b(this);
        }
    }

    public C3698c(Object obj) {
        this.f12089a = obj;
    }

    /* renamed from: a */
    public C3694b mo1171a(int i) {
        return null;
    }

    /* renamed from: b */
    public C3694b mo1170b(int i) {
        return null;
    }

    /* renamed from: c */
    public boolean mo1169c(int i, int i2, Bundle bundle) {
        return false;
    }
}
