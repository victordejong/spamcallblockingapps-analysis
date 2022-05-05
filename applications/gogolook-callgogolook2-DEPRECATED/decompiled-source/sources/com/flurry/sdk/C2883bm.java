package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.bm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bm.class */
public final class C2883bm {

    /* renamed from: a */
    public static final String f4308a = "bm";

    /* renamed from: b */
    public final C3338jg<String, C2877bl> f4309b = new C3338jg<>();

    /* renamed from: a */
    public static boolean m33476a(long j) {
        return j <= System.currentTimeMillis();
    }

    /* renamed from: a */
    public final List<C2877bl> m33473a(String str) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f4309b.m32655a((C3338jg<String, C2877bl>) str));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m33477a() {
        synchronized (this) {
            for (C2877bl blVar : m33472b()) {
                if (m33476a(blVar.f4301d)) {
                    String str = f4308a;
                    C3356jq.m32615a(3, str, "expiring freq cap for id: " + blVar.f4299b + " capType:" + blVar.f4298a + " expiration: " + blVar.f4301d + " epoch" + System.currentTimeMillis());
                    m33471b(blVar.f4299b);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33475a(C2877bl blVar) {
        synchronized (this) {
            if (blVar != null) {
                if (blVar.f4298a != null && !TextUtils.isEmpty(blVar.f4299b)) {
                    m33474a(blVar.f4298a, blVar.f4299b);
                    if (blVar.f4303f != -1) {
                        this.f4309b.m32654a((C3338jg<String, C2877bl>) blVar.f4299b, (String) blVar);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33474a(EnumC2917cn cnVar, String str) {
        synchronized (this) {
            if (cnVar != null) {
                if (!TextUtils.isEmpty(str)) {
                    C2877bl blVar = null;
                    Iterator<C2877bl> it = this.f4309b.m32655a((C3338jg<String, C2877bl>) str).iterator();
                    do {
                        if (!it.hasNext()) {
                            break;
                        }
                        blVar = it.next();
                    } while (!blVar.f4298a.equals(cnVar));
                    if (blVar != null) {
                        this.f4309b.m32650b(str, blVar);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final List<C2877bl> m33472b() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f4309b.m32648d());
        }
        return arrayList;
    }

    /* renamed from: b */
    public final void m33471b(String str) {
        synchronized (this) {
            this.f4309b.m32651b(str);
        }
    }
}
