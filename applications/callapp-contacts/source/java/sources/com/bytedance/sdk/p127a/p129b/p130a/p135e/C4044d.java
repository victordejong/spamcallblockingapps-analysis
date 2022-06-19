package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.mopub.common.Constants;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.a.b.a.e.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d.class */
public final class C4044d {

    /* renamed from: a */
    static final C4043c[] f14666a = {new C4043c(C4043c.f14662f, ""), new C4043c(C4043c.f14659c, "GET"), new C4043c(C4043c.f14659c, "POST"), new C4043c(C4043c.f14660d, "/"), new C4043c(C4043c.f14660d, "/index.html"), new C4043c(C4043c.f14661e, "http"), new C4043c(C4043c.f14661e, Constants.HTTPS), new C4043c(C4043c.f14658b, "200"), new C4043c(C4043c.f14658b, "204"), new C4043c(C4043c.f14658b, "206"), new C4043c(C4043c.f14658b, "304"), new C4043c(C4043c.f14658b, "400"), new C4043c(C4043c.f14658b, "404"), new C4043c(C4043c.f14658b, "500"), new C4043c("accept-charset", ""), new C4043c("accept-encoding", "gzip, deflate"), new C4043c("accept-language", ""), new C4043c("accept-ranges", ""), new C4043c("accept", ""), new C4043c("access-control-allow-origin", ""), new C4043c(VerizonSSPWaterfallProvider.USER_DATA_AGE_KEY, ""), new C4043c("allow", ""), new C4043c("authorization", ""), new C4043c("cache-control", ""), new C4043c("content-disposition", ""), new C4043c("content-encoding", ""), new C4043c("content-language", ""), new C4043c("content-length", ""), new C4043c("content-location", ""), new C4043c("content-range", ""), new C4043c("content-type", ""), new C4043c("cookie", ""), new C4043c("date", ""), new C4043c("etag", ""), new C4043c("expect", ""), new C4043c("expires", ""), new C4043c("from", ""), new C4043c("host", ""), new C4043c("if-match", ""), new C4043c("if-modified-since", ""), new C4043c("if-none-match", ""), new C4043c("if-range", ""), new C4043c("if-unmodified-since", ""), new C4043c("last-modified", ""), new C4043c("link", ""), new C4043c("location", ""), new C4043c("max-forwards", ""), new C4043c("proxy-authenticate", ""), new C4043c("proxy-authorization", ""), new C4043c("range", ""), new C4043c("referer", ""), new C4043c("refresh", ""), new C4043c("retry-after", ""), new C4043c("server", ""), new C4043c("set-cookie", ""), new C4043c("strict-transport-security", ""), new C4043c("transfer-encoding", ""), new C4043c("user-agent", ""), new C4043c("vary", ""), new C4043c("via", ""), new C4043c("www-authenticate", "")};

    /* renamed from: b */
    static final Map<C3973f, Integer> f14667b = m36838a();

    /* renamed from: com.bytedance.sdk.a.b.a.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d$a.class */
    static final class C4045a {

        /* renamed from: a */
        C4043c[] f14668a;

        /* renamed from: b */
        int f14669b;

        /* renamed from: c */
        int f14670c;

        /* renamed from: d */
        int f14671d;

        /* renamed from: e */
        private final List<C4043c> f14672e;

        /* renamed from: f */
        private final AbstractC3972e f14673f;

        /* renamed from: g */
        private final int f14674g;

        /* renamed from: h */
        private int f14675h;

        C4045a(int i, int i2, AbstractC3990s abstractC3990s) {
            this.f14672e = new ArrayList();
            C4043c[] c4043cArr = new C4043c[8];
            this.f14668a = c4043cArr;
            this.f14669b = c4043cArr.length - 1;
            this.f14670c = 0;
            this.f14671d = 0;
            this.f14674g = i;
            this.f14675h = i2;
            this.f14673f = C3979l.m37085a(abstractC3990s);
        }

        public C4045a(int i, AbstractC3990s abstractC3990s) {
            this(i, i, abstractC3990s);
        }

