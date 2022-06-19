package com.phone.libphone.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedMap;
import java.util.TreeSet;
/* renamed from: com.phone.libphone.prefixmapper.c */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/c.class */
abstract class AbstractC2810c {

    /* renamed from: a */
    protected int f11666a = 0;

    /* renamed from: b */
    protected final TreeSet<Integer> f11667b = new TreeSet<>();

    /* renamed from: a */
    public abstract String mo1603a(int i);

    /* renamed from: b */
    public int m1602b() {
        return this.f11666a;
    }

    /* renamed from: c */
    public TreeSet<Integer> m1601c() {
        return this.f11667b;
    }

    /* renamed from: d */
    public abstract int mo1600d(int i);

    /* renamed from: e */
    public abstract void mo1599e(ObjectInput objectInput);

    /* renamed from: f */
    public abstract void mo1598f(SortedMap<Integer, String> sortedMap);

    /* renamed from: g */
    public abstract void mo1597g(ObjectOutput objectOutput);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int m1602b = m1602b();
        for (int i = 0; i < m1602b; i++) {
            sb.append(mo1600d(i));
            sb.append("|");
            sb.append(mo1603a(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
