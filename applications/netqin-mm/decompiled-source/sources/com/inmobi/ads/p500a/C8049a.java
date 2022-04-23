package com.inmobi.ads.p500a;

import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
/* renamed from: com.inmobi.ads.a.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/a.class */
public class C8049a {

    /* renamed from: m */
    public static final String f31488m = "a";

    /* renamed from: b */
    public int f31490b;

    /* renamed from: c */
    public int f31491c;

    /* renamed from: d */
    public String f31492d;

    /* renamed from: e */
    public String f31493e;

    /* renamed from: f */
    public long f31494f;

    /* renamed from: g */
    public long f31495g;

    /* renamed from: h */
    public long f31496h;

    /* renamed from: i */
    public long f31497i;

    /* renamed from: l */
    public int f31500l;

    /* renamed from: a */
    public long f31489a = 0;

    /* renamed from: j */
    public boolean f31498j = false;

    /* renamed from: k */
    public String f31499k = null;

    /* renamed from: com.inmobi.ads.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/a/a$a.class */
    public static final class C8050a {

        /* renamed from: b */
        public int f31502b;

        /* renamed from: c */
        public String f31503c;

        /* renamed from: d */
        public String f31504d;

        /* renamed from: g */
        public long f31507g;

        /* renamed from: h */
        public long f31508h;

        /* renamed from: a */
        public int f31501a = new Random().nextInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;

        /* renamed from: e */
        public long f31505e = System.currentTimeMillis();

        /* renamed from: f */
        public long f31506f = System.currentTimeMillis();

        /* renamed from: a */
        public static long m6611a(String str) {
            try {
                return new SimpleDateFormat("EEE,dd MMM yyyy HH:mm:ss z", Locale.ENGLISH).parse(str).getTime();
            } catch (ParseException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
                return 0L;
            }
        }

        /* renamed from: a */
        public final C8050a m6610a(String str, int i, long j) {
            this.f31503c = str;
            this.f31502b = i;
            this.f31507g = System.currentTimeMillis() + j;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r22v11 */
        /* JADX WARN: Type inference failed for: r22v4 */
        /* JADX WARN: Type inference failed for: r22v6 */
        /* JADX WARN: Type inference failed for: r22v7 */
        /* JADX WARN: Type inference failed for: r22v8 */
        /* JADX WARN: Type inference failed for: r24v13 */
        /* JADX WARN: Type inference failed for: r24v27 */
        /* JADX WARN: Type inference failed for: r24v28 */
        /* JADX WARN: Type inference failed for: r24v9 */
        /* JADX WARN: Type inference failed for: r29v10 */
        /* JADX WARN: Type inference failed for: r29v11 */
        /* JADX WARN: Type inference failed for: r29v3 */
        /* JADX WARN: Type inference failed for: r29v5 */
        /* JADX WARN: Type inference failed for: r29v6 */
        /* JADX WARN: Type inference failed for: r29v7, types: [long] */
        /* JADX WARN: Type inference failed for: r29v8 */
        /* JADX WARN: Type inference failed for: r29v9 */
        /* JADX WARN: Type inference failed for: r32v0 */
        /* JADX WARN: Type inference failed for: r32v2 */
        /* JADX WARN: Type inference failed for: r32v3 */
        /* JADX WARN: Type inference failed for: r32v4 */
        /* JADX WARN: Type inference failed for: r32v5 */
        /* JADX WARN: Type inference failed for: r32v6, types: [long] */
        /* JADX WARN: Type inference failed for: r32v7 */
        /* JADX WARN: Type inference failed for: r32v8 */
        /* JADX WARN: Unknown variable types count: 5 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.inmobi.ads.p500a.C8049a.C8050a m6609a(java.lang.String r8, java.lang.String r9, com.inmobi.commons.core.network.C8384d r10, int r11, long r12) {
            /*
                Method dump skipped, instructions count: 748
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.p500a.C8049a.C8050a.m6609a(java.lang.String, java.lang.String, com.inmobi.commons.core.network.d, int, long):com.inmobi.ads.a.a$a");
        }

        /* renamed from: a */
        public final C8049a m6612a() {
            return new C8049a(this.f31501a, this.f31503c, this.f31504d, this.f31502b, this.f31505e, this.f31506f, this.f31507g, this.f31508h);
        }
    }

    public C8049a(int i, String str, String str2, int i2, long j, long j2, long j3, long j4) {
        this.f31490b = i;
        this.f31492d = str;
        this.f31493e = str2;
        this.f31491c = i2;
        this.f31494f = j;
        this.f31495g = j2;
        this.f31496h = j3;
        this.f31497i = j4;
    }

    /* renamed from: a */
    public final boolean m6623a() {
        String str = this.f31493e;
        return (str == null || str.length() == 0 || !new File(this.f31493e).exists()) ? false : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C8049a.class != obj.getClass()) {
            return false;
        }
        return this.f31492d.equals(((C8049a) obj).f31492d);
    }

    public int hashCode() {
        return this.f31492d.hashCode();
    }

    public String toString() {
        return "AdAsset{url='" + this.f31492d + "'}";
    }
}
