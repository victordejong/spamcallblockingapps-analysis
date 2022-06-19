package com.facebook.appevents;

import com.facebook.internal.p299b.p301b.C10249a;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
/* renamed from: com.facebook.appevents.n */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/n.class */
final class C10098n implements Serializable {

    /* renamed from: a */
    private HashMap<C9958a, List<C10002c>> f33446a;

    /* renamed from: com.facebook.appevents.n$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/n$a.class */
    static final class C10100a implements Serializable {

        /* renamed from: a */
        private final HashMap<C9958a, List<C10002c>> f33447a;

        private C10100a(HashMap<C9958a, List<C10002c>> hashMap) {
            this.f33447a = hashMap;
        }

        private Object readResolve() {
            return new C10098n(this.f33447a);
        }
    }

    public C10098n() {
        this.f33446a = new HashMap<>();
    }

    public C10098n(HashMap<C9958a, List<C10002c>> hashMap) {
        HashMap<C9958a, List<C10002c>> hashMap2 = new HashMap<>();
        this.f33446a = hashMap2;
        hashMap2.putAll(hashMap);
    }

    private Object writeReplace() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return new C10100a(this.f33446a);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public final List<C10002c> m23410a(C9958a c9958a) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f33446a.get(c9958a);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public final Set<C9958a> m23411a() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return this.f33446a.keySet();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public final void m23409a(C9958a c9958a, List<C10002c> list) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (!this.f33446a.containsKey(c9958a)) {
                this.f33446a.put(c9958a, list);
            } else {
                this.f33446a.get(c9958a).addAll(list);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
