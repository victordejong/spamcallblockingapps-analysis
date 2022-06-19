package com.raizlabs.android.dbflow.config;

import android.util.Log;
/* renamed from: com.raizlabs.android.dbflow.config.f */
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f.class */
public class C2120f {

    /* renamed from: com.raizlabs.android.dbflow.config.f$b */
    /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b.class */
    public static abstract class EnumC2122b extends Enum<EnumC2122b> {

        /* renamed from: a */
        public static final EnumC2122b f7693a;

        /* renamed from: b */
        public static final EnumC2122b f7694b;

        /* renamed from: c */
        public static final EnumC2122b f7695c;

        /* renamed from: d */
        public static final EnumC2122b f7696d;

        /* renamed from: e */
        public static final /* synthetic */ EnumC2122b[] f7697e;

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$a */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$a.class */
        public static final class C2123a extends EnumC2122b {
            public C2123a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
            }
        }

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$b */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$b.class */
        public static final class C2124b extends EnumC2122b {
            public C2124b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
            }
        }

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$c */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$c.class */
        public static final class C2125c extends EnumC2122b {
            public C2125c(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
                Log.i(str, str2, th);
            }
        }

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$d */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$d.class */
        public static final class C2126d extends EnumC2122b {
            public C2126d(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
                Log.w(str, str2, th);
            }
        }

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$e */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$e.class */
        public static final class C2127e extends EnumC2122b {
            public C2127e(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
            }
        }

        /* renamed from: com.raizlabs.android.dbflow.config.f$b$f */
        /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/f$b$f.class */
        public static final class C2128f extends EnumC2122b {
            public C2128f(String str, int i) {
                super(str, i, null);
            }

            @Override // com.raizlabs.android.dbflow.config.C2120f.EnumC2122b
            /* renamed from: a */
            public void mo3887a(String str, String str2, Throwable th) {
                Log.wtf(str, str2, th);
            }
        }

        static {
            C2123a c2123a = new C2123a("V", 0);
            f7693a = c2123a;
            C2124b c2124b = new C2124b("D", 1);
            C2125c c2125c = new C2125c("I", 2);
            f7694b = c2125c;
            C2126d c2126d = new C2126d("W", 3);
            f7695c = c2126d;
            C2127e c2127e = new C2127e("E", 4);
            f7696d = c2127e;
            f7697e = new EnumC2122b[]{c2123a, c2124b, c2125c, c2126d, c2127e, new C2128f("WTF", 5)};
        }

        public EnumC2122b(String str, int i, C2121a c2121a) {
            super(str, i);
        }

        public static EnumC2122b valueOf(String str) {
            return (EnumC2122b) Enum.valueOf(EnumC2122b.class, str);
        }

        public static EnumC2122b[] values() {
            return (EnumC2122b[]) f7697e.clone();
        }

        /* renamed from: a */
        public abstract void mo3887a(String str, String str2, Throwable th);
    }

    /* renamed from: a */
    public static void m3889a(EnumC2122b enumC2122b, String str, Throwable th) {
        if (enumC2122b.ordinal() >= 4) {
            enumC2122b.mo3887a("f", str, th);
        }
    }

    /* renamed from: b */
    public static void m3888b(EnumC2122b enumC2122b, Throwable th) {
        if (enumC2122b.ordinal() >= 4) {
            enumC2122b.mo3887a("f", "", th);
        }
    }
}