        /* renamed from: a */
        private int m36835a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f14668a.length - 1;
                int i4 = i;
                int i5 = 0;
                while (true) {
                    i2 = this.f14669b;
                    if (length < i2 || i4 <= 0) {
                        break;
                    }
                    i4 -= this.f14668a[length].f14665i;
                    this.f14671d -= this.f14668a[length].f14665i;
                    this.f14670c--;
                    i5++;
                    length--;
                }
                C4043c[] c4043cArr = this.f14668a;
                System.arraycopy(c4043cArr, i2 + 1, c4043cArr, i2 + 1 + i5, this.f14670c);
                this.f14669b += i5;
                i3 = i5;
            }
            return i3;
        }

        /* renamed from: a */
        private void m36833a(int i, C4043c c4043c) {
            this.f14672e.add(c4043c);
            int i2 = c4043c.f14665i;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f14668a[m36829c(i)].f14665i;
            }
            int i4 = this.f14675h;
            if (i3 > i4) {
                m36826e();
                return;
            }
            int m36835a = m36835a((this.f14671d + i3) - i4);
            if (i == -1) {
                int i5 = this.f14670c;
                C4043c[] c4043cArr = this.f14668a;
                if (i5 + 1 > c4043cArr.length) {
                    C4043c[] c4043cArr2 = new C4043c[c4043cArr.length * 2];
                    System.arraycopy(c4043cArr, 0, c4043cArr2, c4043cArr.length, c4043cArr.length);
                    this.f14669b = this.f14668a.length - 1;
                    this.f14668a = c4043cArr2;
                }
                int i6 = this.f14669b;
                this.f14669b = i6 - 1;
                this.f14668a[i6] = c4043c;
                this.f14670c++;
            } else {
                this.f14668a[i + m36829c(i) + m36835a] = c4043c;
            }
            this.f14671d += i3;
        }

        /* renamed from: b */
        private void m36831b(int i) throws IOException {
            if (m36821g(i)) {
                this.f14672e.add(C4044d.f14666a[i]);
                return;
            }
            int m36829c = m36829c(i - C4044d.f14666a.length);
            if (m36829c >= 0) {
                C4043c[] c4043cArr = this.f14668a;
                if (m36829c <= c4043cArr.length - 1) {
                    this.f14672e.add(c4043cArr[m36829c]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: c */
        private int m36829c(int i) {
            return this.f14669b + 1 + i;
        }

        /* renamed from: d */
        private void m36828d() {
            int i = this.f14675h;
            int i2 = this.f14671d;
            if (i < i2) {
                if (i == 0) {
                    m36826e();
                } else {
                    m36835a(i2 - i);
                }
            }
        }

        /* renamed from: d */
        private void m36827d(int i) throws IOException {
            this.f14672e.add(new C4043c(m36823f(i), m36830c()));
        }

        /* renamed from: e */
        private void m36826e() {
            Arrays.fill(this.f14668a, (Object) null);
            this.f14669b = this.f14668a.length - 1;
            this.f14670c = 0;
            this.f14671d = 0;
        }

        /* renamed from: e */
        private void m36825e(int i) throws IOException {
            m36833a(-1, new C4043c(m36823f(i), m36830c()));
        }

        /* renamed from: f */
        private C3973f m36823f(int i) {
            return m36821g(i) ? C4044d.f14666a[i].f14663g : this.f14668a[m36829c(i - C4044d.f14666a.length)].f14663g;
        }

        /* renamed from: f */
        private void m36824f() throws IOException {
            this.f14672e.add(new C4043c(C4044d.m36837a(m36830c()), m36830c()));
        }

        /* renamed from: g */
        private void m36822g() throws IOException {
            m36833a(-1, new C4043c(C4044d.m36837a(m36830c()), m36830c()));
        }

        /* renamed from: g */
        private boolean m36821g(int i) {
            return i >= 0 && i <= C4044d.f14666a.length - 1;
        }

        /* renamed from: h */
        private int m36820h() throws IOException {
            return this.f14673f.mo37054h() & 255;
        }

        /* renamed from: a */
        final int m36834a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m36820h = m36820h();
                if ((m36820h & 128) == 0) {
                    return i2 + (m36820h << i4);
                }
                i2 += (m36820h & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: a */
        public final void m36836a() throws IOException {
            while (!this.f14673f.mo37058e()) {
                int mo37054h = this.f14673f.mo37054h() & 255;
                if (mo37054h == 128) {
                    throw new IOException("index == 0");
                }
                if ((mo37054h & 128) == 128) {
                    m36831b(m36834a(mo37054h, 127) - 1);
                } else if (mo37054h == 64) {
                    m36822g();
                } else if ((mo37054h & 64) == 64) {
                    m36825e(m36834a(mo37054h, 63) - 1);
                } else if ((mo37054h & 32) == 32) {
                    int m36834a = m36834a(mo37054h, 31);
                    this.f14675h = m36834a;
                    if (m36834a < 0 || m36834a > this.f14674g) {
                        throw new IOException("Invalid dynamic table size update " + this.f14675h);
                    }
                    m36828d();
                } else if (mo37054h == 16 || mo37054h == 0) {
                    m36824f();
                } else {
                    m36827d(m36834a(mo37054h, 15) - 1);
                }
            }
        }

        /* renamed from: b */
        public final List<C4043c> m36832b() {
            ArrayList arrayList = new ArrayList(this.f14672e);
            this.f14672e.clear();
            return arrayList;
        }

        /* renamed from: c */
        final C3973f m36830c() throws IOException {
            int m36820h = m36820h();
            boolean z = (m36820h & 128) == 128;
            int m36834a = m36834a(m36820h, 127);
            return z ? C3973f.m37099a(C4073k.m36695a().m36691a(this.f14673f.mo37055g(m36834a))) : this.f14673f.mo37059c(m36834a);
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.e.d$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d$b.class */
    static final class C4046b {

        /* renamed from: a */
        int f14676a;

        /* renamed from: b */
        int f14677b;

        /* renamed from: c */
        C4043c[] f14678c;

        /* renamed from: d */
        int f14679d;

        /* renamed from: e */
        int f14680e;

        /* renamed from: f */
        int f14681f;

        /* renamed from: g */
        private final C3969c f14682g;

        /* renamed from: h */
        private final boolean f14683h;

        /* renamed from: i */
        private int f14684i;

        /* renamed from: j */
        private boolean f14685j;

        C4046b(int i, boolean z, C3969c c3969c) {
            this.f14684i = Integer.MAX_VALUE;
            C4043c[] c4043cArr = new C4043c[8];
            this.f14678c = c4043cArr;
            this.f14679d = c4043cArr.length - 1;
            this.f14680e = 0;
            this.f14681f = 0;
            this.f14676a = i;
            this.f14677b = i;
            this.f14683h = z;
            this.f14682g = c3969c;
        }

        public C4046b(C3969c c3969c) {
            this(4096, true, c3969c);
        }

        /* renamed from: a */
        private void m36819a() {
            Arrays.fill(this.f14678c, (Object) null);
            this.f14679d = this.f14678c.length - 1;
            this.f14680e = 0;
            this.f14681f = 0;
        }

        /* renamed from: a */
        private void m36815a(C4043c c4043c) {
            int i = c4043c.f14665i;
            int i2 = this.f14677b;
            if (i > i2) {
                m36819a();
                return;
            }
            m36812b((this.f14681f + i) - i2);
            int i3 = this.f14680e;
            C4043c[] c4043cArr = this.f14678c;
            if (i3 + 1 > c4043cArr.length) {
                C4043c[] c4043cArr2 = new C4043c[c4043cArr.length * 2];
                System.arraycopy(c4043cArr, 0, c4043cArr2, c4043cArr.length, c4043cArr.length);
                this.f14679d = this.f14678c.length - 1;
                this.f14678c = c4043cArr2;
            }
            int i4 = this.f14679d;
            this.f14679d = i4 - 1;
            this.f14678c[i4] = c4043c;
            this.f14680e++;
            this.f14681f += i;
        }

        /* renamed from: b */
        private int m36812b(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f14678c.length - 1;
                int i4 = i;
                int i5 = 0;
                while (true) {
                    i2 = this.f14679d;
                    if (length < i2 || i4 <= 0) {
                        break;
                    }
                    i4 -= this.f14678c[length].f14665i;
                    this.f14681f -= this.f14678c[length].f14665i;
                    this.f14680e--;
                    i5++;
                    length--;
                }
                C4043c[] c4043cArr = this.f14678c;
                System.arraycopy(c4043cArr, i2 + 1, c4043cArr, i2 + 1 + i5, this.f14680e);
                C4043c[] c4043cArr2 = this.f14678c;
                int i6 = this.f14679d;
                Arrays.fill(c4043cArr2, i6 + 1, i6 + 1 + i5, (Object) null);
                this.f14679d += i5;
                i3 = i5;
            }
            return i3;
        }

        /* renamed from: b */
        private void m36813b() {
            int i = this.f14677b;
            int i2 = this.f14681f;
            if (i < i2) {
                if (i == 0) {
                    m36819a();
                } else {
                    m36812b(i2 - i);
                }
            }
        }

        /* renamed from: a */
        public final void m36818a(int i) {
            this.f14676a = i;
            int min = Math.min(i, 16384);
            int i2 = this.f14677b;
            if (i2 == min) {
                return;
            }
            if (min < i2) {
                this.f14684i = Math.min(this.f14684i, min);
            }
            this.f14685j = true;
            this.f14677b = min;
            m36813b();
        }

        /* renamed from: a */
        final void m36817a(int i, int i2, int i3) {
            if (i < i2) {
                this.f14682g.mo37072i(i | i3);
                return;
            }
            this.f14682g.mo37072i(i3 | i2);
            int i4 = i - i2;
            while (true) {
                int i5 = i4;
                if (i5 < 128) {
                    this.f14682g.mo37072i(i5);
                    return;
                } else {
                    this.f14682g.mo37072i(128 | (i5 & 127));
                    i4 = i5 >>> 7;
                }
            }
        }

        /* renamed from: a */
        final void m36816a(C3973f c3973f) throws IOException {
            if (!this.f14683h || C4073k.m36695a().m36693a(c3973f) >= c3973f.mo37026g()) {
                m36817a(c3973f.mo37026g(), 127, 0);
                this.f14682g.m37130a(c3973f);
                return;
            }
            C3969c c3969c = new C3969c();
            C4073k.m36695a().m36692a(c3973f, c3969c);
            C3973f m37109n = c3969c.m37109n();
            m36817a(m37109n.mo37026g(), 127, 128);
            this.f14682g.m37130a(m37109n);
        }

        /* renamed from: a */
        public final void m36814a(List<C4043c> list) throws IOException {
            int i;
            int i2;
            if (this.f14685j) {
                int i3 = this.f14684i;
                if (i3 < this.f14677b) {
                    m36817a(i3, 31, 32);
                }
                this.f14685j = false;
                this.f14684i = Integer.MAX_VALUE;
                m36817a(this.f14677b, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                C4043c c4043c = list.get(i4);
                C3973f mo37027f = c4043c.f14663g.mo37027f();
                C3973f c3973f = c4043c.f14664h;
                Integer num = C4044d.f14667b.get(mo37027f);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (C4015c.m36912a(C4044d.f14666a[i - 1].f14664h, c3973f)) {
                            i2 = i;
                        } else if (C4015c.m36912a(C4044d.f14666a[i].f14664h, c3973f)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                int i5 = i;
                int i6 = i2;
                if (i == -1) {
                    int i7 = this.f14679d + 1;
                    int length = this.f14678c.length;
                    while (true) {
                        i5 = i;
                        i6 = i2;
                        if (i7 >= length) {
                            break;
                        }
                        int i8 = i2;
                        if (C4015c.m36912a(this.f14678c[i7].f14663g, mo37027f)) {
                            if (C4015c.m36912a(this.f14678c[i7].f14664h, c3973f)) {
                                i5 = C4044d.f14666a.length + (i7 - this.f14679d);
                                i6 = i2;
                                break;
                            }
                            i8 = i2;
                            if (i2 == -1) {
                                i8 = (i7 - this.f14679d) + C4044d.f14666a.length;
                            }
                        }
                        i7++;
                        i2 = i8;
                    }
                }
                if (i5 != -1) {
                    m36817a(i5, 127, 128);
                } else if (i6 == -1) {
                    this.f14682g.mo37072i(64);
                    m36816a(mo37027f);
                    m36816a(c3973f);
                    m36815a(c4043c);
                } else if (!mo37027f.m37102a(C4043c.f14657a) || C4043c.f14662f.equals(mo37027f)) {
                    m36817a(i6, 63, 64);
                    m36816a(c3973f);
                    m36815a(c4043c);
                } else {
                    m36817a(i6, 15, 0);
                    m36816a(c3973f);
                }
            }
        }
    }

    /* renamed from: a */
    static C3973f m36837a(C3973f c3973f) throws IOException {
        int mo37026g = c3973f.mo37026g();
        for (int i = 0; i < mo37026g; i++) {
            byte mo37037a = c3973f.mo37037a(i);
            if (mo37037a >= 65 && mo37037a <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c3973f.mo37038a());
            }
        }
        return c3973f;
    }

    /* renamed from: a */
    private static Map<C3973f, Integer> m36838a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f14666a.length);
        int i = 0;
        while (true) {
            C4043c[] c4043cArr = f14666a;
            if (i < c4043cArr.length) {
                if (!linkedHashMap.containsKey(c4043cArr[i].f14663g)) {
                    linkedHashMap.put(c4043cArr[i].f14663g, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }
}
