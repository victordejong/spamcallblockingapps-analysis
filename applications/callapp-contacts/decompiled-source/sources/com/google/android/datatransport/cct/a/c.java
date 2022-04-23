package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/c.class */
final class c extends com.google.android.datatransport.cct.a.a {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f20339a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20340b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20341c;

    /* renamed from: d  reason: collision with root package name */
    private final String f20342d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/c$a.class */
    public static final class a extends a.AbstractC0412a {

        /* renamed from: a  reason: collision with root package name */
        private Integer f20343a;

        /* renamed from: b  reason: collision with root package name */
        private String f20344b;

        /* renamed from: c  reason: collision with root package name */
        private String f20345c;

        /* renamed from: d  reason: collision with root package name */
        private String f20346d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a a(Integer num) {
            this.f20343a = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a a(String str) {
            this.f20344b = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final com.google.android.datatransport.cct.a.a a() {
            return new c(this.f20343a, this.f20344b, this.f20345c, this.f20346d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a b(String str) {
            this.f20345c = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a c(String str) {
            this.f20346d = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a d(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a e(String str) {
            this.f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a f(String str) {
            this.g = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a g(String str) {
            this.h = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a h(String str) {
            this.j = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a i(String str) {
            this.i = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a j(String str) {
            this.k = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.a.AbstractC0412a
        public final a.AbstractC0412a k(String str) {
            this.l = str;
            return this;
        }
    }

    private c(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f20339a = num;
        this.f20340b = str;
        this.f20341c = str2;
        this.f20342d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final Integer a() {
        return this.f20339a;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String b() {
        return this.f20340b;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String c() {
        return this.f20341c;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String d() {
        return this.f20342d;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.android.datatransport.cct.a.a)) {
            return false;
        }
        com.google.android.datatransport.cct.a.a aVar = (com.google.android.datatransport.cct.a.a) obj;
        Integer num = this.f20339a;
        if (num == null) {
            if (aVar.a() != null) {
                return false;
            }
        } else if (!num.equals(aVar.a())) {
            return false;
        }
        String str = this.f20340b;
        if (str == null) {
            if (aVar.b() != null) {
                return false;
            }
        } else if (!str.equals(aVar.b())) {
            return false;
        }
        String str2 = this.f20341c;
        if (str2 == null) {
            if (aVar.c() != null) {
                return false;
            }
        } else if (!str2.equals(aVar.c())) {
            return false;
        }
        String str3 = this.f20342d;
        if (str3 == null) {
            if (aVar.d() != null) {
                return false;
            }
        } else if (!str3.equals(aVar.d())) {
            return false;
        }
        String str4 = this.e;
        if (str4 == null) {
            if (aVar.e() != null) {
                return false;
            }
        } else if (!str4.equals(aVar.e())) {
            return false;
        }
        String str5 = this.f;
        if (str5 == null) {
            if (aVar.f() != null) {
                return false;
            }
        } else if (!str5.equals(aVar.f())) {
            return false;
        }
        String str6 = this.g;
        if (str6 == null) {
            if (aVar.g() != null) {
                return false;
            }
        } else if (!str6.equals(aVar.g())) {
            return false;
        }
        String str7 = this.h;
        if (str7 == null) {
            if (aVar.h() != null) {
                return false;
            }
        } else if (!str7.equals(aVar.h())) {
            return false;
        }
        String str8 = this.i;
        if (str8 == null) {
            if (aVar.i() != null) {
                return false;
            }
        } else if (!str8.equals(aVar.i())) {
            return false;
        }
        String str9 = this.j;
        if (str9 == null) {
            if (aVar.j() != null) {
                return false;
            }
        } else if (!str9.equals(aVar.j())) {
            return false;
        }
        String str10 = this.k;
        if (str10 == null) {
            if (aVar.k() != null) {
                return false;
            }
        } else if (!str10.equals(aVar.k())) {
            return false;
        }
        String str11 = this.l;
        return str11 == null ? aVar.l() == null : str11.equals(aVar.l());
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String f() {
        return this.f;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String g() {
        return this.g;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String h() {
        return this.h;
    }

    public final int hashCode() {
        Integer num = this.f20339a;
        int i = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        String str = this.f20340b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f20341c;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f20342d;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.e;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.f;
        int hashCode6 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.g;
        int hashCode7 = str6 == null ? 0 : str6.hashCode();
        String str7 = this.h;
        int hashCode8 = str7 == null ? 0 : str7.hashCode();
        String str8 = this.i;
        int hashCode9 = str8 == null ? 0 : str8.hashCode();
        String str9 = this.j;
        int hashCode10 = str9 == null ? 0 : str9.hashCode();
        String str10 = this.k;
        int hashCode11 = str10 == null ? 0 : str10.hashCode();
        String str11 = this.l;
        if (str11 != null) {
            i = str11.hashCode();
        }
        return ((((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ hashCode8) * 1000003) ^ hashCode9) * 1000003) ^ hashCode10) * 1000003) ^ hashCode11) * 1000003) ^ i;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String i() {
        return this.i;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String j() {
        return this.j;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String k() {
        return this.k;
    }

    @Override // com.google.android.datatransport.cct.a.a
    public final String l() {
        return this.l;
    }

    public final String toString() {
        return "AndroidClientInfo{sdkVersion=" + this.f20339a + ", model=" + this.f20340b + ", hardware=" + this.f20341c + ", device=" + this.f20342d + ", product=" + this.e + ", osBuild=" + this.f + ", manufacturer=" + this.g + ", fingerprint=" + this.h + ", locale=" + this.i + ", country=" + this.j + ", mccMnc=" + this.k + ", applicationBuild=" + this.l + "}";
    }
}
