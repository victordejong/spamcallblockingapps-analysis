package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeProviderCompat.class */
public class AccessibilityNodeProviderCompat {

    /* renamed from: a */
    private final Object f3348a;

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16.class */
    static class AccessibilityNodeProviderApi16 extends AccessibilityNodeProvider {

        /* renamed from: a */
        final AccessibilityNodeProviderCompat f3349a;

        AccessibilityNodeProviderApi16(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.f3349a = accessibilityNodeProviderCompat;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            AccessibilityNodeInfoCompat a = this.f3349a.mo18755a(i);
            if (a == null) {
                return null;
            }
            return a.m19053F0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<AccessibilityNodeInfoCompat> b = this.f3349a.m18971b(str, i);
            if (b == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = b.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(b.get(i2).m19053F0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f3349a.mo18753e(i, i2, bundle);
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19.class */
    static class AccessibilityNodeProviderApi19 extends AccessibilityNodeProviderApi16 {
        AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            AccessibilityNodeInfoCompat c = this.f3349a.mo18754c(i);
            if (c == null) {
                return null;
            }
            return c.m19053F0();
        }
    }

    public AccessibilityNodeProviderCompat() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            this.f3348a = new AccessibilityNodeProviderApi19(this);
        } else if (i >= 16) {
            this.f3348a = new AccessibilityNodeProviderApi16(this);
        } else {
            this.f3348a = null;
        }
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.f3348a = obj;
    }

    @Nullable
    /* renamed from: a */
    public AccessibilityNodeInfoCompat mo18755a(int i) {
        return null;
    }

    @Nullable
    /* renamed from: b */
    public List<AccessibilityNodeInfoCompat> m18971b(String str, int i) {
        return null;
    }

    @Nullable
    /* renamed from: c */
    public AccessibilityNodeInfoCompat mo18754c(int i) {
        return null;
    }

    /* renamed from: d */
    public Object m18970d() {
        return this.f3348a;
    }

    /* renamed from: e */
    public boolean mo18753e(int i, int i2, Bundle bundle) {
        return false;
    }
}
