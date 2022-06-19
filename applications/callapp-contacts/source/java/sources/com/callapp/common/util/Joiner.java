package com.callapp.common.util;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Joiner.class */
public class Joiner {

    /* renamed from: a */
    private final String f19141a;

    /* renamed from: b */
    private boolean f19142b = false;

    private Joiner(Joiner joiner) {
        this.f19141a = joiner.f19141a;
    }

    private Joiner(String str) {
        this.f19141a = str;
    }

    /* renamed from: a */
    public static Joiner m31918a(String str) {
        return new Joiner(str);
    }

    /* renamed from: a */
    public final Joiner m31920a() {
        Joiner joiner = new Joiner(this);
        joiner.f19142b = true;
        return joiner;
    }

    /* renamed from: a */
    public final String m31919a(Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (!this.f19142b || obj != null) {
                if (z) {
                    z = false;
                } else {
                    sb.append(this.f19141a);
                }
                sb.append(String.valueOf(obj));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final String m31917a(Object[] objArr) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        boolean z2 = true;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (this.f19142b) {
                z = z2;
                if (obj == null) {
                    i++;
                    z2 = z;
                }
            }
            if (z2) {
                z2 = false;
            } else {
                sb.append(this.f19141a);
            }
            sb.append(String.valueOf(obj));
            z = z2;
            i++;
            z2 = z;
        }
        return sb.toString();
    }
}
