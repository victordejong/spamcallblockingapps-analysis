package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.ads.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/p.class */
public class C1495p {
    @RecentlyNonNull

    /* renamed from: e */
    public static final List<String> f5695e = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: a */
    private final int f5696a;

    /* renamed from: b */
    private final int f5697b;
    @Nullable

    /* renamed from: c */
    private final String f5698c;

    /* renamed from: d */
    private final List<String> f5699d;

    /* renamed from: com.google.android.gms.ads.p$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/p$a.class */
    public static class C1496a {

        /* renamed from: a */
        private int f5700a = -1;

        /* renamed from: b */
        private int f5701b = -1;
        @Nullable

        /* renamed from: c */
        private String f5702c = null;

        /* renamed from: d */
        private final List<String> f5703d = new ArrayList();

        @RecentlyNonNull
        /* renamed from: a */
        public C1495p m8580a() {
            return new C1495p(this.f5700a, this.f5701b, this.f5702c, this.f5703d, null);
        }
    }

    /* synthetic */ C1495p(int i, int i2, String str, List list, C1353c0 c1353c0) {
        this.f5696a = i;
        this.f5697b = i2;
        this.f5698c = str;
        this.f5699d = list;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public String m8584a() {
        String str = this.f5698c;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: b */
    public int m8583b() {
        return this.f5696a;
    }

    /* renamed from: c */
    public int m8582c() {
        return this.f5697b;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public List<String> m8581d() {
        return new ArrayList(this.f5699d);
    }
}
