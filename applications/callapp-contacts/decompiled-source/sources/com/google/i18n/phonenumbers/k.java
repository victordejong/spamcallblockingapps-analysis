package com.google.i18n.phonenumbers;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k.class */
public final class k {

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k$a.class */
    public static class a implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        public boolean f32892c;
        boolean g;
        boolean i;
        boolean k;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;

        /* renamed from: a  reason: collision with root package name */
        public int f32890a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f32891b = 0;

        /* renamed from: d  reason: collision with root package name */
        public String f32893d = "";
        boolean e = false;
        int f = 1;
        String h = "";
        String l = "";
        EnumC0527a j = EnumC0527a.UNSPECIFIED;

        /* renamed from: com.google.i18n.phonenumbers.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k$a$a.class */
        public enum EnumC0527a {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        public final a a() {
            this.f32892c = false;
            this.f32893d = "";
            return this;
        }

        public final a a(int i) {
            this.m = true;
            this.f32890a = i;
            return this;
        }

        public final a a(long j) {
            this.n = true;
            this.f32891b = j;
            return this;
        }

        public final a a(EnumC0527a aVar) {
            Objects.requireNonNull(aVar);
            this.i = true;
            this.j = aVar;
            return this;
        }

        public final a a(a aVar) {
            if (aVar.m) {
                a(aVar.f32890a);
            }
            if (aVar.n) {
                a(aVar.f32891b);
            }
            if (aVar.f32892c) {
                a(aVar.f32893d);
            }
            if (aVar.o) {
                a(aVar.e);
            }
            if (aVar.p) {
                b(aVar.f);
            }
            if (aVar.g) {
                b(aVar.h);
            }
            if (aVar.i) {
                a(aVar.j);
            }
            if (aVar.k) {
                c(aVar.l);
            }
            return this;
        }

        public final a a(String str) {
            Objects.requireNonNull(str);
            this.f32892c = true;
            this.f32893d = str;
            return this;
        }

        public final a a(boolean z) {
            this.o = true;
            this.e = z;
            return this;
        }

        public final a b() {
            this.i = false;
            this.j = EnumC0527a.UNSPECIFIED;
            return this;
        }

        public final a b(int i) {
            this.p = true;
            this.f = i;
            return this;
        }

        public final a b(String str) {
            Objects.requireNonNull(str);
            this.g = true;
            this.h = str;
            return this;
        }

        public final boolean b(a aVar) {
            if (aVar == null) {
                return false;
            }
            if (this == aVar) {
                return true;
            }
            return this.f32890a == aVar.f32890a && this.f32891b == aVar.f32891b && this.f32893d.equals(aVar.f32893d) && this.e == aVar.e && this.f == aVar.f && this.h.equals(aVar.h) && this.j == aVar.j && this.l.equals(aVar.l) && this.k == aVar.k;
        }

        public final a c(String str) {
            Objects.requireNonNull(str);
            this.k = true;
            this.l = str;
            return this;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && b((a) obj);
        }

        public int hashCode() {
            int i = this.f32890a;
            int hashCode = Long.valueOf(this.f32891b).hashCode();
            int hashCode2 = this.f32893d.hashCode();
            int i2 = 1231;
            int i3 = this.e ? 1231 : 1237;
            int i4 = this.f;
            int hashCode3 = this.h.hashCode();
            int hashCode4 = this.j.hashCode();
            int hashCode5 = this.l.hashCode();
            if (!this.k) {
                i2 = 1237;
            }
            return ((((((((((((((((i + 2173) * 53) + hashCode) * 53) + hashCode2) * 53) + i3) * 53) + i4) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f32890a);
            sb.append(" National Number: ");
            sb.append(this.f32891b);
            if (this.o && this.e) {
                sb.append(" Leading Zero(s): true");
            }
            if (this.p) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f);
            }
            if (this.f32892c) {
                sb.append(" Extension: ");
                sb.append(this.f32893d);
            }
            if (this.i) {
                sb.append(" Country Code Source: ");
                sb.append(this.j);
            }
            if (this.k) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.l);
            }
            return sb.toString();
        }
    }

    private k() {
    }
}
