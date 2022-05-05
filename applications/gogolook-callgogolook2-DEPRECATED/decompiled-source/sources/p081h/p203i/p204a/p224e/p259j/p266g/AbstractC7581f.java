package p081h.p203i.p204a.p224e.p259j.p266g;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.UserManager;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;
/* renamed from: h.i.a.e.j.g.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/f.class */
public abstract class AbstractC7581f<T> {

    /* renamed from: g */
    public static final Object f17824g = new Object();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: h */
    public static Context f17825h;

    /* renamed from: i */
    public static volatile Boolean f17826i;

    /* renamed from: j */
    public static volatile Boolean f17827j;

    /* renamed from: a */
    public final C7664p f17828a;

    /* renamed from: b */
    public final String f17829b;

    /* renamed from: c */
    public final String f17830c;

    /* renamed from: d */
    public final T f17831d;

    /* renamed from: e */
    public volatile C7560c f17832e;

    /* renamed from: f */
    public volatile SharedPreferences f17833f;

    public AbstractC7581f(C7664p pVar, String str, T t) {
        String str2;
        String str3;
        String str4;
        String str5;
        Uri uri;
        Uri uri2;
        this.f17832e = null;
        this.f17833f = null;
        str2 = pVar.f18003a;
        if (str2 == null) {
            uri2 = pVar.f18004b;
            if (uri2 == null) {
                throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
            }
        }
        str3 = pVar.f18003a;
        if (str3 != null) {
            uri = pVar.f18004b;
            if (uri != null) {
                throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
            }
        }
        this.f17828a = pVar;
        str4 = pVar.f18005c;
        String valueOf = String.valueOf(str4);
        String valueOf2 = String.valueOf(str);
        this.f17830c = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        str5 = pVar.f18006d;
        String valueOf3 = String.valueOf(str5);
        String valueOf4 = String.valueOf(str);
        this.f17829b = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        this.f17831d = t;
    }

    public /* synthetic */ AbstractC7581f(C7664p pVar, String str, Object obj, C7617j jVar) {
        this(pVar, str, obj);
    }

    /* renamed from: a */
    public static <T> AbstractC7581f<T> m20188a(C7664p pVar, String str, T t, AbstractC7657o<T> oVar) {
        return new C7638m(pVar, str, t, oVar);
    }

    /* renamed from: a */
    public static AbstractC7581f<String> m20187a(C7664p pVar, String str, String str2) {
        return new C7631l(pVar, str, str2);
    }

