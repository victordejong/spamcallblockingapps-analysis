package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.internal.clearcut.zzab;
import com.google.android.gms.internal.clearcut.zzae;
import com.google.android.gms.internal.clearcut.zzy;
import p012b.p042i.p044i.C0871b;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4355i;
import p131c.p161d.p170b.p224d.p252g.p255c.C4335e;
import p131c.p161d.p170b.p224d.p252g.p255c.C4340f;
import p131c.p161d.p170b.p224d.p252g.p255c.C4345g;
import p131c.p161d.p170b.p224d.p252g.p255c.C4350h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzae.class */
public abstract class zzae<T> {

    /* renamed from: g */
    public static final Object f29210g = new Object();

    /* renamed from: h */
    public static Context f29211h;

    /* renamed from: i */
    public static volatile Boolean f29212i;

    /* renamed from: j */
    public static volatile Boolean f29213j;

    /* renamed from: a */
    public final zzao f29214a;

    /* renamed from: b */
    public final String f29215b;

    /* renamed from: c */
    public final String f29216c;

    /* renamed from: d */
    public final T f29217d;

    /* renamed from: e */
    public volatile zzab f29218e;

    /* renamed from: f */
    public volatile SharedPreferences f29219f;

    public zzae(zzao zzaoVar, String str, T t) {
        String str2;
        String str3;
        String str4;
        String str5;
        Uri uri;
        Uri uri2;
        this.f29218e = null;
        this.f29219f = null;
        str2 = zzaoVar.f29220a;
        if (str2 == null) {
            uri2 = zzaoVar.f29221b;
            if (uri2 == null) {
                throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
            }
        }
        str3 = zzaoVar.f29220a;
        if (str3 != null) {
            uri = zzaoVar.f29221b;
            if (uri != null) {
                throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
            }
        }
        this.f29214a = zzaoVar;
        str4 = zzaoVar.f29222c;
        String valueOf = String.valueOf(str4);
        String valueOf2 = String.valueOf(str);
        this.f29216c = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        str5 = zzaoVar.f29223d;
        String valueOf3 = String.valueOf(str5);
        String valueOf4 = String.valueOf(str);
        this.f29215b = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        this.f29217d = t;
    }

    public /* synthetic */ zzae(zzao zzaoVar, String str, Object obj, C4335e eVar) {
        this(zzaoVar, str, obj);
    }

    /* renamed from: a */
    public static <T> zzae<T> m10859a(zzao zzaoVar, String str, T t, zzan<T> zzanVar) {
        return new C4350h(zzaoVar, str, t, zzanVar);
    }

    /* renamed from: a */
    public static zzae<String> m10858a(zzao zzaoVar, String str, String str2) {
        return new C4345g(zzaoVar, str, str2);
    }

