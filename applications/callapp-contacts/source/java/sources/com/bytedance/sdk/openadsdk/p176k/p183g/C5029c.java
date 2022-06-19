package com.bytedance.sdk.openadsdk.p176k.p183g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.C4600n;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.openadsdk.k.g.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/c.class */
public class C5029c {

    /* renamed from: e */
    private static volatile C5029c f18215e;

    /* renamed from: a */
    private Context f18216a;

    /* renamed from: b */
    private Object f18217b;

    /* renamed from: c */
    private Method f18218c;

    /* renamed from: d */
    private Method f18219d;

    private C5029c() {
        this.f18216a = null;
        this.f18217b = null;
        this.f18218c = null;
        this.f18219d = null;
        Context m34815a = C4600n.m34815a();
        this.f18216a = m34815a;
        if (m34815a != null) {
            Object systemService = m34815a.getSystemService("storage");
            this.f18217b = systemService;
            try {
                this.f18218c = systemService.getClass().getMethod("getVolumeList", new Class[0]);
                this.f18219d = this.f18217b.getClass().getMethod("getVolumeState", String.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static C5029c m33238a() {
        if (f18215e == null) {
            synchronized (C5029c.class) {
                try {
                    if (f18215e == null) {
                        f18215e = new C5029c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18215e;
    }

    /* renamed from: b */
    public boolean m33236b() {
        Method method;
        Object obj = this.f18217b;
        if (obj == null || (method = this.f18218c) == null || this.f18219d == null) {
            return false;
        }
        try {
            Object[] objArr = (Object[]) method.invoke(obj, new Object[0]);
            if (objArr != null && objArr.length != 0) {
                Method method2 = objArr[0].getClass().getMethod("getPath", new Class[0]);
                Method method3 = objArr[0].getClass().getMethod("isEmulated", new Class[0]);
                if (method2 == null || method3 == null) {
                    return false;
                }
                for (Object obj2 : objArr) {
                    if (((Boolean) method3.invoke(obj2, new Object[0])).booleanValue()) {
                        if (this.f18219d.invoke(this.f18217b, (String) method2.invoke(obj2, new Object[0])).equals("mounted")) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
