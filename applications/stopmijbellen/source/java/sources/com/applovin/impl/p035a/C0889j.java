package com.applovin.impl.p035a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.a.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/j.class */
public class C0889j {

    /* renamed from: a */
    private String f3341a;

    /* renamed from: b */
    private String f3342b;

    /* renamed from: c */
    private String f3343c;

    /* renamed from: d */
    private long f3344d = -1;

    /* renamed from: e */
    private int f3345e = -1;

    private C0889j() {
    }

    /* renamed from: a */
    private static int m7126a(String str, C0883e c0883e) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if ("midpoint".equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (!"complete".equalsIgnoreCase(str)) {
            return -1;
        }
        return c0883e != null ? c0883e.m7142h() : 95;
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* renamed from: a */
    public static C0889j m7127a(C1539q c1539q, C0883e c0883e, C1408l c1408l) {
        List<String> explode;
        int size;
        TimeUnit timeUnit;
        char seconds;
        if (c1539q != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified.");
            }
            try {
                String m4939c = c1539q.m4939c();
                if (!StringUtils.isValidString(m4939c)) {
                    c1408l.m5542A().m5111e("VastTracker", "Unable to create tracker. Could not find URL.");
                    return null;
                }
                C0889j c0889j = new C0889j();
                c0889j.f3343c = m4939c;
                c0889j.f3341a = c1539q.m4941b().get(FacebookAdapter.KEY_ID);
                c0889j.f3342b = c1539q.m4941b().get("event");
                c0889j.f3345e = m7126a(c0889j.m7129a(), c0883e);
                String str = c1539q.m4941b().get("offset");
                if (StringUtils.isValidString(str)) {
                    String trim = str.trim();
                    if (trim.contains("%")) {
                        c0889j.f3345e = StringUtils.parseInt(trim.substring(0, trim.length() - 1));
                    } else if (trim.contains(":") && (size = (explode = CollectionUtils.explode(trim, ":")).size()) > 0) {
                        char c = 0;
                        int i = size - 1;
                        int i2 = i;
                        while (i2 >= 0) {
                            String str2 = explode.get(i2);
                            char c2 = c;
                            if (StringUtils.isNumeric(str2)) {
                                int parseInt = Integer.parseInt(str2);
                                if (i2 == i) {
                                    seconds = parseInt;
                                } else {
                                    if (i2 == size - 2) {
                                        timeUnit = TimeUnit.MINUTES;
                                    } else {
                                        c2 = c;
                                        if (i2 == size - 3) {
                                            timeUnit = TimeUnit.HOURS;
                                        }
                                    }
                                    seconds = timeUnit.toSeconds(parseInt);
                                }
                                c2 = c + seconds;
                            }
                            i2--;
                            c = c2;
                        }
                        c0889j.f3344d = c;
                        c0889j.f3345e = -1;
                    }
                }
                return c0889j;
            } catch (Throwable th) {
                c1408l.m5542A().m5115b("VastTracker", "Error occurred while initializing", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No node specified.");
    }

    /* renamed from: a */
    public String m7129a() {
        return this.f3342b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
        if (r13 == false) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7128a(long r6, int r8) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f3344d
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L16
            r0 = 1
            r12 = r0
            goto L19
        L16:
            r0 = 0
            r12 = r0
        L19:
            r0 = r6
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L26
            r0 = 1
            r13 = r0
            goto L29
        L26:
            r0 = 0
            r13 = r0
        L29:
            r0 = r5
            int r0 = r0.f3345e
            r14 = r0
            r0 = r14
            if (r0 < 0) goto L3a
            r0 = 1
            r15 = r0
            goto L3d
        L3a:
            r0 = 0
            r15 = r0
        L3d:
            r0 = r8
            r1 = r14
            if (r0 < r1) goto L48
            r0 = 1
            r8 = r0
            goto L4a
        L48:
            r0 = 0
            r8 = r0
        L4a:
            r0 = r12
            if (r0 == 0) goto L58
            r0 = r11
            r16 = r0
            r0 = r13
            if (r0 != 0) goto L6b
        L58:
            r0 = r15
            if (r0 == 0) goto L68
            r0 = r8
            if (r0 == 0) goto L68
            r0 = r11
            r16 = r0
            goto L6b
        L68:
            r0 = 0
            r16 = r0
        L6b:
            r0 = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.p035a.C0889j.m7128a(long, int):boolean");
    }

    /* renamed from: b */
    public String m7125b() {
        return this.f3343c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0889j)) {
            return false;
        }
        C0889j c0889j = (C0889j) obj;
        if (this.f3344d != c0889j.f3344d || this.f3345e != c0889j.f3345e) {
            return false;
        }
        String str = this.f3341a;
        if (str != null) {
            if (!str.equals(c0889j.f3341a)) {
                return false;
            }
        } else if (c0889j.f3341a != null) {
            return false;
        }
        String str2 = this.f3342b;
        if (str2 != null) {
            if (!str2.equals(c0889j.f3342b)) {
                return false;
            }
        } else if (c0889j.f3342b != null) {
            return false;
        }
        return this.f3343c.equals(c0889j.f3343c);
    }

    public int hashCode() {
        String str = this.f3341a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f3342b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int m4793d = C1676a.m4793d(this.f3343c, ((hashCode * 31) + i) * 31, 31);
        long j = this.f3344d;
        return ((m4793d + ((int) (j ^ (j >>> 32)))) * 31) + this.f3345e;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("VastTracker{identifier='");
        C0033h.m8882o(m8752j, this.f3341a, '\'', ", event='");
        C0033h.m8882o(m8752j, this.f3342b, '\'', ", uriString='");
        C0033h.m8882o(m8752j, this.f3343c, '\'', ", offsetSeconds=");
        m8752j.append(this.f3344d);
        m8752j.append(", offsetPercent=");
        m8752j.append(this.f3345e);
        m8752j.append('}');
        return m8752j.toString();
    }
}
