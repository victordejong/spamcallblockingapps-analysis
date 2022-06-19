package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.C4132r;
import java.io.Closeable;
/* renamed from: com.bytedance.sdk.a.b.aa */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/aa.class */
public final class C4098aa implements Closeable {

    /* renamed from: a */
    final C4146y f14876a;

    /* renamed from: b */
    final EnumC4143w f14877b;

    /* renamed from: c */
    final int f14878c;

    /* renamed from: d */
    final String f14879d;

    /* renamed from: e */
    final C4131q f14880e;

    /* renamed from: f */
    final C4132r f14881f;

    /* renamed from: g */
    final AbstractC4100ab f14882g;

    /* renamed from: h */
    final C4098aa f14883h;

    /* renamed from: i */
    final C4098aa f14884i;

    /* renamed from: j */
    final C4098aa f14885j;

    /* renamed from: k */
    final long f14886k;

    /* renamed from: l */
    final long f14887l;

    /* renamed from: m */
    private volatile C4107d f14888m;

    /* renamed from: com.bytedance.sdk.a.b.aa$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/aa$a.class */
    public static class C4099a {

        /* renamed from: a */
        C4146y f14889a;

        /* renamed from: b */
        EnumC4143w f14890b;

        /* renamed from: c */
        int f14891c;

        /* renamed from: d */
        String f14892d;

        /* renamed from: e */
        C4131q f14893e;

        /* renamed from: f */
        C4132r.C4133a f14894f;

        /* renamed from: g */
        AbstractC4100ab f14895g;

        /* renamed from: h */
        C4098aa f14896h;

        /* renamed from: i */
        C4098aa f14897i;

        /* renamed from: j */
        C4098aa f14898j;

        /* renamed from: k */
        long f14899k;

        /* renamed from: l */
        long f14900l;

        public C4099a() {
            this.f14891c = -1;
            this.f14894f = new C4132r.C4133a();
        }

        C4099a(C4098aa c4098aa) {
            this.f14891c = -1;
            this.f14889a = c4098aa.f14876a;
            this.f14890b = c4098aa.f14877b;
            this.f14891c = c4098aa.f14878c;
            this.f14892d = c4098aa.f14879d;
            this.f14893e = c4098aa.f14880e;
            this.f14894f = c4098aa.f14881f.m36464c();
            this.f14895g = c4098aa.f14882g;
            this.f14896h = c4098aa.f14883h;
            this.f14897i = c4098aa.f14884i;
            this.f14898j = c4098aa.f14885j;
            this.f14899k = c4098aa.f14886k;
            this.f14900l = c4098aa.f14887l;
        }

