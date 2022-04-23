package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.i */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/i.class */
public final class C9676i extends AbstractC9715v.AbstractC9723d.AbstractC9728c {

    /* renamed from: a */
    public final int f22040a;

    /* renamed from: b */
    public final String f22041b;

    /* renamed from: c */
    public final int f22042c;

    /* renamed from: d */
    public final long f22043d;

    /* renamed from: e */
    public final long f22044e;

    /* renamed from: f */
    public final boolean f22045f;

    /* renamed from: g */
    public final int f22046g;

    /* renamed from: h */
    public final String f22047h;

    /* renamed from: i */
    public final String f22048i;

    /* renamed from: h.i.c.n.d.j.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/i$b.class */
    public static final class C9678b extends AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a {

        /* renamed from: a */
        public Integer f22049a;

        /* renamed from: b */
        public String f22050b;

        /* renamed from: c */
        public Integer f22051c;

        /* renamed from: d */
        public Long f22052d;

        /* renamed from: e */
        public Long f22053e;

        /* renamed from: f */
        public Boolean f22054f;

        /* renamed from: g */
        public Integer f22055g;

        /* renamed from: h */
        public String f22056h;

        /* renamed from: i */
        public String f22057i;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14518a(int i) {
            this.f22049a = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14517a(long j) {
            this.f22053e = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14516a(String str) {
            if (str != null) {
                this.f22056h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14515a(boolean z) {
            this.f22054f = Boolean.valueOf(z);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c mo14519a() {
            String str = "";
            if (this.f22049a == null) {
                str = " arch";
            }
            String str2 = str;
            if (this.f22050b == null) {
                str2 = str + " model";
            }
            String str3 = str2;
            if (this.f22051c == null) {
                str3 = str2 + " cores";
            }
            String str4 = str3;
            if (this.f22052d == null) {
                str4 = str3 + " ram";
            }
            String str5 = str4;
            if (this.f22053e == null) {
                str5 = str4 + " diskSpace";
            }
            String str6 = str5;
            if (this.f22054f == null) {
                str6 = str5 + " simulator";
            }
            String str7 = str6;
            if (this.f22055g == null) {
                str7 = str6 + " state";
            }
            String str8 = str7;
            if (this.f22056h == null) {
                str8 = str7 + " manufacturer";
            }
            String str9 = str8;
            if (this.f22057i == null) {
                str9 = str8 + " modelClass";
            }
            if (str9.isEmpty()) {
                return new C9676i(this.f22049a.intValue(), this.f22050b, this.f22051c.intValue(), this.f22052d.longValue(), this.f22053e.longValue(), this.f22054f.booleanValue(), this.f22055g.intValue(), this.f22056h, this.f22057i);
            }
            throw new IllegalStateException("Missing required properties:" + str9);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14514b(int i) {
            this.f22051c = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14513b(long j) {
            this.f22052d = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14512b(String str) {
            if (str != null) {
                this.f22050b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: c */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14511c(int i) {
            this.f22055g = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a
        /* renamed from: c */
        public AbstractC9715v.AbstractC9723d.AbstractC9728c.AbstractC9729a mo14510c(String str) {
            if (str != null) {
                this.f22057i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }
    }

    public C9676i(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f22040a = i;
        this.f22041b = str;
        this.f22042c = i2;
        this.f22043d = j;
        this.f22044e = j2;
        this.f22045f = z;
        this.f22046g = i3;
        this.f22047h = str2;
        this.f22048i = str3;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    @NonNull
    /* renamed from: a */
    public int mo14529a() {
        return this.f22040a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    /* renamed from: b */
    public int mo14528b() {
        return this.f22042c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    /* renamed from: c */
    public long mo14527c() {
        return this.f22044e;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    @NonNull
    /* renamed from: d */
    public String mo14526d() {
        return this.f22047h;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    @NonNull
    /* renamed from: e */
    public String mo14525e() {
        return this.f22041b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9728c)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9728c cVar = (AbstractC9715v.AbstractC9723d.AbstractC9728c) obj;
        if (!(this.f22040a == cVar.mo14529a() && this.f22041b.equals(cVar.mo14525e()) && this.f22042c == cVar.mo14528b() && this.f22043d == cVar.mo14523g() && this.f22044e == cVar.mo14527c() && this.f22045f == cVar.mo14521i() && this.f22046g == cVar.mo14522h() && this.f22047h.equals(cVar.mo14526d()) && this.f22048i.equals(cVar.mo14524f()))) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    @NonNull
    /* renamed from: f */
    public String mo14524f() {
        return this.f22048i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    /* renamed from: g */
    public long mo14523g() {
        return this.f22043d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    /* renamed from: h */
    public int mo14522h() {
        return this.f22046g;
    }

    public int hashCode() {
        int i = this.f22040a;
        int hashCode = this.f22041b.hashCode();
        int i2 = this.f22042c;
        long j = this.f22043d;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.f22044e;
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f22045f ? 1231 : 1237)) * 1000003) ^ this.f22046g) * 1000003) ^ this.f22047h.hashCode()) * 1000003) ^ this.f22048i.hashCode();
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9728c
    /* renamed from: i */
    public boolean mo14521i() {
        return this.f22045f;
    }

    public String toString() {
        return "Device{arch=" + this.f22040a + ", model=" + this.f22041b + ", cores=" + this.f22042c + ", ram=" + this.f22043d + ", diskSpace=" + this.f22044e + ", simulator=" + this.f22045f + ", state=" + this.f22046g + ", manufacturer=" + this.f22047h + ", modelClass=" + this.f22048i + CssParser.BLOCK_END;
    }
}
