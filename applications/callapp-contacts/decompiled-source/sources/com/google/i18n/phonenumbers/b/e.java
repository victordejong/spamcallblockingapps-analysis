package com.google.i18n.phonenumbers.b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/e.class */
abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected int f32849a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected final TreeSet<Integer> f32850b = new TreeSet<>();

    public final int a() {
        return this.f32849a;
    }

    public abstract int a(int i);

    public abstract void a(ObjectInput objectInput) throws IOException;

    public abstract void a(ObjectOutput objectOutput) throws IOException;

    public abstract String b(int i);

    public final TreeSet<Integer> b() {
        return this.f32850b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f32849a;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(a(i2));
            sb.append("|");
            sb.append(b(i2));
            sb.append(StringUtils.LF);
        }
        return sb.toString();
    }
}
