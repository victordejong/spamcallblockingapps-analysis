package com.huawei.updatesdk.p111b.p112a.p114b;

import android.content.pm.PackageInfo;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2523h;
import com.huawei.updatesdk.p111b.p112a.p114b.C2541a;
import com.huawei.updatesdk.p111b.p112a.p114b.C2544c;
import java.io.File;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.huawei.updatesdk.b.a.b.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/a/b/b.class */
public class C2543b {

    /* renamed from: b */
    private static C2543b f8241b;

    /* renamed from: a */
    private final Map<String, C2541a> f8242a = new HashMap();

    private C2543b() {
    }

    /* renamed from: a */
    public static C2543b m36697a() {
        C2543b c2543b;
        synchronized (C2543b.class) {
            try {
                if (f8241b == null) {
                    f8241b = new C2543b();
                }
                c2543b = f8241b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2543b;
    }

    /* renamed from: a */
    private static void m36695a(C2541a c2541a) {
        m36697a().f8242a.put(c2541a.m36700c(), c2541a);
    }

    /* renamed from: b */
    private static ArrayList<String> m36694b(PackageInfo packageInfo) {
        ArraySet<String> arraySet;
        C2541a c2541a = new C2541a();
        c2541a.m36702a(packageInfo.packageName);
        File file = new File(packageInfo.applicationInfo.sourceDir);
        if (!file.exists()) {
            return null;
        }
        c2541a.m36704a(file.lastModified());
        C2544c.C2545a m36693a = C2544c.m36693a(file);
        ArrayMap<String, ArraySet<PublicKey>> arrayMap = m36693a.f8243a;
        if (arrayMap == null || arrayMap.isEmpty() || (arraySet = m36693a.f8244b) == null || arraySet.isEmpty()) {
            m36695a(c2541a);
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (Map.Entry<String, ArraySet<PublicKey>> entry : m36693a.f8243a.entrySet()) {
            if (m36693a.f8244b.contains(entry.getKey())) {
                Iterator<PublicKey> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(AbstractC2523h.m36817a(it.next().getEncoded()));
                }
            }
        }
        C2541a.C2542a c2542a = new C2541a.C2542a();
        c2542a.m36698a(arrayList);
        c2541a.m36703a(c2542a);
        m36695a(c2541a);
        return arrayList;
    }

    /* renamed from: a */
    public List<String> m36696a(PackageInfo packageInfo) {
        String str;
        if (packageInfo == null || (str = packageInfo.applicationInfo.sourceDir) == null) {
            return null;
        }
        long lastModified = new File(str).lastModified();
        C2541a c2541a = m36697a().f8242a.get(packageInfo.packageName);
        if (c2541a == null || c2541a.m36701b() != lastModified) {
            return m36694b(packageInfo);
        }
        if (c2541a.m36705a() != null) {
            return c2541a.m36705a().m36699a();
        }
        return null;
    }
}
