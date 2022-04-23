package com.bytedance.sdk.openadsdk.core.g;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.y;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8945a = "d";
    private static d e;
    private static final Map<String, Integer> f = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Set<String> f8946b = new HashSet(1);

    /* renamed from: c  reason: collision with root package name */
    private final List<WeakReference<e>> f8947c = new ArrayList(1);

    /* renamed from: d  reason: collision with root package name */
    private final List<e> f8948d = new ArrayList(1);

    private d() {
        b();
    }

    public static d a() {
        if (e == null) {
            e = new d();
        }
        return e;
    }

    private void a(e eVar) {
        synchronized (this) {
            Iterator<WeakReference<e>> it2 = this.f8947c.iterator();
            while (it2.hasNext()) {
                WeakReference<e> next = it2.next();
                if (next.get() == eVar || next.get() == null) {
                    it2.remove();
                }
            }
            Iterator<e> it3 = this.f8948d.iterator();
            while (it3.hasNext()) {
                if (it3.next() == eVar) {
                    it3.remove();
                }
            }
        }
    }

    private void a(String[] strArr, e eVar) {
        synchronized (this) {
            if (eVar != null) {
                eVar.a(strArr);
                this.f8948d.add(eVar);
                this.f8947c.add(new WeakReference<>(eVar));
            }
        }
    }

    private void a(String[] strArr, int[] iArr, String[] strArr2) {
        try {
            int length = strArr.length;
            int i = length;
            if (iArr.length < length) {
                i = iArr.length;
            }
            Iterator<WeakReference<e>> it2 = this.f8947c.iterator();
            while (it2.hasNext()) {
                e eVar = it2.next().get();
                for (int i2 = 0; i2 < i; i2++) {
                    if (eVar != null && !eVar.a(strArr[i2], iArr[i2])) {
                    }
                    it2.remove();
                }
            }
            Iterator<e> it3 = this.f8948d.iterator();
            while (it3.hasNext()) {
                it3.next();
                it3.remove();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b() {
        synchronized (this) {
            if (Build.VERSION.SDK_INT > 28) {
                c();
                return;
            }
            for (Field field : Manifest.permission.class.getFields()) {
                String str = null;
                try {
                    str = (String) field.get("");
                } catch (IllegalAccessException e2) {
                    Log.e(f8945a, "Could not access field", e2);
                }
                this.f8946b.add(str);
            }
        }
    }

    private void b(Activity activity, String[] strArr, e eVar) {
        for (String str : strArr) {
            if (eVar != null) {
                try {
                    if (!this.f8946b.contains(str) ? eVar.a(str, c.NOT_FOUND) : b.a(activity, str) != 0 ? eVar.a(str, c.DENIED) : eVar.a(str, c.GRANTED)) {
                        break;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        a(eVar);
    }

    private List<String> c(Activity activity, String[] strArr, e eVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (!this.f8946b.contains(str)) {
                if (eVar != null) {
                    eVar.a(str, c.NOT_FOUND);
                }
            } else if (!a(activity, str)) {
                arrayList.add(str);
            } else if (eVar != null) {
                eVar.a(str, c.GRANTED);
            }
        }
        return arrayList;
    }

    private void c() {
        PackageInfo packageInfo;
        String[] strArr;
        Context a2 = n.a();
        if (a2 != null) {
            try {
                PackageManager packageManager = a2.getPackageManager();
                String packageName = a2.getPackageName();
                if (!(packageManager == null || (packageInfo = packageManager.getPackageInfo(packageName, 4096)) == null || (strArr = packageInfo.requestedPermissions) == null || strArr.length == 0)) {
                    for (int i = 0; i < strArr.length; i++) {
                        if (!TextUtils.isEmpty(strArr[i])) {
                            this.f8946b.add(strArr[i]);
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    public void a(Activity activity, String[] strArr, e eVar) {
        synchronized (this) {
            if (activity != null) {
                try {
                    a(strArr, eVar);
                    if (Build.VERSION.SDK_INT < 23) {
                        b(activity, strArr, eVar);
                        return;
                    }
                    List<String> c2 = c(activity, strArr, eVar);
                    if (c2.isEmpty()) {
                        a(eVar);
                    } else {
                        b.a(activity, (String[]) c2.toArray(new String[c2.size()]), 1);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void a(Activity activity, String[] strArr, int[] iArr) {
        synchronized (this) {
            try {
                new ArrayList(3);
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    String str = strArr[i];
                    if ((iArr[i] == -1 || (y.e() && !a.a(activity, str))) && iArr[i] != -1) {
                        iArr[i] = -1;
                    }
                }
                a(strArr, iArr, (String[]) null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public boolean a(Context context, String str) {
        synchronized (this) {
            if (context == null) {
                return false;
            }
            return y.e() ? a.a(context, str) && (b.a(context, str) == 0 || !this.f8946b.contains(str)) : b.a(context, str) == 0 || !this.f8946b.contains(str);
        }
    }
}
