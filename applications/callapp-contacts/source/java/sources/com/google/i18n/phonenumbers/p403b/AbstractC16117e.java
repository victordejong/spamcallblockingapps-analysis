package com.google.i18n.phonenumbers.p403b;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.i18n.phonenumbers.b.e */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/e.class */
abstract class AbstractC16117e {

    /* renamed from: a */
    protected int f56906a = 0;

    /* renamed from: b */
    protected final TreeSet<Integer> f56907b = new TreeSet<>();

    /* renamed from: a */
    public final int m7832a() {
        return this.f56906a;
    }

    /* renamed from: a */
    public abstract int mo7831a(int i);

    /* renamed from: a */
    public abstract void mo7830a(ObjectInput objectInput) throws IOException;

    /* renamed from: a */
    public abstract void mo7829a(ObjectOutput objectOutput) throws IOException;

    /* renamed from: b */
    public abstract String mo7827b(int i);

    /* renamed from: b */
    public final TreeSet<Integer> m7828b() {
        return this.f56907b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f56906a;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(mo7831a(i2));
            sb.append("|");
            sb.append(mo7827b(i2));
            sb.append(StringUtils.f67179LF);
        }
        return sb.toString();
    }
}
