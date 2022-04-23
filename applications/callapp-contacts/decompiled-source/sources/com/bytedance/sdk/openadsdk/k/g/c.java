package com.bytedance.sdk.openadsdk.k.g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.n;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/c.class */
public class c {
    private static volatile c e;

    /* renamed from: a  reason: collision with root package name */
    private Context f9769a;

    /* renamed from: b  reason: collision with root package name */
    private Object f9770b;

    /* renamed from: c  reason: collision with root package name */
    private Method f9771c;

    /* renamed from: d  reason: collision with root package name */
    private Method f9772d;

    private c() {
        this.f9769a = null;
        this.f9770b = null;
        this.f9771c = null;
        this.f9772d = null;
        Context a2 = n.a();
        this.f9769a = a2;
        if (a2 != null) {
            Object systemService = a2.getSystemService("storage");
            this.f9770b = systemService;
            try {
                this.f9771c = systemService.getClass().getMethod("getVolumeList", new Class[0]);
                this.f9772d = this.f9770b.getClass().getMethod("getVolumeState", String.class);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static c a() {
        if (e == null) {
            synchronized (c.class) {
                try {
                    if (e == null) {
                        e = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public boolean b() {
        Method method;
        Object obj = this.f9770b;
        if (obj == null || (method = this.f9771c) == null || this.f9772d == null) {
            return false;
        }
        try {
            Object[] objArr = (Object[]) method.invoke(obj, new Object[0]);
            if (!(objArr == null || objArr.length == 0)) {
                Method method2 = objArr[0].getClass().getMethod("getPath", new Class[0]);
                Method method3 = objArr[0].getClass().getMethod("isEmulated", new Class[0]);
                if (method2 == null || method3 == null) {
                    return false;
                }
                for (Object obj2 : objArr) {
                    if (((Boolean) method3.invoke(obj2, new Object[0])).booleanValue()) {
                        if (this.f9772d.invoke(this.f9770b, (String) method2.invoke(obj2, new Object[0])).equals("mounted")) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
