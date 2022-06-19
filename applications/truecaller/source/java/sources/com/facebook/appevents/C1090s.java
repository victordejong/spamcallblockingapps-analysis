package com.facebook.appevents;

import android.content.Context;
import com.facebook.internal.C1165q;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n��\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\tH\u0086\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0015\u001a\u00020\tH\u0002J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0017R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/AppEventCollection;", "", "()V", "eventCount", "", "getEventCount", "()I", "stateMap", "Ljava/util/HashMap;", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "Lcom/facebook/appevents/SessionEventsState;", "addEvent", "", "accessTokenAppIdPair", "appEvent", "Lcom/facebook/appevents/AppEvent;", "addPersistedEvents", "persistedEvents", "Lcom/facebook/appevents/PersistedEvents;", "get", "getSessionEventsState", "accessTokenAppId", "keySet", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.s */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/s.class */
public final class C1090s {

    /* renamed from: a */
    public final HashMap<C1071p, C0958f0> f3015a = new HashMap<>();

    /* renamed from: a */
    public final void m41783a(C0955e0 c0955e0) {
        Set<Map.Entry<C1071p, List<C1087r>>> set;
        synchronized (this) {
            if (c0955e0 == null) {
                return;
            }
            if (C1220a.m41623b(c0955e0)) {
                set = null;
            } else {
                Set<Map.Entry<C1071p, List<C1087r>>> entrySet = c0955e0.f2633a.entrySet();
                l.d(entrySet, "events.entries");
                set = entrySet;
            }
            for (Map.Entry<C1071p, List<C1087r>> entry : set) {
                C0958f0 m41780d = m41780d(entry.getKey());
                if (m41780d != null) {
                    for (C1087r c1087r : entry.getValue()) {
                        m41780d.m41975a(c1087r);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final C0958f0 m41782b(C1071p c1071p) {
        C0958f0 c0958f0;
        synchronized (this) {
            l.e(c1071p, "accessTokenAppIdPair");
            c0958f0 = this.f3015a.get(c1071p);
        }
        return c0958f0;
    }

    /* renamed from: c */
    public final int m41781c() {
        int i;
        int size;
        synchronized (this) {
            Iterator<C0958f0> it = this.f3015a.values().iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    C0958f0 next = it.next();
                    synchronized (next) {
                        size = C1220a.m41623b(next) ? 0 : next.f2640c.size();
                    }
                    i2 = i + size;
                }
            }
        }
        return i;
    }

    /* renamed from: d */
    public final C0958f0 m41780d(C1071p c1071p) {
        synchronized (this) {
            C0958f0 c0958f0 = this.f3015a.get(c1071p);
            C0958f0 c0958f02 = c0958f0;
            if (c0958f0 == null) {
                C23228f0 c23228f0 = C23228f0.f64291a;
                Context m7354a = C23228f0.m7354a();
                C1165q m41703b = C1165q.C1166a.m41703b(m7354a);
                c0958f02 = c0958f0;
                if (m41703b != null) {
                    c0958f02 = new C0958f0(m41703b, C1094v.m41768a(m7354a));
                }
            }
            if (c0958f02 == null) {
                return null;
            }
            this.f3015a.put(c1071p, c0958f02);
            return c0958f02;
        }
    }

    /* renamed from: e */
    public final Set<C1071p> m41779e() {
        Set<C1071p> keySet;
        synchronized (this) {
            keySet = this.f3015a.keySet();
            l.d(keySet, "stateMap.keys");
        }
        return keySet;
    }
}