    /* renamed from: a */
    public static AbstractC7581f<Boolean> m20186a(C7664p pVar, String str, boolean z) {
        return new C7624k(pVar, str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    public static <V> V m20189a(AbstractC7650n<V> nVar) {
        V v;
        try {
            v = nVar.mo19969a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = nVar.mo19969a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }

    /* renamed from: a */
    public static void m20190a(Context context) {
        Context applicationContext;
        if (f17825h == null) {
            synchronized (f17824g) {
                if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                if (f17825h != context) {
                    f17826i = null;
                }
                f17825h = context;
            }
        }
    }

    /* renamed from: a */
    public static boolean m20185a(String str, boolean z) {
        if (m20177e()) {
            return ((Boolean) m20189a(new AbstractC7650n(str, false) { // from class: h.i.a.e.j.g.i

                /* renamed from: a */
                public final String f17868a;

                /* renamed from: b */
                public final boolean f17869b = false;

                {
                    this.f17868a = str;
                }

                @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7650n
                /* renamed from: a */
                public final Object mo19969a() {
                    Boolean valueOf;
                    valueOf = Boolean.valueOf(C7733y5.m19647a(AbstractC7581f.f17825h.getContentResolver(), this.f17868a, this.f17869b));
                    return valueOf;
                }
            })).booleanValue();
        }
        return false;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC7581f m20183b(C7664p pVar, String str, Object obj, AbstractC7657o oVar) {
        return m20188a(pVar, str, obj, oVar);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC7581f m20182b(C7664p pVar, String str, String str2) {
        return m20187a(pVar, str, (String) null);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC7581f m20181b(C7664p pVar, String str, boolean z) {
        return m20186a(pVar, str, false);
    }

    /* renamed from: e */
    public static boolean m20177e() {
        if (f17826i == null) {
            Context context = f17825h;
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (PermissionChecker.checkCallingOrSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                z = true;
            }
            f17826i = Boolean.valueOf(z);
        }
        return f17826i.booleanValue();
    }

    /* renamed from: a */
    public final T m20191a() {
        boolean z;
        if (f17825h != null) {
            z = this.f17828a.f18008f;
            if (z) {
                T c = m20179c();
                if (c != null) {
                    return c;
                }
                T b = m20184b();
                if (b != null) {
                    return b;
                }
            } else {
                T b2 = m20184b();
                if (b2 != null) {
                    return b2;
                }
                T c2 = m20179c();
                if (c2 != null) {
                    return c2;
                }
            }
            return this.f17831d;
        }
        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
    }

    /* renamed from: a */
    public abstract T mo20071a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo20070a(String str);

    @Nullable
    @TargetApi(24)
    /* renamed from: b */
    public final T m20184b() {
        Uri uri;
        String str;
        boolean z;
        String str2;
        Uri uri2;
        if (!m20185a("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            uri = this.f17828a.f18004b;
            if (uri != null) {
                if (this.f17832e == null) {
                    ContentResolver contentResolver = f17825h.getContentResolver();
                    uri2 = this.f17828a.f18004b;
                    this.f17832e = C7560c.m20299a(contentResolver, uri2);
                }
                String str3 = (String) m20189a(new AbstractC7650n(this, this.f17832e) { // from class: h.i.a.e.j.g.g

                    /* renamed from: a */
                    public final AbstractC7581f f17853a;

                    /* renamed from: b */
                    public final C7560c f17854b;

                    {
                        this.f17853a = this;
                        this.f17854b = r5;
                    }

                    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7650n
                    /* renamed from: a */
                    public final Object mo19969a() {
                        return this.f17854b.m20300a().get(this.f17853a.f17829b);
                    }
                });
                if (str3 != null) {
                    return mo20070a(str3);
                }
                return null;
            }
            str = this.f17828a.f18003a;
            if (str == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT < 24 || f17825h.isDeviceProtectedStorage()) {
                z = true;
            } else {
                if (f17827j == null || !f17827j.booleanValue()) {
                    f17827j = Boolean.valueOf(((UserManager) f17825h.getSystemService(UserManager.class)).isUserUnlocked());
                }
                z = f17827j.booleanValue();
            }
            if (!z) {
                return null;
            }
            if (this.f17833f == null) {
                Context context = f17825h;
                str2 = this.f17828a.f18003a;
                this.f17833f = context.getSharedPreferences(str2, 0);
            }
            SharedPreferences sharedPreferences = this.f17833f;
            if (sharedPreferences.contains(this.f17829b)) {
                return mo20071a(sharedPreferences);
            }
            return null;
        }
        String valueOf = String.valueOf(this.f17829b);
        if (valueOf.length() != 0) {
            "Bypass reading Phenotype values for flag: ".concat(valueOf);
            return null;
        }
        new String("Bypass reading Phenotype values for flag: ");
        return null;
    }

    @Nullable
    /* renamed from: c */
    public final T m20179c() {
        boolean z;
        String str;
        z = this.f17828a.f18007e;
        if (z || !m20177e() || (str = (String) m20189a(new AbstractC7650n(this) { // from class: h.i.a.e.j.g.h

            /* renamed from: a */
            public final AbstractC7581f f17860a;

            {
                this.f17860a = this;
            }

            @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7650n
            /* renamed from: a */
            public final Object mo19969a() {
                return this.f17860a.m20178d();
            }
        })) == null) {
            return null;
        }
        return mo20070a(str);
    }

    /* renamed from: d */
    public final /* synthetic */ String m20178d() {
        return C7733y5.m19648a(f17825h.getContentResolver(), this.f17830c, (String) null);
    }
}
