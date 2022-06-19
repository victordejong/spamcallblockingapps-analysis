package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.C2710g;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")

    /* renamed from: f */
    private static Boolean f7555f;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: g */
    private static AbstractC2749j f7556g;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: h */
    private static AbstractC2751l f7557h;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: i */
    private static String f7558i;

    /* renamed from: n */
    private final Context f7563n;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: j */
    private static int f7559j = -1;

    /* renamed from: k */
    private static final ThreadLocal<C2738b> f7560k = new ThreadLocal<>();

    /* renamed from: l */
    private static final AbstractC2735a.AbstractC2737b f7561l = new C2740a();

    /* renamed from: a */
    public static final AbstractC2735a f7550a = new C2742c();

    /* renamed from: b */
    public static final AbstractC2735a f7551b = new C2741b();

    /* renamed from: c */
    public static final AbstractC2735a f7552c = new C2744e();

    /* renamed from: d */
    public static final AbstractC2735a f7553d = new C2743d();

    /* renamed from: e */
    public static final AbstractC2735a f7554e = new C2746g();

    /* renamed from: m */
    private static final AbstractC2735a f7562m = new C2745f();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        private LoadingException(String str) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, C2740a c2740a) {
            this(str);
        }

        private LoadingException(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ LoadingException(String str, Throwable th, C2740a c2740a) {
            this(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC2735a {

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a$a.class */
        public static final class C2736a {

            /* renamed from: a */
            public int f7564a = 0;

            /* renamed from: b */
            public int f7565b = 0;

            /* renamed from: c */
            public int f7566c = 0;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a$b.class */
        public interface AbstractC2737b {
            /* renamed from: a */
            int mo13779a(Context context, String str);

            /* renamed from: a */
            int mo13778a(Context context, String str, boolean z);
        }

        /* renamed from: a */
        C2736a mo13777a(Context context, String str, AbstractC2737b abstractC2737b);
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b.class */
    public static final class C2738b {

        /* renamed from: a */
        public Cursor f7567a;

        private C2738b() {
        }

        /* synthetic */ C2738b(C2740a c2740a) {
            this();
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$c.class */
    public static final class C2739c implements AbstractC2735a.AbstractC2737b {

        /* renamed from: a */
        private final int f7568a;

        /* renamed from: b */
        private final int f7569b = 0;

        public C2739c(int i, int i2) {
            this.f7568a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC2735a.AbstractC2737b
        /* renamed from: a */
        public final int mo13779a(Context context, String str) {
            return this.f7568a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC2735a.AbstractC2737b
        /* renamed from: a */
        public final int mo13778a(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.f7563n = (Context) C2662s.m13981a(context);
    }

    /* renamed from: a */
    public static int m13790a(Context context, String str) {
        int i;
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass(new StringBuilder(String.valueOf(str).length() + 61).append("com.google.android.gms.dynamite.descriptors.").append(str).append(".ModuleDescriptor").toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!declaredField.get(null).equals(str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length()).append("Module descriptor id '").append(valueOf).append("' didn't match expected id '").append(str).append("'").toString());
                i = 0;
            } else {
                i = declaredField2.getInt(null);
            }
        } catch (ClassNotFoundException e) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            i = 0;
            return i;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            i = 0;
            return i;
        }
        return i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x019f -> B:29:0x006b). Please submit an issue!!! */
    /* renamed from: a */
    public static int m13788a(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        int m13780c;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f7555f;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                        declaredField = loadClass.getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        Log.w("DynamiteModule", new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to load module via V2: ").append(valueOf).toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (loadClass) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m13787a(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                m13780c = m13780c(context, str, z);
                                if (f7558i != null && !f7558i.isEmpty()) {
                                    ClassLoader delegateLastClassLoader = Build.VERSION.SDK_INT >= 29 ? new DelegateLastClassLoader(f7558i, ClassLoader.getSystemClassLoader()) : new C2747h(f7558i, ClassLoader.getSystemClassLoader());
                                    m13787a(delegateLastClassLoader);
                                    declaredField.set(null, delegateLastClassLoader);
                                    f7555f = Boolean.TRUE;
                                }
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f7555f = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        m13780c = m13780c(context, str, z);
                    } catch (LoadingException e4) {
                        String valueOf2 = String.valueOf(e4.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        m13780c = 0;
                    }
                } else {
                    m13780c = m13782b(context, str, z);
                }
            }
            return m13780c;
        } catch (Throwable th) {
            C2710g.m13864a(context, th);
            throw th;
        }
    }

    /* renamed from: a */
    public static DynamiteModule m13791a(Context context, AbstractC2735a abstractC2735a, String str) {
        DynamiteModule m13781c;
        C2738b c2738b = f7560k.get();
        C2738b c2738b2 = new C2738b(null);
        f7560k.set(c2738b2);
        try {
            AbstractC2735a.C2736a mo13777a = abstractC2735a.mo13777a(context, str, f7561l);
            Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(mo13777a.f7564a).append(" and remote module ").append(str).append(":").append(mo13777a.f7565b).toString());
            if (mo13777a.f7566c == 0 || ((mo13777a.f7566c == -1 && mo13777a.f7564a == 0) || (mo13777a.f7566c == 1 && mo13777a.f7565b == 0))) {
                throw new LoadingException(new StringBuilder(91).append("No acceptable module found. Local version is ").append(mo13777a.f7564a).append(" and remote version is ").append(mo13777a.f7565b).append(".").toString(), (C2740a) null);
            }
            if (mo13777a.f7566c == -1) {
                m13781c = m13781c(context, str);
                if (c2738b2.f7567a != null) {
                    c2738b2.f7567a.close();
                }
                f7560k.set(c2738b);
            } else if (mo13777a.f7566c != 1) {
                throw new LoadingException(new StringBuilder(47).append("VersionPolicy returned invalid code:").append(mo13777a.f7566c).toString(), (C2740a) null);
            } else {
                try {
                    DynamiteModule m13789a = m13789a(context, str, mo13777a.f7565b);
                    if (c2738b2.f7567a != null) {
                        c2738b2.f7567a.close();
                    }
                    f7560k.set(c2738b);
                    m13781c = m13789a;
                } catch (LoadingException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    if (mo13777a.f7564a == 0 || abstractC2735a.mo13777a(context, str, new C2739c(mo13777a.f7564a, 0)).f7566c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                    }
                    m13781c = m13781c(context, str);
                    if (c2738b2.f7567a != null) {
                        c2738b2.f7567a.close();
                    }
                    f7560k.set(c2738b);
                }
            }
            return m13781c;
        } catch (Throwable th) {
            if (c2738b2.f7567a != null) {
                c2738b2.f7567a.close();
            }
            f7560k.set(c2738b);
            throw th;
        }
    }

    /* renamed from: a */
    private static DynamiteModule m13789a(Context context, String str, int i) {
        Boolean bool;
        AbstractC2731a mo13775a;
        DynamiteModule dynamiteModule;
        try {
            synchronized (DynamiteModule.class) {
                try {
                    bool = f7555f;
                } finally {
                }
            }
            if (bool == null) {
                throw new LoadingException("Failed to determine which loading route to use.", (C2740a) null);
            }
            if (bool.booleanValue()) {
                dynamiteModule = m13783b(context, str, i);
            } else {
                Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
                AbstractC2749j m13792a = m13792a(context);
                if (m13792a == null) {
                    throw new LoadingException("Failed to create IDynamiteLoader.", (C2740a) null);
                }
                if (m13792a.mo13776a() >= 2) {
                    mo13775a = m13792a.mo13773b(BinderC2734b.m13794a(context), str, i);
                } else {
                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                    mo13775a = m13792a.mo13775a(BinderC2734b.m13794a(context), str, i);
                }
                if (BinderC2734b.m13795a(mo13775a) == null) {
                    throw new LoadingException("Failed to load remote module.", (C2740a) null);
                }
                dynamiteModule = new DynamiteModule((Context) BinderC2734b.m13795a(mo13775a));
            }
            return dynamiteModule;
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, null);
        } catch (LoadingException e2) {
            throw e2;
        } catch (Throwable th) {
            C2710g.m13864a(context, th);
            throw new LoadingException("Failed to load remote module.", th, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [com.google.android.gms.dynamite.j] */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.dynamite.j] */
    /* renamed from: a */
    private static AbstractC2749j m13792a(Context context) {
        C2748i c2748i;
        synchronized (DynamiteModule.class) {
            try {
                if (f7556g != null) {
                    c2748i = f7556g;
                } else {
                    try {
                        IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                        if (iBinder == null) {
                            c2748i = null;
                        } else {
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                            c2748i = queryLocalInterface instanceof AbstractC2749j ? (AbstractC2749j) queryLocalInterface : new C2748i(iBinder);
                        }
                        if (c2748i != null) {
                            f7556g = c2748i;
                        }
                    } catch (Exception e) {
                        String valueOf = String.valueOf(e.getMessage());
                        Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                    }
                    c2748i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2748i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.dynamite.l] */
    @GuardedBy("DynamiteModule.class")
    /* renamed from: a */
    private static void m13787a(ClassLoader classLoader) {
        C2750k c2750k;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                c2750k = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                c2750k = queryLocalInterface instanceof AbstractC2751l ? (AbstractC2751l) queryLocalInterface : new C2750k(iBinder);
            }
            f7557h = c2750k;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: b */
    public static int m13784b(Context context, String str) {
        return m13788a(context, str, false);
    }

    /* renamed from: b */
    private static int m13782b(Context context, String str, boolean z) {
        int i;
        AbstractC2749j m13792a = m13792a(context);
        if (m13792a == null) {
            i = 0;
        } else {
            try {
                if (m13792a.mo13776a() >= 2) {
                    i = m13792a.mo13772b(BinderC2734b.m13794a(context), str, z);
                } else {
                    Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                    i = m13792a.mo13774a(BinderC2734b.m13794a(context), str, z);
                }
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: b */
    private static DynamiteModule m13783b(Context context, String str, int i) {
        AbstractC2751l abstractC2751l;
        AbstractC2731a mo13771a;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        synchronized (DynamiteModule.class) {
            try {
                abstractC2751l = f7557h;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (abstractC2751l == null) {
            throw new LoadingException("DynamiteLoaderV2 was not cached.", (C2740a) null);
        }
        C2738b c2738b = f7560k.get();
        if (c2738b == null || c2738b.f7567a == null) {
            throw new LoadingException("No result cursor", (C2740a) null);
        }
        Context applicationContext = context.getApplicationContext();
        Cursor cursor = c2738b.f7567a;
        BinderC2734b.m13794a((Object) null);
        if (m13785b().booleanValue()) {
            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
            mo13771a = abstractC2751l.mo13770b(BinderC2734b.m13794a(applicationContext), str, i, BinderC2734b.m13794a(cursor));
        } else {
            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
            mo13771a = abstractC2751l.mo13771a(BinderC2734b.m13794a(applicationContext), str, i, BinderC2734b.m13794a(cursor));
        }
        Context context2 = (Context) BinderC2734b.m13795a(mo13771a);
        if (context2 != null) {
            return new DynamiteModule(context2);
        }
        throw new LoadingException("Failed to get module context", (C2740a) null);
    }

    /* renamed from: b */
    private static Boolean m13785b() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f7559j >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0097  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m13780c(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m13780c(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: c */
    private static DynamiteModule m13781c(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: a */
    public final Context m13793a() {
        return this.f7563n;
    }

    /* renamed from: a */
    public final IBinder m13786a(String str) {
        try {
            return (IBinder) this.f7563n.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