    /* renamed from: a */
    public static zzae<Boolean> m10857a(zzao zzaoVar, String str, boolean z) {
        return new C4340f(zzaoVar, str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    public static <V> V m10860a(AbstractC4355i<V> iVar) {
        V v;
        try {
            v = iVar.mo25903j();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = iVar.mo25903j();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }

    /* renamed from: a */
    public static void m10862a(Context context) {
        Context applicationContext;
        if (f29211h == null) {
            synchronized (f29210g) {
                if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                if (f29211h != context) {
                    f29212i = null;
                }
                f29211h = context;
            }
        }
    }

    /* renamed from: a */
    public static boolean m10855a(String str, boolean z) {
        if (m10847e()) {
            return ((Boolean) m10860a(new AbstractC4355i(str, false) { // from class: c.d.b.d.g.c.d

                /* renamed from: a */
                public final String f16484a;

                /* renamed from: b */
                public final boolean f16485b = false;

                {
                    this.f16484a = str;
                }

                @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4355i
                /* renamed from: j */
                public final Object mo25903j() {
                    Boolean valueOf;
                    valueOf = Boolean.valueOf(zzy.m10529a(zzae.f29211h.getContentResolver(), this.f16484a, this.f16485b));
                    return valueOf;
                }
            })).booleanValue();
        }
        return false;
    }

    /* renamed from: b */
    public static /* synthetic */ zzae m10853b(zzao zzaoVar, String str, Object obj, zzan zzanVar) {
        return m10859a(zzaoVar, str, obj, zzanVar);
    }

    /* renamed from: b */
    public static /* synthetic */ zzae m10852b(zzao zzaoVar, String str, String str2) {
        return m10858a(zzaoVar, str, (String) null);
    }

    /* renamed from: b */
    public static /* synthetic */ zzae m10851b(zzao zzaoVar, String str, boolean z) {
        return m10857a(zzaoVar, str, false);
    }

    /* renamed from: e */
    public static boolean m10847e() {
        if (f29212i == null) {
            Context context = f29211h;
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (C0871b.m35683a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                z = true;
            }
            f29212i = Boolean.valueOf(z);
        }
        return f29212i.booleanValue();
    }

    /* renamed from: a */
    public final T m10863a() {
        boolean z;
        if (f29211h != null) {
            z = this.f29214a.f29225f;
            if (z) {
                T c = m10849c();
                if (c != null) {
                    return c;
                }
                T b = m10854b();
                if (b != null) {
                    return b;
                }
            } else {
                T b2 = m10854b();
                if (b2 != null) {
                    return b2;
                }
                T c2 = m10849c();
                if (c2 != null) {
                    return c2;
                }
            }
            return this.f29217d;
        }
        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
    }

    /* renamed from: a */
    public abstract T mo10861a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo10856a(String str);

    /* renamed from: b */
    public final T m10854b() {
        Uri uri;
        String str;
        boolean z;
        String str2;
        Uri uri2;
        if (!m10855a("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            uri = this.f29214a.f29221b;
            if (uri != null) {
                if (this.f29218e == null) {
                    ContentResolver contentResolver = f29211h.getContentResolver();
                    uri2 = this.f29214a.f29221b;
                    this.f29218e = zzab.m10869a(contentResolver, uri2);
                }
                String str3 = (String) m10860a(new AbstractC4355i(this, this.f29218e) { // from class: c.d.b.d.g.c.b

                    /* renamed from: a */
                    public final zzae f16481a;

                    /* renamed from: b */
                    public final zzab f16482b;

                    {
                        this.f16481a = this;
                        this.f16482b = r5;
                    }

                    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4355i
                    /* renamed from: j */
                    public final Object mo25903j() {
                        return this.f16482b.m10870a().get(this.f16481a.f29215b);
                    }
                });
                if (str3 != null) {
                    return mo10856a(str3);
                }
                return null;
            }
            str = this.f29214a.f29220a;
            if (str == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT < 24 || f29211h.isDeviceProtectedStorage()) {
                z = true;
            } else {
                if (f29213j == null || !f29213j.booleanValue()) {
                    f29213j = Boolean.valueOf(((UserManager) f29211h.getSystemService(UserManager.class)).isUserUnlocked());
                }
                z = f29213j.booleanValue();
            }
            if (!z) {
                return null;
            }
            if (this.f29219f == null) {
                Context context = f29211h;
                str2 = this.f29214a.f29220a;
                this.f29219f = context.getSharedPreferences(str2, 0);
            }
            SharedPreferences sharedPreferences = this.f29219f;
            if (sharedPreferences.contains(this.f29215b)) {
                return mo10861a(sharedPreferences);
            }
            return null;
        }
        String valueOf = String.valueOf(this.f29215b);
        Log.w("PhenotypeFlag", valueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(valueOf) : new String("Bypass reading Phenotype values for flag: "));
        return null;
    }

    /* renamed from: c */
    public final T m10849c() {
        boolean z;
        String str;
        z = this.f29214a.f29224e;
        if (z || !m10847e() || (str = (String) m10860a(new AbstractC4355i(this) { // from class: c.d.b.d.g.c.c

            /* renamed from: a */
            public final zzae f16483a;

            {
                this.f16483a = this;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4355i
            /* renamed from: j */
            public final Object mo25903j() {
                return this.f16483a.m10848d();
            }
        })) == null) {
            return null;
        }
        return mo10856a(str);
    }

    /* renamed from: d */
    public final /* synthetic */ String m10848d() {
        return zzy.m10530a(f29211h.getContentResolver(), this.f29216c, (String) null);
    }
}
