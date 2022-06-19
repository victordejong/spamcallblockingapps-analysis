package com.google.android.gms.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.ads.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/n.class */
public class C2384n {

    /* renamed from: a */
    public static final List<String> f6846a = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: b */
    private final int f6847b;

    /* renamed from: c */
    private final int f6848c;

    /* renamed from: d */
    private final String f6849d;

    /* renamed from: e */
    private final List<String> f6850e;

    /* renamed from: com.google.android.gms.ads.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/n$a.class */
    public static class C2385a {

        /* renamed from: a */
        private int f6851a = -1;

        /* renamed from: b */
        private int f6852b = -1;

        /* renamed from: c */
        private String f6853c = null;

        /* renamed from: d */
        private final List<String> f6854d = new ArrayList();

        /* renamed from: a */
        public C2384n m14619a() {
            return new C2384n(this.f6851a, this.f6852b, this.f6853c, this.f6854d);
        }
    }

    private C2384n(int i, int i2, String str, List<String> list) {
        this.f6847b = i;
        this.f6848c = i2;
        this.f6849d = str;
        this.f6850e = list;
    }

    /* renamed from: a */
    public int m14623a() {
        return this.f6847b;
    }

    /* renamed from: b */
    public int m14622b() {
        return this.f6848c;
    }

    /* renamed from: c */
    public String m14621c() {
        return this.f6849d == null ? "" : this.f6849d;
    }

    /* renamed from: d */
    public List<String> m14620d() {
        return new ArrayList(this.f6850e);
    }
}
