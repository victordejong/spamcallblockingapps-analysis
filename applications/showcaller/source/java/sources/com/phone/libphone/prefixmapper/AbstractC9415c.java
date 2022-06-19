package com.phone.libphone.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedMap;
import java.util.TreeSet;
/* renamed from: com.phone.libphone.prefixmapper.c */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/c.class */
abstract class AbstractC9415c {

    /* renamed from: a */
    protected int f40273a = 0;

    /* renamed from: b */
    protected final TreeSet<Integer> f40274b = new TreeSet<>();

    /* renamed from: a */
    public abstract String mo617a(int i);

    /* renamed from: b */
    public int m616b() {
        return this.f40273a;
    }

    /* renamed from: c */
    public TreeSet<Integer> m615c() {
        return this.f40274b;
    }

    /* renamed from: d */
    public abstract int mo614d(int i);

    /* renamed from: e */
    public abstract void mo613e(ObjectInput objectInput);

    /* renamed from: f */
    public abstract void mo612f(SortedMap<Integer, String> sortedMap);

    /* renamed from: g */
    public abstract void mo611g(ObjectOutput objectOutput);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m616b = m616b();
        for (int i = 0; i < m616b; i++) {
            sb.append(mo614d(i));
            sb.append("|");
            sb.append(mo617a(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