        /* renamed from: a */
        private void m36589a(String str, C4098aa c4098aa) {
            if (c4098aa.f14882g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (c4098aa.f14883h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (c4098aa.f14884i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (c4098aa.f14885j == null) {
            } else {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: d */
        private void m36584d(C4098aa c4098aa) {
            if (c4098aa.f14882g == null) {
                return;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        /* renamed from: a */
        public C4099a m36598a(int i) {
            this.f14891c = i;
            return this;
        }

        /* renamed from: a */
        public C4099a m36597a(long j) {
            this.f14899k = j;
            return this;
        }

        /* renamed from: a */
        public C4099a m36596a(C4098aa c4098aa) {
            if (c4098aa != null) {
                m36589a("networkResponse", c4098aa);
            }
            this.f14896h = c4098aa;
            return this;
        }

        /* renamed from: a */
        public C4099a m36595a(AbstractC4100ab abstractC4100ab) {
            this.f14895g = abstractC4100ab;
            return this;
        }

        /* renamed from: a */
        public C4099a m36594a(C4131q c4131q) {
            this.f14893e = c4131q;
            return this;
        }

        /* renamed from: a */
        public C4099a m36593a(C4132r c4132r) {
            this.f14894f = c4132r.m36464c();
            return this;
        }

        /* renamed from: a */
        public C4099a m36592a(EnumC4143w enumC4143w) {
            this.f14890b = enumC4143w;
            return this;
        }

        /* renamed from: a */
        public C4099a m36591a(C4146y c4146y) {
            this.f14889a = c4146y;
            return this;
        }

        /* renamed from: a */
        public C4099a m36590a(String str) {
            this.f14892d = str;
            return this;
        }

        /* renamed from: a */
        public C4099a m36588a(String str, String str2) {
            this.f14894f.m36461a(str, str2);
            return this;
        }

        /* renamed from: a */
        public C4098aa m36599a() {
            if (this.f14889a != null) {
                if (this.f14890b == null) {
                    throw new IllegalStateException("protocol == null");
                }
                if (this.f14891c >= 0) {
                    if (this.f14892d == null) {
                        throw new IllegalStateException("message == null");
                    }
                    return new C4098aa(this);
                }
                throw new IllegalStateException("code < 0: " + this.f14891c);
            }
            throw new IllegalStateException("request == null");
        }

        /* renamed from: b */
        public C4099a m36587b(long j) {
            this.f14900l = j;
            return this;
        }

        /* renamed from: b */
        public C4099a m36586b(C4098aa c4098aa) {
            if (c4098aa != null) {
                m36589a("cacheResponse", c4098aa);
            }
            this.f14897i = c4098aa;
            return this;
        }

        /* renamed from: c */
        public C4099a m36585c(C4098aa c4098aa) {
            if (c4098aa != null) {
                m36584d(c4098aa);
            }
            this.f14898j = c4098aa;
            return this;
        }
    }

    C4098aa(C4099a c4099a) {
        this.f14876a = c4099a.f14889a;
        this.f14877b = c4099a.f14890b;
        this.f14878c = c4099a.f14891c;
        this.f14879d = c4099a.f14892d;
        this.f14880e = c4099a.f14893e;
        this.f14881f = c4099a.f14894f.m36463a();
        this.f14882g = c4099a.f14895g;
        this.f14883h = c4099a.f14896h;
        this.f14884i = c4099a.f14897i;
        this.f14885j = c4099a.f14898j;
        this.f14886k = c4099a.f14899k;
        this.f14887l = c4099a.f14900l;
    }

    /* renamed from: a */
    public final C4146y m36614a() {
        return this.f14876a;
    }

    /* renamed from: a */
    public final String m36613a(String str) {
        return m36612a(str, null);
    }

    /* renamed from: a */
    public final String m36612a(String str, String str2) {
        String m36469a = this.f14881f.m36469a(str);
        return m36469a != null ? m36469a : str2;
    }

    /* renamed from: b */
    public final EnumC4143w m36611b() {
        return this.f14877b;
    }

    /* renamed from: c */
    public final int m36610c() {
        return this.f14878c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        AbstractC4100ab abstractC4100ab = this.f14882g;
        if (abstractC4100ab != null) {
            abstractC4100ab.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    /* renamed from: d */
    public final boolean m36609d() {
        int i = this.f14878c;
        return i >= 200 && i < 300;
    }

    /* renamed from: e */
    public final String m36608e() {
        return this.f14879d;
    }

    /* renamed from: f */
    public final C4131q m36607f() {
        return this.f14880e;
    }

    /* renamed from: g */
    public final C4132r m36606g() {
        return this.f14881f;
    }

    /* renamed from: h */
    public final AbstractC4100ab m36605h() {
        return this.f14882g;
    }

    /* renamed from: i */
    public final C4099a m36604i() {
        return new C4099a(this);
    }

    /* renamed from: j */
    public final C4098aa m36603j() {
        return this.f14885j;
    }

    /* renamed from: k */
    public final C4107d m36602k() {
        C4107d c4107d = this.f14888m;
        if (c4107d != null) {
            return c4107d;
        }
        C4107d m36567a = C4107d.m36567a(this.f14881f);
        this.f14888m = m36567a;
        return m36567a;
    }

    /* renamed from: l */
    public final long m36601l() {
        return this.f14886k;
    }

    /* renamed from: m */
    public final long m36600m() {
        return this.f14887l;
    }

    public final String toString() {
        return "Response{protocol=" + this.f14877b + ", code=" + this.f14878c + ", message=" + this.f14879d + ", url=" + this.f14876a.m36341a() + '}';
    }
}
