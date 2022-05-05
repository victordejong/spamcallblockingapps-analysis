package com.b.a.a.b;

import b.f;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final f f3226a = f.a(":status");

    /* renamed from: b  reason: collision with root package name */
    public static final f f3227b = f.a(":method");
    public static final f c = f.a(":path");
    public static final f d = f.a(":scheme");
    public static final f e = f.a(":authority");
    public static final f f = f.a(":host");
    public static final f g = f.a(":version");
    public final f h;
    public final f i;
    final int j;

    public d(f fVar, f fVar2) {
        this.h = fVar;
        this.i = fVar2;
        this.j = fVar.c.length + 32 + fVar2.c.length;
    }

    public d(f fVar, String str) {
        this(fVar, f.a(str));
    }

    public d(String str, String str2) {
        this(f.a(str), f.a(str2));
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof d) {
            d dVar = (d) obj;
            z = false;
            if (this.h.equals(dVar.h)) {
                z = false;
                if (this.i.equals(dVar.i)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return ((this.h.hashCode() + 527) * 31) + this.i.hashCode();
    }

    public final String toString() {
        return String.format("%s: %s", this.h.a(), this.i.a());
    }
}
