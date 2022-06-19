package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/i.class */
final class C8965i extends AbstractC9004v.AbstractC9012d.AbstractC9017c {

    /* renamed from: a */
    private final int f39085a;

    /* renamed from: b */
    private final String f39086b;

    /* renamed from: c */
    private final int f39087c;

    /* renamed from: d */
    private final long f39088d;

    /* renamed from: e */
    private final long f39089e;

    /* renamed from: f */
    private final boolean f39090f;

    /* renamed from: g */
    private final int f39091g;

    /* renamed from: h */
    private final String f39092h;

    /* renamed from: i */
    private final String f39093i;

    /* renamed from: com.google.firebase.crashlytics.d.h.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/i$b.class */
    public static final class C8967b extends AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a {

        /* renamed from: a */
        private Integer f39094a;

        /* renamed from: b */
        private String f39095b;

        /* renamed from: c */
        private Integer f39096c;

        /* renamed from: d */
        private Long f39097d;

        /* renamed from: e */
        private Long f39098e;

        /* renamed from: f */
        private Boolean f39099f;

        /* renamed from: g */
        private Integer f39100g;

        /* renamed from: h */
        private String f39101h;

        /* renamed from: i */
        private String f39102i;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c mo2214a() {
            String str = "";
            if (this.f39094a == null) {
                str = " arch";
            }
            String str2 = str;
            if (this.f39095b == null) {
                str2 = str + " model";
            }
            String str3 = str2;
            if (this.f39096c == null) {
                str3 = str2 + " cores";
            }
            String str4 = str3;
            if (this.f39097d == null) {
                str4 = str3 + " ram";
            }
            String str5 = str4;
            if (this.f39098e == null) {
                str5 = str4 + " diskSpace";
            }
            String str6 = str5;
            if (this.f39099f == null) {
                str6 = str5 + " simulator";
            }
            String str7 = str6;
            if (this.f39100g == null) {
                str7 = str6 + " state";
            }
            String str8 = str7;
            if (this.f39101h == null) {
                str8 = str7 + " manufacturer";
            }
            String str9 = str8;
            if (this.f39102i == null) {
                str9 = str8 + " modelClass";
            }
            if (str9.isEmpty()) {
                return new C8965i(this.f39094a.intValue(), this.f39095b, this.f39096c.intValue(), this.f39097d.longValue(), this.f39098e.longValue(), this.f39099f.booleanValue(), this.f39100g.intValue(), this.f39101h, this.f39102i);
            }
            throw new IllegalStateException("Missing required properties:" + str9);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2213b(int i) {
            this.f39094a = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2212c(int i) {
            this.f39096c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2211d(long j) {
            this.f39098e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2210e(String str) {
            Objects.requireNonNull(str, "Null manufacturer");
            this.f39101h = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2209f(String str) {
            Objects.requireNonNull(str, "Null model");
            this.f39095b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: g */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2208g(String str) {
            Objects.requireNonNull(str, "Null modelClass");
            this.f39102i = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: h */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2207h(long j) {
            this.f39097d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: i */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2206i(boolean z) {
            this.f39099f = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a
        /* renamed from: j */
        public AbstractC9004v.AbstractC9012d.AbstractC9017c.AbstractC9018a mo2205j(int i) {
            this.f39100g = Integer.valueOf(i);
            return this;
        }
    }

    private C8965i(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f39085a = i;
        this.f39086b = str;
        this.f39087c = i2;
        this.f39088d = j;
        this.f39089e = j2;
        this.f39090f = z;
        this.f39091g = i3;
        this.f39092h = str2;
        this.f39093i = str3;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: b */
    public int mo2223b() {
        return this.f39085a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: c */
    public int mo2222c() {
        return this.f39087c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: d */
    public long mo2221d() {
        return this.f39089e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: e */
    public String mo2220e() {
        return this.f39092h;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9017c)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9017c abstractC9017c = (AbstractC9004v.AbstractC9012d.AbstractC9017c) obj;
        if (this.f39085a != abstractC9017c.mo2223b() || !this.f39086b.equals(abstractC9017c.mo2219f()) || this.f39087c != abstractC9017c.mo2222c() || this.f39088d != abstractC9017c.mo2217h() || this.f39089e != abstractC9017c.mo2221d() || this.f39090f != abstractC9017c.mo2215j() || this.f39091g != abstractC9017c.mo2216i() || !this.f39092h.equals(abstractC9017c.mo2220e()) || !this.f39093i.equals(abstractC9017c.mo2218g())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: f */
    public String mo2219f() {
        return this.f39086b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: g */
    public String mo2218g() {
        return this.f39093i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: h */
    public long mo2217h() {
        return this.f39088d;
    }

    public int hashCode() {
        int i = this.f39085a;
        int hashCode = this.f39086b.hashCode();
        int i2 = this.f39087c;
        long j = this.f39088d;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.f39089e;
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f39090f ? 1231 : 1237)) * 1000003) ^ this.f39091g) * 1000003) ^ this.f39092h.hashCode()) * 1000003) ^ this.f39093i.hashCode();
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: i */
    public int mo2216i() {
        return this.f39091g;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9017c
    /* renamed from: j */
    public boolean mo2215j() {
        return this.f39090f;
    }

    public String toString() {
        return "Device{arch=" + this.f39085a + ", model=" + this.f39086b + ", cores=" + this.f39087c + ", ram=" + this.f39088d + ", diskSpace=" + this.f39089e + ", simulator=" + this.f39090f + ", state=" + this.f39091g + ", manufacturer=" + this.f39092h + ", modelClass=" + this.f39093i + "}";
    }
}
