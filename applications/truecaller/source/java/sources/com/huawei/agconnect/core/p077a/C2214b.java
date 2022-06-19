package com.huawei.agconnect.core.p077a;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.huawei.agconnect.core.Service;
import com.huawei.agconnect.core.ServiceDiscovery;
import com.huawei.agconnect.core.ServiceRegistrar;
import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.agconnect.core.a.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/a/b.class */
public class C2214b {

    /* renamed from: a */
    private final Context f7160a;

    /* renamed from: com.huawei.agconnect.core.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/a/b$a.class */
    public static class C2216a implements Serializable, Comparator<Map.Entry<String, Integer>> {
        private C2216a() {
        }

        /* renamed from: a */
        public int compare(Map.Entry<String, Integer> entry, Map.Entry<String, Integer> entry2) {
            return entry.getValue().intValue() - entry2.getValue().intValue();
        }
    }

    public C2214b(Context context) {
        this.f7160a = context;
    }

    /* renamed from: a */
    private <T extends ServiceRegistrar> T m38269a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ServiceRegistrar.class.isAssignableFrom(cls)) {
                return (T) Class.forName(str).newInstance();
            }
            String str2 = cls + " must extends from ServiceRegistrar.";
            return null;
        } catch (ClassNotFoundException e) {
            e.getMessage();
            return null;
        } catch (IllegalAccessException e2) {
            e2.getLocalizedMessage();
            return null;
        } catch (InstantiationException e3) {
            e3.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: b */
    private List<String> m38268b() {
        ArrayList arrayList = new ArrayList();
        Bundle m38267c = m38267c();
        if (m38267c == null) {
            return arrayList;
        }
        HashMap hashMap = new HashMap(10);
        for (String str : m38267c.keySet()) {
            if ("com.huawei.agconnect.core.ServiceRegistrar".equals(m38267c.getString(str))) {
                String[] split = str.split(StringConstant.COLON);
                if (split.length == 2) {
                    try {
                        hashMap.put(split[0], Integer.valueOf(split[1]));
                    } catch (NumberFormatException e) {
                        e.getMessage();
                    }
                } else if (split.length == 1) {
                    hashMap.put(split[0], 1000);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(hashMap.entrySet());
        Collections.sort(arrayList2, new C2216a());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(((Map.Entry) it.next()).getKey());
        }
        return arrayList;
    }

    /* renamed from: c */
    private Bundle m38267c() {
        PackageManager packageManager = this.f7160a.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(this.f7160a, ServiceDiscovery.class), 128);
            if (serviceInfo != null) {
                return serviceInfo.metaData;
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: a */
    public List<Service> m38270a() {
        List<String> m38268b = m38268b();
        ArrayList arrayList = new ArrayList();
        for (String str : m38268b) {
            ServiceRegistrar m38269a = m38269a(str);
            if (m38269a != null) {
                m38269a.initialize(this.f7160a);
                List<Service> services = m38269a.getServices(this.f7160a);
                if (services != null) {
                    arrayList.addAll(services);
                }
            }
        }
        StringBuilder m8728C = C22128a.m8728C("services:");
        m8728C.append(Integer.valueOf(arrayList.size()));
        m8728C.toString();
        return arrayList;
    }
}
