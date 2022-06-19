package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/k.class */
public final class C5824k {

    /* renamed from: a */
    private final int f18757a = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25724j5)).intValue();

    /* renamed from: b */
    private final long f18758b = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25732k5)).longValue();

    /* renamed from: c */
    private final Map<String, Pair<Long, String>> f18759c = Collections.synchronizedMap(new zza(this));

    /* renamed from: e */
    private final void m17786e() {
        long mo16807a = C5667s.m18153k().mo16807a();
        try {
            Iterator<Map.Entry<String, Pair<Long, String>>> it = this.f18759c.entrySet().iterator();
            while (it.hasNext() && mo16807a - ((Long) it.next().getValue().first).longValue() > this.f18758b) {
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            C5667s.m18156h().m12235k(e, "QueryJsonMap.removeExpiredEntries");
        }
    }

    /* renamed from: b */
    public final void m17789b(String str, String str2) {
        synchronized (this) {
            this.f18759c.put(str, new Pair<>(Long.valueOf(C5667s.m18153k().mo16807a()), str2));
            m17786e();
        }
    }

    /* renamed from: c */
    public final String m17788c(String str) {
        synchronized (this) {
            Pair<Long, String> pair = this.f18759c.get(str);
            if (pair != null) {
                String str2 = (String) pair.second;
                this.f18759c.remove(str);
                return str2;
            }
            return null;
        }
    }

    /* renamed from: d */
    public final void m17787d(String str) {
        synchronized (this) {
            this.f18759c.remove(str);
        }
    }
}
