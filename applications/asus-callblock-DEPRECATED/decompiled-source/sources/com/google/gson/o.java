package com.google.gson;

import com.google.gson.a.g;
/* loaded from: classes-dex2jar.jar:com/google/gson/o.class */
public final class o extends l {

    /* renamed from: a  reason: collision with root package name */
    public final g<String, l> f4554a = new g<>();

    public final void a(String str, l lVar) {
        l lVar2 = lVar;
        if (lVar == null) {
            lVar2 = n.f4553a;
        }
        this.f4554a.put(str, lVar2);
    }

    public final void a(String str, String str2) {
        a(str, str2 == null ? n.f4553a : new r((Object) str2));
    }

    public final boolean a(String str) {
        return this.f4554a.containsKey(str);
    }

    public final l b(String str) {
        return this.f4554a.get(str);
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f4554a.equals(this.f4554a));
    }

    public final int hashCode() {
        return this.f4554a.hashCode();
    }
}
