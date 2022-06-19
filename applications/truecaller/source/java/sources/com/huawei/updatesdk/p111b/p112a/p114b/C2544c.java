package com.huawei.updatesdk.p111b.p112a.p114b;

import android.util.ArrayMap;
import android.util.ArraySet;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import java.io.File;
import java.security.PublicKey;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.a.b.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/a/b/c.class */
public class C2544c {

    /* renamed from: com.huawei.updatesdk.b.a.b.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/a/b/c$a.class */
    public static class C2545a {

        /* renamed from: a */
        public ArrayMap<String, ArraySet<PublicKey>> f8243a = null;

        /* renamed from: b */
        public ArraySet<String> f8244b = null;
    }

    /* renamed from: a */
    public static C2545a m36693a(File file) {
        C2545a c2545a = new C2545a();
        Object m36691b = m36691b(file);
        if (m36691b != null) {
            Object m36692a = m36692a(m36691b, "mKeySetMapping");
            if (m36692a instanceof ArrayMap) {
                c2545a.f8243a = (ArrayMap) m36692a;
            }
            Object m36692a2 = m36692a(m36691b, "mUpgradeKeySets");
            if (m36692a2 instanceof ArraySet) {
                c2545a.f8244b = (ArraySet) m36692a2;
            }
        }
        return c2545a;
    }

    /* renamed from: a */
    private static Object m36692a(Object obj, String str) {
        Object obj2;
        try {
            obj2 = Class.forName("android.content.pm.PackageParser$Package").getDeclaredField(str).get(obj);
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("can not find class: ");
            m8728C.append(th.toString());
            C2515a.m36846c("KeySetsUtils", m8728C.toString());
            obj2 = null;
        }
        return obj2;
    }

    /* renamed from: b */
    private static Object m36691b(File file) {
        Object obj;
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            obj = cls.getDeclaredMethod("parsePackage", File.class, Integer.TYPE).invoke(cls.newInstance(), file, 0);
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("can not get PackageParser: ");
            m8728C.append(th.toString());
            C2515a.m36846c("KeySetsUtils", m8728C.toString());
            obj = null;
        }
        return obj;
    }
}
