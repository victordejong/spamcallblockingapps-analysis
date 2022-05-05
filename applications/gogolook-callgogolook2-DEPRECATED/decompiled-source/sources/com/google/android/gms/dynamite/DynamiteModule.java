package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.media2.session.MediaSessionImplBase;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7076h;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p253f.AbstractC7129k;
import p081h.p203i.p204a.p224e.p253f.AbstractC7131m;
import p081h.p203i.p204a.p224e.p253f.C7119a;
import p081h.p203i.p204a.p224e.p253f.C7120b;
import p081h.p203i.p204a.p224e.p253f.C7121c;
import p081h.p203i.p204a.p224e.p253f.C7122d;
import p081h.p203i.p204a.p224e.p253f.C7123e;
import p081h.p203i.p204a.p224e.p253f.C7124f;
import p081h.p203i.p204a.p224e.p253f.C7125g;
import p081h.p203i.p204a.p224e.p253f.C7126h;
import p081h.p203i.p204a.p224e.p253f.C7127i;
import p081h.p203i.p204a.p224e.p253f.C7128j;
import p081h.p203i.p204a.p224e.p253f.C7130l;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")

    /* renamed from: b */
    public static Boolean f6673b;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: c */
    public static AbstractC7129k f6674c;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: d */
    public static AbstractC7131m f6675d;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: e */
    public static String f6676e;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: f */
    public static int f6677f = -1;

    /* renamed from: g */
    public static final ThreadLocal<C3571c> f6678g = new ThreadLocal<>();

    /* renamed from: h */
    public static final AbstractC3568b.AbstractC3570b f6679h = new C7120b();

    /* renamed from: i */
    public static final AbstractC3568b f6680i = new C7119a();

    /* renamed from: j */
    public static final AbstractC3568b f6681j = new C7123e();

    /* renamed from: a */
    public final Context f6682a;

    @DynamiteApi
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public static class C3567a extends Exception {
        public C3567a(String str) {
            super(str);
        }

        public /* synthetic */ C3567a(String str, C7120b bVar) {
            this(str);
        }

        public C3567a(String str, Throwable th) {
            super(str, th);
        }

        public /* synthetic */ C3567a(String str, Throwable th, C7120b bVar) {
            this(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b.class */
    public interface AbstractC3568b {

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b$a.class */
        public static final class C3569a {

            /* renamed from: a */
            public int f6683a = 0;

            /* renamed from: b */
            public int f6684b = 0;

            /* renamed from: c */
            public int f6685c = 0;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b$b.class */
        public interface AbstractC3570b {
            /* renamed from: a */
            int mo21054a(Context context, String str);

            /* renamed from: a */
            int mo21053a(Context context, String str, boolean z) throws C3567a;
        }

        /* renamed from: a */
        C3569a mo21052a(Context context, String str, AbstractC3570b bVar) throws C3567a;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$c.class */
    public static final class C3571c {

        /* renamed from: a */
        public Cursor f6686a;

        public C3571c() {
        }

        public /* synthetic */ C3571c(C7120b bVar) {
            this();
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$d.class */
    public static final class C3572d implements AbstractC3568b.AbstractC3570b {

        /* renamed from: a */
        public final int f6687a;

        public C3572d(int i, int i2) {
            this.f6687a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC3568b.AbstractC3570b
        /* renamed from: a */
        public final int mo21054a(Context context, String str) {
            return this.f6687a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC3568b.AbstractC3570b
        /* renamed from: a */
        public final int mo21053a(Context context, String str, boolean z) {
            return 0;
        }
    }

    static {
        new C7122d();
        new C7121c();
        new C7124f();
        new C7126h();
        new C7125g();
    }

    public DynamiteModule(Context context) {
        C7021t.m21290a(context);
        this.f6682a = context;
    }

    /* renamed from: a */
    public static int m31895a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(valueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException e) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            sb3.toString();
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x01a1 -> B:17:0x0051). Please submit an issue!!! */
    /* renamed from: a */
    public static int m31893a(Context context, String str, boolean z) {
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f6673b;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        sb.toString();
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m31892a(classLoader);
                                } catch (C3567a e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int c = m31885c(context, str, z);
                                if (f6676e != null && !f6676e.isEmpty()) {
                                    ClassLoader delegateLastClassLoader = Build.VERSION.SDK_INT >= 29 ? new DelegateLastClassLoader(f6676e, ClassLoader.getSystemClassLoader()) : new C7127i(f6676e, ClassLoader.getSystemClassLoader());
                                    m31892a(delegateLastClassLoader);
                                    declaredField.set(null, delegateLastClassLoader);
                                    f6673b = Boolean.TRUE;
                                    return c;
                                }
                                return c;
                            } catch (C3567a e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f6673b = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return m31887b(context, str, z);
                }
                try {
                    return m31885c(context, str, z);
                } catch (C3567a e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    if (valueOf2.length() != 0) {
                        "Failed to retrieve remote module version: ".concat(valueOf2);
                        return 0;
                    }
                    new String("Failed to retrieve remote module version: ");
                    return 0;
                }
            }
        } catch (Throwable th) {
            C7076h.m21150a(context, th);
            throw th;
        }
    }

    /* renamed from: a */
    public static DynamiteModule m31896a(Context context, AbstractC3568b bVar, String str) throws C3567a {
        C3571c cVar = f6678g.get();
        C3571c cVar2 = new C3571c(null);
        f6678g.set(cVar2);
        try {
            AbstractC3568b.C3569a a = bVar.mo21052a(context, str, f6679h);
            int i = a.f6683a;
            int i2 = a.f6684b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            sb.toString();
            if (a.f6685c == 0 || ((a.f6685c == -1 && a.f6683a == 0) || (a.f6685c == 1 && a.f6684b == 0))) {
                int i3 = a.f6683a;
                int i4 = a.f6684b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i3);
                sb2.append(" and remote version is ");
                sb2.append(i4);
                sb2.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                throw new C3567a(sb2.toString(), (C7120b) null);
            } else if (a.f6685c == -1) {
                DynamiteModule c = m31886c(context, str);
                Cursor cursor = cVar2.f6686a;
                if (cursor != null) {
                    cursor.close();
                }
                f6678g.set(cVar);
                return c;
            } else if (a.f6685c == 1) {
                try {
                    DynamiteModule a2 = m31894a(context, str, a.f6684b);
                    Cursor cursor2 = cVar2.f6686a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    f6678g.set(cVar);
                    return a2;
                } catch (C3567a e) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Failed to load remote module: ".concat(valueOf);
                    } else {
                        new String("Failed to load remote module: ");
                    }
                    if (a.f6683a == 0 || bVar.mo21052a(context, str, new C3572d(a.f6683a, 0)).f6685c != -1) {
                        throw new C3567a("Remote load failed. No local fallback found.", e, null);
                    }
                    DynamiteModule c2 = m31886c(context, str);
                    Cursor cursor3 = cVar2.f6686a;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    f6678g.set(cVar);
                    return c2;
                }
            } else {
                int i5 = a.f6685c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i5);
                throw new C3567a(sb3.toString(), (C7120b) null);
            }
        } catch (Throwable th) {
            Cursor cursor4 = cVar2.f6686a;
            if (cursor4 != null) {
                cursor4.close();
            }
            f6678g.set(cVar);
            throw th;
        }
    }

    /* renamed from: a */
    public static DynamiteModule m31894a(Context context, String str, int i) throws C3567a {
        Boolean bool;
        try {
            synchronized (DynamiteModule.class) {
                try {
                    bool = f6673b;
                } finally {
                }
            }
            if (bool == null) {
                throw new C3567a("Failed to determine which loading route to use.", (C7120b) null);
            } else if (bool.booleanValue()) {
                return m31888b(context, str, i);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i);
                sb.toString();
                AbstractC7129k a = m31897a(context);
                if (a != null) {
                    AbstractC7106b b = a.mo21047u() >= 2 ? a.mo21049b(BinderC7110d.m21058a(context), str, i) : a.mo21051a(BinderC7110d.m21058a(context), str, i);
                    if (BinderC7110d.m21059A(b) != null) {
                        return new DynamiteModule((Context) BinderC7110d.m21059A(b));
                    }
                    throw new C3567a("Failed to load remote module.", (C7120b) null);
                }
                throw new C3567a("Failed to create IDynamiteLoader.", (C7120b) null);
            }
        } catch (RemoteException e) {
            throw new C3567a("Failed to load remote module.", e, null);
        } catch (C3567a e2) {
            throw e2;
        } catch (Throwable th) {
            C7076h.m21150a(context, th);
            throw new C3567a("Failed to load remote module.", th, null);
        }
    }

    /* renamed from: a */
    public static AbstractC7129k m31897a(Context context) {
        AbstractC7129k kVar;
        synchronized (DynamiteModule.class) {
            try {
                if (f6674c != null) {
                    return f6674c;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        kVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        kVar = queryLocalInterface instanceof AbstractC7129k ? (AbstractC7129k) queryLocalInterface : new C7128j(iBinder);
                    }
                    if (kVar != null) {
                        f6674c = kVar;
                        return kVar;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("DynamiteModule.class")
    /* renamed from: a */
    public static void m31892a(ClassLoader classLoader) throws C3567a {
        AbstractC7131m mVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                mVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                mVar = queryLocalInterface instanceof AbstractC7131m ? (AbstractC7131m) queryLocalInterface : new C7130l(iBinder);
            }
            f6675d = mVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new C3567a("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: b */
    public static int m31889b(Context context, String str) {
        return m31893a(context, str, false);
    }

    /* renamed from: b */
    public static int m31887b(Context context, String str, boolean z) {
        AbstractC7129k a = m31897a(context);
        if (a == null) {
            return 0;
        }
        try {
            return a.mo21047u() >= 2 ? a.mo21050a(BinderC7110d.m21058a(context), str, z) : a.mo21048b(BinderC7110d.m21058a(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "Failed to retrieve remote module version: ".concat(valueOf);
                return 0;
            }
            new String("Failed to retrieve remote module version: ");
            return 0;
        }
    }

    /* renamed from: b */
    public static DynamiteModule m31888b(Context context, String str, int i) throws C3567a, RemoteException {
        AbstractC7131m mVar;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        sb.toString();
        synchronized (DynamiteModule.class) {
            try {
                mVar = f6675d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (mVar != null) {
            C3571c cVar = f6678g.get();
            if (cVar == null || cVar.f6686a == null) {
                throw new C3567a("No result cursor", (C7120b) null);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = cVar.f6686a;
            BinderC7110d.m21058a((Object) null);
            Context context2 = (Context) BinderC7110d.m21059A(m31890b().booleanValue() ? mVar.mo21045b(BinderC7110d.m21058a(applicationContext), str, i, BinderC7110d.m21058a(cursor)) : mVar.mo21046a(BinderC7110d.m21058a(applicationContext), str, i, BinderC7110d.m21058a(cursor)));
            if (context2 != null) {
                return new DynamiteModule(context2);
            }
            throw new C3567a("Failed to get module context", (C7120b) null);
        }
        throw new C3567a("DynamiteLoaderV2 was not cached.", (C7120b) null);
    }

    /* renamed from: b */
    public static Boolean m31890b() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f6677f >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0124  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m31885c(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.C3567a {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m31885c(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: c */
    public static DynamiteModule m31886c(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: a */
    public final Context m31898a() {
        return this.f6682a;
    }

    /* renamed from: a */
    public final IBinder m31891a(String str) throws C3567a {
        try {
            return (IBinder) this.f6682a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new C3567a(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
