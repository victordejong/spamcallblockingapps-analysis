package com.bytedance.sdk.openadsdk.core.p156g;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.core.g.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/d.class */
public class C4574d {

    /* renamed from: a */
    private static final String f16672a = "d";

    /* renamed from: e */
    private static C4574d f16673e;

    /* renamed from: f */
    private static final Map<String, Integer> f16674f = new HashMap();

    /* renamed from: b */
    private final Set<String> f16675b = new HashSet(1);

    /* renamed from: c */
    private final List<WeakReference<AbstractC4575e>> f16676c = new ArrayList(1);

    /* renamed from: d */
    private final List<AbstractC4575e> f16677d = new ArrayList(1);

    private C4574d() {
        m34974b();
    }

    /* renamed from: a */
    public static C4574d m34981a() {
        if (f16673e == null) {
            f16673e = new C4574d();
        }
        return f16673e;
    }

    /* renamed from: a */
    private void m34977a(AbstractC4575e abstractC4575e) {
        synchronized (this) {
            Iterator<WeakReference<AbstractC4575e>> it2 = this.f16676c.iterator();
            while (it2.hasNext()) {
                WeakReference<AbstractC4575e> next = it2.next();
                if (next.get() == abstractC4575e || next.get() == null) {
                    it2.remove();
                }
            }
            Iterator<AbstractC4575e> it3 = this.f16677d.iterator();
            while (it3.hasNext()) {
                if (it3.next() == abstractC4575e) {
                    it3.remove();
                }
            }
        }
    }

    /* renamed from: a */
    private void m34976a(String[] strArr, AbstractC4575e abstractC4575e) {
        synchronized (this) {
            if (abstractC4575e == null) {
                return;
            }
            abstractC4575e.m34966a(strArr);
            this.f16677d.add(abstractC4575e);
            this.f16676c.add(new WeakReference<>(abstractC4575e));
        }
    }

    /* renamed from: a */
    private void m34975a(String[] strArr, int[] iArr, String[] strArr2) {
        try {
            int length = strArr.length;
            int i = length;
            if (iArr.length < length) {
                i = iArr.length;
            }
            Iterator<WeakReference<AbstractC4575e>> it2 = this.f16676c.iterator();
            while (it2.hasNext()) {
                AbstractC4575e abstractC4575e = it2.next().get();
                for (int i2 = 0; i2 < i; i2++) {
                    if (abstractC4575e != null && !abstractC4575e.m34968a(strArr[i2], iArr[i2])) {
                    }
                    it2.remove();
                }
            }
            Iterator<AbstractC4575e> it3 = this.f16677d.iterator();
            while (it3.hasNext()) {
                it3.next();
                it3.remove();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m34974b() {
        synchronized (this) {
            if (Build.VERSION.SDK_INT > 28) {
                m34972c();
                return;
            }
            for (Field field : Manifest.permission.class.getFields()) {
                String str = null;
                try {
                    str = (String) field.get("");
                } catch (IllegalAccessException e) {
                    Log.e(f16672a, "Could not access field", e);
                }
                this.f16675b.add(str);
            }
        }
    }

    /* renamed from: b */
    private void m34973b(Activity activity, String[] strArr, AbstractC4575e abstractC4575e) {
        for (String str : strArr) {
            if (abstractC4575e != null) {
                try {
                    if (!this.f16675b.contains(str) ? abstractC4575e.m34967a(str, EnumC4573c.NOT_FOUND) : C4572b.m34982a(activity, str) != 0 ? abstractC4575e.m34967a(str, EnumC4573c.DENIED) : abstractC4575e.m34967a(str, EnumC4573c.GRANTED)) {
                        break;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        m34977a(abstractC4575e);
    }

    /* renamed from: c */
    private List<String> m34971c(Activity activity, String[] strArr, AbstractC4575e abstractC4575e) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (!this.f16675b.contains(str)) {
                if (abstractC4575e != null) {
                    abstractC4575e.m34967a(str, EnumC4573c.NOT_FOUND);
                }
            } else if (!m34978a(activity, str)) {
                arrayList.add(str);
            } else if (abstractC4575e != null) {
                abstractC4575e.m34967a(str, EnumC4573c.GRANTED);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private void m34972c() {
        PackageInfo packageInfo;
        String[] strArr;
        Context m34815a = C4600n.m34815a();
        if (m34815a == null) {
            return;
        }
        try {
            PackageManager packageManager = m34815a.getPackageManager();
            String packageName = m34815a.getPackageName();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(packageName, 4096)) != null && (strArr = packageInfo.requestedPermissions) != null && strArr.length != 0) {
                for (int i = 0; i < strArr.length; i++) {
                    if (!TextUtils.isEmpty(strArr[i])) {
                        this.f16675b.add(strArr[i]);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m34980a(Activity activity, String[] strArr, AbstractC4575e abstractC4575e) {
        synchronized (this) {
            if (activity == null) {
                return;
            }
            try {
                m34976a(strArr, abstractC4575e);
                if (Build.VERSION.SDK_INT < 23) {
                    m34973b(activity, strArr, abstractC4575e);
                    return;
                }
                List<String> m34971c = m34971c(activity, strArr, abstractC4575e);
                if (m34971c.isEmpty()) {
                    m34977a(abstractC4575e);
                } else {
                    C4572b.m34983a(activity, (String[]) m34971c.toArray(new String[m34971c.size()]), 1);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public void m34979a(Activity activity, String[] strArr, int[] iArr) {
        synchronized (this) {
            try {
                new ArrayList(3);
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    String str = strArr[i];
                    if ((iArr[i] == -1 || (C5487y.m32050e() && !C4571a.m34986a(activity, str))) && iArr[i] != -1) {
                        iArr[i] = -1;
                    }
                }
                m34975a(strArr, iArr, (String[]) null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public boolean m34978a(Context context, String str) {
        synchronized (this) {
            if (context == null) {
                return false;
            }
            return C5487y.m32050e() ? C4571a.m34986a(context, str) && (C4572b.m34982a(context, str) == 0 || !this.f16675b.contains(str)) : C4572b.m34982a(context, str) == 0 || !this.f16675b.contains(str);
        }
    }
}
