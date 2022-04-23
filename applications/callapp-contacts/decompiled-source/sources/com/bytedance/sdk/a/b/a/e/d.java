package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.a.s;
import com.mopub.common.Constants;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final c[] f7928a = {new c(c.f, ""), new c(c.f7926c, "GET"), new c(c.f7926c, "POST"), new c(c.f7927d, "/"), new c(c.f7927d, "/index.html"), new c(c.e, "http"), new c(c.e, Constants.HTTPS), new c(c.f7925b, "200"), new c(c.f7925b, "204"), new c(c.f7925b, "206"), new c(c.f7925b, "304"), new c(c.f7925b, "400"), new c(c.f7925b, "404"), new c(c.f7925b, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c(VerizonSSPWaterfallProvider.USER_DATA_AGE_KEY, ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};

    /* renamed from: b  reason: collision with root package name */
    static final Map<f, Integer> f7929b = a();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        c[] f7930a;

        /* renamed from: b  reason: collision with root package name */
        int f7931b;

        /* renamed from: c  reason: collision with root package name */
        int f7932c;

        /* renamed from: d  reason: collision with root package name */
        int f7933d;
        private final List<c> e;
        private final e f;
        private final int g;
        private int h;

        a(int i, int i2, s sVar) {
            this.e = new ArrayList();
            c[] cVarArr = new c[8];
            this.f7930a = cVarArr;
            this.f7931b = cVarArr.length - 1;
            this.f7932c = 0;
            this.f7933d = 0;
            this.g = i;
            this.h = i2;
            this.f = l.a(sVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, s sVar) {
            this(i, i, sVar);
        }

        private int a(int i) {
            int i2;
            int i3 = 0;
            int i4 = 0;
            if (i > 0) {
                int length = this.f7930a.length - 1;
                int i5 = i;
                while (true) {
                    i2 = this.f7931b;
                    if (length < i2 || i5 <= 0) {
                        break;
                    }
                    i5 -= this.f7930a[length].i;
                    this.f7933d -= this.f7930a[length].i;
                    this.f7932c--;
                    i4++;
                    length--;
                }
                c[] cVarArr = this.f7930a;
                System.arraycopy(cVarArr, i2 + 1, cVarArr, i2 + 1 + i4, this.f7932c);
                this.f7931b += i4;
                i3 = i4;
            }
            return i3;
        }

        private void a(int i, c cVar) {
            this.e.add(cVar);
            int i2 = cVar.i;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f7930a[c(i)].i;
            }
            int i4 = this.h;
            if (i3 > i4) {
                e();
                return;
            }
            int a2 = a((this.f7933d + i3) - i4);
            if (i == -1) {
                int i5 = this.f7932c;
                c[] cVarArr = this.f7930a;
                if (i5 + 1 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f7931b = this.f7930a.length - 1;
                    this.f7930a = cVarArr2;
                }
                int i6 = this.f7931b;
                this.f7931b = i6 - 1;
                this.f7930a[i6] = cVar;
                this.f7932c++;
            } else {
                this.f7930a[i + c(i) + a2] = cVar;
            }
            this.f7933d += i3;
        }

        private void b(int i) throws IOException {
            if (g(i)) {
                this.e.add(d.f7928a[i]);
                return;
            }
            int c2 = c(i - d.f7928a.length);
            if (c2 >= 0) {
                c[] cVarArr = this.f7930a;
                if (c2 <= cVarArr.length - 1) {
                    this.e.add(cVarArr[c2]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private int c(int i) {
            return this.f7931b + 1 + i;
        }

        private void d() {
            int i = this.h;
            int i2 = this.f7933d;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                e();
            } else {
                a(i2 - i);
            }
        }

        private void d(int i) throws IOException {
            this.e.add(new c(f(i), c()));
        }

        private void e() {
            Arrays.fill(this.f7930a, (Object) null);
            this.f7931b = this.f7930a.length - 1;
            this.f7932c = 0;
            this.f7933d = 0;
        }

        private void e(int i) throws IOException {
            a(-1, new c(f(i), c()));
        }

        private f f(int i) {
            return g(i) ? d.f7928a[i].g : this.f7930a[c(i - d.f7928a.length)].g;
        }

        private void f() throws IOException {
            this.e.add(new c(d.a(c()), c()));
        }

        private void g() throws IOException {
            a(-1, new c(d.a(c()), c()));
        }

        private boolean g(int i) {
            return i >= 0 && i <= d.f7928a.length - 1;
        }

        private int h() throws IOException {
            return this.f.h() & 255;
        }

        final int a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int h = h();
                if ((h & 128) == 0) {
                    return i2 + (h << i4);
                }
                i2 += (h & 127) << i4;
                i4 += 7;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() throws IOException {
            while (!this.f.e()) {
                int h = this.f.h() & 255;
                if (h == 128) {
                    throw new IOException("index == 0");
                } else if ((h & 128) == 128) {
                    b(a(h, 127) - 1);
                } else if (h == 64) {
                    g();
                } else if ((h & 64) == 64) {
                    e(a(h, 63) - 1);
                } else if ((h & 32) == 32) {
                    int a2 = a(h, 31);
                    this.h = a2;
                    if (a2 < 0 || a2 > this.g) {
                        throw new IOException("Invalid dynamic table size update " + this.h);
                    }
                    d();
                } else if (h == 16 || h == 0) {
                    f();
                } else {
                    d(a(h, 15) - 1);
                }
            }
        }

        public final List<c> b() {
            ArrayList arrayList = new ArrayList(this.e);
            this.e.clear();
            return arrayList;
        }

        final f c() throws IOException {
            int h = h();
            boolean z = (h & 128) == 128;
            int a2 = a(h, 127);
            return z ? f.a(k.a().a(this.f.g(a2))) : this.f.c(a2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/d$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        int f7934a;

        /* renamed from: b  reason: collision with root package name */
        int f7935b;

        /* renamed from: c  reason: collision with root package name */
        c[] f7936c;

        /* renamed from: d  reason: collision with root package name */
        int f7937d;
        int e;
        int f;
        private final c g;
        private final boolean h;
        private int i;
        private boolean j;

        b(int i, boolean z, c cVar) {
            this.i = Integer.MAX_VALUE;
            c[] cVarArr = new c[8];
            this.f7936c = cVarArr;
            this.f7937d = cVarArr.length - 1;
            this.e = 0;
            this.f = 0;
            this.f7934a = i;
            this.f7935b = i;
            this.h = z;
            this.g = cVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(c cVar) {
            this(4096, true, cVar);
        }

        private void a() {
            Arrays.fill(this.f7936c, (Object) null);
            this.f7937d = this.f7936c.length - 1;
            this.e = 0;
            this.f = 0;
        }

        private void a(c cVar) {
            int i = cVar.i;
            int i2 = this.f7935b;
            if (i > i2) {
                a();
                return;
            }
            b((this.f + i) - i2);
            int i3 = this.e;
            c[] cVarArr = this.f7936c;
            if (i3 + 1 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f7937d = this.f7936c.length - 1;
                this.f7936c = cVarArr2;
            }
            int i4 = this.f7937d;
            this.f7937d = i4 - 1;
            this.f7936c[i4] = cVar;
            this.e++;
            this.f += i;
        }

        private int b(int i) {
            int i2;
            int i3 = 0;
            int i4 = 0;
            if (i > 0) {
                int length = this.f7936c.length - 1;
                int i5 = i;
                while (true) {
                    i2 = this.f7937d;
                    if (length < i2 || i5 <= 0) {
                        break;
                    }
                    i5 -= this.f7936c[length].i;
                    this.f -= this.f7936c[length].i;
                    this.e--;
                    i4++;
                    length--;
                }
                c[] cVarArr = this.f7936c;
                System.arraycopy(cVarArr, i2 + 1, cVarArr, i2 + 1 + i4, this.e);
                c[] cVarArr2 = this.f7936c;
                int i6 = this.f7937d;
                Arrays.fill(cVarArr2, i6 + 1, i6 + 1 + i4, (Object) null);
                this.f7937d += i4;
                i3 = i4;
            }
            return i3;
        }

        private void b() {
            int i = this.f7935b;
            int i2 = this.f;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                a();
            } else {
                b(i2 - i);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i) {
            this.f7934a = i;
            int min = Math.min(i, 16384);
            int i2 = this.f7935b;
            if (i2 != min) {
                if (min < i2) {
                    this.i = Math.min(this.i, min);
                }
                this.j = true;
                this.f7935b = min;
                b();
            }
        }

        final void a(int i, int i2, int i3) {
            if (i < i2) {
                this.g.i(i | i3);
                return;
            }
            this.g.i(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.g.i(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.g.i(i4);
        }

        final void a(f fVar) throws IOException {
            if (!this.h || k.a().a(fVar) >= fVar.g()) {
                a(fVar.g(), 127, 0);
                this.g.a(fVar);
                return;
            }
            c cVar = new c();
            k.a().a(fVar, cVar);
            f n = cVar.n();
            a(n.g(), 127, 128);
            this.g.a(n);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(List<c> list) throws IOException {
            int i;
            int i2;
            if (this.j) {
                int i3 = this.i;
                if (i3 < this.f7935b) {
                    a(i3, 31, 32);
                }
                this.j = false;
                this.i = Integer.MAX_VALUE;
                a(this.f7935b, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                c cVar = list.get(i4);
                f f = cVar.g.f();
                f fVar = cVar.h;
                Integer num = d.f7929b.get(f);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (com.bytedance.sdk.a.b.a.c.a(d.f7928a[i - 1].h, fVar)) {
                            i2 = i;
                        } else if (com.bytedance.sdk.a.b.a.c.a(d.f7928a[i].h, fVar)) {
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
                    int i7 = this.f7937d + 1;
                    int length = this.f7936c.length;
                    while (true) {
                        i5 = i;
                        i6 = i2;
                        if (i7 >= length) {
                            break;
                        }
                        i2 = i2;
                        if (com.bytedance.sdk.a.b.a.c.a(this.f7936c[i7].g, f)) {
                            if (com.bytedance.sdk.a.b.a.c.a(this.f7936c[i7].h, fVar)) {
                                i5 = d.f7928a.length + (i7 - this.f7937d);
                                i6 = i2;
                                break;
                            }
                            i2 = i2;
                            if (i2 == -1) {
                                i2 = (i7 - this.f7937d) + d.f7928a.length;
                            }
                        }
                        i7++;
                    }
                }
                if (i5 != -1) {
                    a(i5, 127, 128);
                } else if (i6 == -1) {
                    this.g.i(64);
                    a(f);
                    a(fVar);
                    a(cVar);
                } else if (!f.a(c.f7924a) || c.f.equals(f)) {
                    a(i6, 63, 64);
                    a(fVar);
                    a(cVar);
                } else {
                    a(i6, 15, 0);
                    a(fVar);
                }
            }
        }
    }

    static f a(f fVar) throws IOException {
        int g = fVar.g();
        for (int i = 0; i < g; i++) {
            byte a2 = fVar.a(i);
            if (a2 >= 65 && a2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.a());
            }
        }
        return fVar;
    }

    private static Map<f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f7928a.length);
        int i = 0;
        while (true) {
            c[] cVarArr = f7928a;
            if (i >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i].g)) {
                linkedHashMap.put(cVarArr[i].g, Integer.valueOf(i));
            }
            i++;
        }
    }
}
