package com.google.android.gms.ads;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.ads.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/q.class */
public class C5842q {
    @RecentlyNonNull

    /* renamed from: a */
    public static final List<String> f18780a = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: b */
    private final int f18781b;

    /* renamed from: c */
    private final int f18782c;

    /* renamed from: d */
    private final String f18783d;

    /* renamed from: e */
    private final List<String> f18784e;

    /* renamed from: com.google.android.gms.ads.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/q$a.class */
    public static class C5843a {

        /* renamed from: a */
        private int f18785a = -1;

        /* renamed from: b */
        private int f18786b = -1;

        /* renamed from: c */
        private String f18787c = null;

        /* renamed from: d */
        private final List<String> f18788d = new ArrayList();

        @RecentlyNonNull
        /* renamed from: a */
        public C5842q m17773a() {
            return new C5842q(this.f18785a, this.f18786b, this.f18787c, this.f18788d, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ C5842q(int i, int i2, int i3, String str, List<String> list) {
        this.f18781b = i;
        this.f18782c = i2;
        this.f18783d = i3;
        this.f18784e = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public String m17777a() {
        String str = this.f18783d;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: b */
    public int m17776b() {
        return this.f18781b;
    }

    /* renamed from: c */
    public int m17775c() {
        return this.f18782c;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public List<String> m17774d() {
        return new ArrayList(this.f18784e);
    }
}
