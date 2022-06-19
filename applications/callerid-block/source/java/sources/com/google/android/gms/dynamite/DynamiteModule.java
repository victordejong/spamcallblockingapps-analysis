package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C1579g;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.util.C1612h;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")

    /* renamed from: e */
    private static Boolean f5915e;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: f */
    private static String f5916f;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: g */
    private static int f5917g = -1;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: k */
    private static k f5921k;
    @GuardedBy("DynamiteModule.class")

    /* renamed from: l */
    private static l f5922l;

    /* renamed from: a */
    private final Context f5923a;

    /* renamed from: h */
    private static final ThreadLocal<C1636g> f5918h = new ThreadLocal<>();

    /* renamed from: i */
    private static final ThreadLocal<Long> f5919i = new C1635b();

    /* renamed from: j */
    private static final AbstractC1637i f5920j = new c();
    @RecentlyNonNull

    /* renamed from: b */
    public static final AbstractC1633a f5912b = new d();
    @RecentlyNonNull

    /* renamed from: c */
    public static final AbstractC1633a f5913c = new e();
    @RecentlyNonNull

    /* renamed from: d */
    public static final AbstractC1633a f5914d = new f();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @RecentlyNullable
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, C1635b c1635b) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, C1635b c1635b) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC1633a {
        /* renamed from: a */
        C1638j m8172a(Context context, String str, AbstractC1637i abstractC1637i);
    }

    private DynamiteModule(Context context) {
        C1581h.m8347h(context);
        this.f5923a = context;
    }

    /* renamed from: a */
    public static int m8183a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".");
            sb.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (C1579g.m8358a(declaredField.get(null), str)) {
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
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    /* renamed from: c */
    public static int m8181c(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return m8178f(context, str, false);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static DynamiteModule m8179e(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC1633a abstractC1633a, @RecentlyNonNull String str) {
        Boolean bool;
        DynamiteModule dynamiteModule;
        AbstractC1632a abstractC1632a;
        l lVar;
        boolean z;
        AbstractC1632a abstractC1632a2;
        ThreadLocal<C1636g> threadLocal = f5918h;
        C1636g c1636g = threadLocal.get();
        C1636g c1636g2 = new C1636g(null);
        threadLocal.set(c1636g2);
        ThreadLocal<Long> threadLocal2 = f5919i;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            C1638j m8172a = abstractC1633a.m8172a(context, str, f5920j);
            int i = m8172a.f5925a;
            int i2 = m8172a.f5926b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            Log.i("DynamiteModule", sb.toString());
            int i3 = m8172a.f5927c;
            if (i3 == 0 || ((i3 == -1 && m8172a.f5925a == 0) || (i3 == 1 && m8172a.f5926b == 0))) {
                int i4 = m8172a.f5925a;
                int i5 = m8172a.f5926b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i4);
                sb2.append(" and remote version is ");
                sb2.append(i5);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), null);
            } else if (i3 == -1) {
                DynamiteModule m8175i = m8175i(context, str);
                if (longValue == 0) {
                    threadLocal2.remove();
                } else {
                    threadLocal2.set(Long.valueOf(longValue));
                }
                Cursor cursor = c1636g2.f5924a;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(c1636g);
                return m8175i;
            } else if (i3 != 1) {
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(0);
                throw new LoadingException(sb3.toString(), null);
            } else {
                try {
                    int i6 = m8172a.f5926b;
                    try {
                        synchronized (DynamiteModule.class) {
                            bool = f5915e;
                        }
                        if (bool == null) {
                            throw new LoadingException("Failed to determine which loading route to use.", null);
                        }
                        if (bool.booleanValue()) {
                            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 51);
                            sb4.append("Selected remote version of ");
                            sb4.append(str);
                            sb4.append(", version >= ");
                            sb4.append(i6);
                            Log.i("DynamiteModule", sb4.toString());
                            synchronized (DynamiteModule.class) {
                                lVar = f5922l;
                            }
                            if (lVar == null) {
                                throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                            }
                            C1636g c1636g3 = threadLocal.get();
                            if (c1636g3 == null || c1636g3.f5924a == null) {
                                throw new LoadingException("No result cursor", null);
                            }
                            Context applicationContext = context.getApplicationContext();
                            Cursor cursor2 = c1636g3.f5924a;
                            b.g3((Object) null);
                            synchronized (DynamiteModule.class) {
                                z = f5917g >= 2;
                            }
                            if (Boolean.valueOf(z).booleanValue()) {
                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                abstractC1632a2 = lVar.g3(b.g3(applicationContext), str, i6, b.g3(cursor2));
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                abstractC1632a2 = lVar.M1(b.g3(applicationContext), str, i6, b.g3(cursor2));
                            }
                            Context context2 = (Context) b.M1(abstractC1632a2);
                            if (context2 == null) {
                                throw new LoadingException("Failed to get module context", null);
                            }
                            dynamiteModule = new DynamiteModule(context2);
                        } else {
                            StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 51);
                            sb5.append("Selected remote version of ");
                            sb5.append(str);
                            sb5.append(", version >= ");
                            sb5.append(i6);
                            Log.i("DynamiteModule", sb5.toString());
                            k m8173k = m8173k(context);
                            if (m8173k == null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                            }
                            int i7 = m8173k.i();
                            if (i7 >= 3) {
                                C1636g c1636g4 = threadLocal.get();
                                if (c1636g4 == null) {
                                    throw new LoadingException("No cached result cursor holder", null);
                                }
                                abstractC1632a = m8173k.u5(b.g3(context), str, i6, b.g3(c1636g4.f5924a));
                            } else if (i7 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                abstractC1632a = m8173k.w4(b.g3(context), str, i6);
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                abstractC1632a = m8173k.M1(b.g3(context), str, i6);
                            }
                            if (b.M1(abstractC1632a) == null) {
                                throw new LoadingException("Failed to load remote module.", null);
                            }
                            dynamiteModule = new DynamiteModule((Context) b.M1(abstractC1632a));
                        }
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor3 = c1636g2.f5924a;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        threadLocal.set(c1636g);
                        return dynamiteModule;
                    } catch (RemoteException e) {
                        throw new LoadingException("Failed to load remote module.", e, null);
                    } catch (LoadingException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        C1612h.m8234a(context, th);
                        throw new LoadingException("Failed to load remote module.", th, null);
                    }
                } catch (LoadingException e3) {
                    String valueOf = String.valueOf(e3.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    int i8 = m8172a.f5925a;
                    if (i8 == 0 || abstractC1633a.m8172a(context, str, new h(i8, 0)).f5927c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                    }
                    DynamiteModule m8175i2 = m8175i(context, str);
                    ThreadLocal<Long> threadLocal3 = f5919i;
                    if (longValue == 0) {
                        threadLocal3.remove();
                    } else {
                        threadLocal3.set(Long.valueOf(longValue));
                    }
                    Cursor cursor4 = c1636g2.f5924a;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    f5918h.set(c1636g);
                    return m8175i2;
                }
            }
        } catch (Throwable th2) {
            ThreadLocal<Long> threadLocal4 = f5919i;
            if (longValue == 0) {
                threadLocal4.remove();
            } else {
                threadLocal4.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = c1636g2.f5924a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f5918h.set(c1636g);
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:148:0x0329 -> B:18:0x005b). Please submit an issue!!! */
    /* renamed from: f */
    public static int m8178f(@RecentlyNonNull Context context, @RecentlyNonNull String str, boolean z) {
        Field declaredField;
        ClassLoader classLoader;
        int i;
        Throwable th;
        Cursor cursor;
        RemoteException e;
        String str2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f5915e;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String valueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader2 = (ClassLoader) declaredField.get(null);
                        if (classLoader2 != null) {
                            if (classLoader2 != ClassLoader.getSystemClassLoader()) {
                                try {
                                    m8174j(classLoader2);
                                } catch (LoadingException e3) {
                                }
                                bool2 = Boolean.TRUE;
                                f5915e = bool2;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        } else {
                            try {
                                int m8177g = m8177g(context, str, z);
                                String str3 = f5916f;
                                if (str3 != null && !str3.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str4 = f5916f;
                                        C1581h.m8347h(str4);
                                        classLoader = new DelegateLastClassLoader(str4, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str5 = f5916f;
                                        C1581h.m8347h(str5);
                                        classLoader = new C1634a(str5, ClassLoader.getSystemClassLoader());
                                    }
                                    m8174j(classLoader);
                                    declaredField.set(null, classLoader);
                                    f5915e = Boolean.TRUE;
                                    return m8177g;
                                }
                                return m8177g;
                            } catch (LoadingException e4) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                            }
                        }
                        bool2 = Boolean.FALSE;
                        f5915e = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return m8177g(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf2 = String.valueOf(e5.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                k m8173k = m8173k(context);
                if (m8173k == null) {
                    i = 0;
                } else {
                    Cursor cursor2 = null;
                    try {
                        try {
                            int i2 = m8173k.i();
                            if (i2 >= 3) {
                                cursor = (Cursor) b.M1(m8173k.T4(b.g3(context), str, z, f5919i.get().longValue()));
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            i = cursor.getInt(0);
                                            if (i > 0 && m8176h(cursor)) {
                                                cursor = null;
                                            }
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                        }
                                    } catch (RemoteException e6) {
                                        e = e6;
                                        String valueOf3 = String.valueOf(e.getMessage());
                                        Cursor cursor3 = cursor;
                                        if (valueOf3.length() != 0) {
                                            Cursor cursor4 = cursor;
                                            str2 = "Failed to retrieve remote module version: ".concat(valueOf3);
                                        } else {
                                            str2 = new String("Failed to retrieve remote module version: ");
                                        }
                                        cursor2 = cursor;
                                        Log.w("DynamiteModule", str2);
                                        i = 0;
                                        if (cursor != null) {
                                            cursor.close();
                                            i = 0;
                                        }
                                        return i;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                }
                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                i = 0;
                                if (cursor != null) {
                                    cursor.close();
                                    i = 0;
                                }
                            } else if (i2 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = m8173k.M4(b.g3(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = m8173k.g3(b.g3(context), str, z);
                            }
                        } catch (RemoteException e7) {
                            e = e7;
                            cursor = null;
                        }
                    } catch (Throwable th3) {
                        cursor = cursor2;
                        th = th3;
                    }
                }
                return i;
            }
        } catch (Throwable th4) {
            C1612h.m8234a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0126  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m8177g(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m8177g(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: h */
    private static boolean m8176h(Cursor cursor) {
        C1636g c1636g = f5918h.get();
        if (c1636g == null || c1636g.f5924a != null) {
            return false;
        }
        c1636g.f5924a = cursor;
        return true;
    }

    /* renamed from: i */
    private static DynamiteModule m8175i(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    @GuardedBy("DynamiteModule.class")
    /* renamed from: j */
    private static void m8174j(ClassLoader classLoader) {
        l lVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                lVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                lVar = queryLocalInterface instanceof l ? (l) queryLocalInterface : new l(iBinder);
            }
            f5922l = lVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: k */
    private static k m8173k(Context context) {
        k kVar;
        synchronized (DynamiteModule.class) {
            try {
                k kVar2 = f5921k;
                if (kVar2 != null) {
                    return kVar2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        kVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        kVar = queryLocalInterface instanceof k ? (k) queryLocalInterface : new k(iBinder);
                    }
                    if (kVar != null) {
                        f5921k = kVar;
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

    @RecentlyNonNull
    /* renamed from: b */
    public Context m8182b() {
        return this.f5923a;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public IBinder m8180d(@RecentlyNonNull String str) {
        try {
            return (IBinder) this.f5923a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
