package com.facebook.appevents;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/n.class */
final class n implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<com.facebook.appevents.a, List<c>> f19659a;

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/n$a.class */
    static final class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<com.facebook.appevents.a, List<c>> f19660a;

        private a(HashMap<com.facebook.appevents.a, List<c>> hashMap) {
            this.f19660a = hashMap;
        }

        private Object readResolve() {
            return new n(this.f19660a);
        }
    }

    public n() {
        this.f19659a = new HashMap<>();
    }

    public n(HashMap<com.facebook.appevents.a, List<c>> hashMap) {
        HashMap<com.facebook.appevents.a, List<c>> hashMap2 = new HashMap<>();
        this.f19659a = hashMap2;
        hashMap2.putAll(hashMap);
    }

    private Object writeReplace() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return new a(this.f19659a);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public final List<c> a(com.facebook.appevents.a aVar) {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return this.f19659a.get(aVar);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public final Set<com.facebook.appevents.a> a() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return this.f19659a.keySet();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public final void a(com.facebook.appevents.a aVar, List<c> list) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                if (!this.f19659a.containsKey(aVar)) {
                    this.f19659a.put(aVar, list);
                } else {
                    this.f19659a.get(aVar).addAll(list);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
