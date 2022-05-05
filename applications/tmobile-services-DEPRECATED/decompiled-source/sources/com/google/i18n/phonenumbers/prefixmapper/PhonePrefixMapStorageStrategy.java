package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.class */
abstract class PhonePrefixMapStorageStrategy {

    /* renamed from: a */
    protected int f12405a = 0;

    /* renamed from: b */
    protected final TreeSet<Integer> f12406b = new TreeSet<>();

    /* renamed from: a */
    public abstract String mo7853a(int i);

    /* renamed from: b */
    public int m7852b() {
        return this.f12405a;
    }

    /* renamed from: c */
    public TreeSet<Integer> m7851c() {
        return this.f12406b;
    }

    /* renamed from: d */
    public abstract int mo7850d(int i);

    /* renamed from: e */
    public abstract void mo7849e(ObjectInput objectInput) throws IOException;

    /* renamed from: f */
    public abstract void mo7848f(ObjectOutput objectOutput) throws IOException;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b = m7852b();
        for (int i = 0; i < b; i++) {
            sb.append(mo7850d(i));
            sb.append("|");
            sb.append(mo7853a(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
