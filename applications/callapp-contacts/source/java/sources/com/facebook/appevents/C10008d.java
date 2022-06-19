package com.facebook.appevents;

import android.content.Context;
import com.facebook.C10181g;
import com.facebook.internal.C10234b;
import java.util.HashMap;
import java.util.Set;
/* renamed from: com.facebook.appevents.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d.class */
public final class C10008d {

    /* renamed from: a */
    private final HashMap<C9958a, C10101o> f33266a = new HashMap<>();

    /* renamed from: b */
    private C10101o m23630b(C9958a c9958a) {
        C10101o c10101o;
        synchronized (this) {
            C10101o c10101o2 = this.f33266a.get(c9958a);
            c10101o = c10101o2;
            if (c10101o2 == null) {
                Context m23290i = C10181g.m23290i();
                c10101o = new C10101o(C10234b.m23133b(m23290i), C10046g.m23532b(m23290i));
            }
            this.f33266a.put(c9958a, c10101o);
        }
        return c10101o;
    }

    /* renamed from: a */
    public final C10101o m23634a(C9958a c9958a) {
        C10101o c10101o;
        synchronized (this) {
            c10101o = this.f33266a.get(c9958a);
        }
        return c10101o;
    }

    /* renamed from: a */
    public final Set<C9958a> m23635a() {
        Set<C9958a> keySet;
        synchronized (this) {
            keySet = this.f33266a.keySet();
        }
        return keySet;
    }

    /* renamed from: a */
    public final void m23633a(C9958a c9958a, C10002c c10002c) {
        synchronized (this) {
            m23630b(c9958a).m23406a(c10002c);
        }
    }

    /* renamed from: a */
    public final void m23632a(C10098n c10098n) {
        synchronized (this) {
            if (c10098n == null) {
                return;
            }
            for (C9958a c9958a : c10098n.m23411a()) {
                C10101o m23630b = m23630b(c9958a);
                for (C10002c c10002c : c10098n.m23410a(c9958a)) {
                    m23630b.m23406a(c10002c);
                }
            }
        }
    }

    /* renamed from: b */
    public final int m23631b() {
        int i;
        synchronized (this) {
            i = 0;
            for (C10101o c10101o : this.f33266a.values()) {
                i += c10101o.m23408a();
            }
        }
        return i;
    }
}
