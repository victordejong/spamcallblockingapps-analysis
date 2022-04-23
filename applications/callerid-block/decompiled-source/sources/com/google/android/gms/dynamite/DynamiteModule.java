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
        /* synthetic */ LoadingException(String str, C1635b bVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, C1635b bVar) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC1633a {
        /* renamed from: a */
        C1638j m8172a(Context context, String str, AbstractC1637i iVar);
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
    public static DynamiteModule m8179e(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC1633a aVar, @RecentlyNonNull String str) {
        Boolean bool;
        DynamiteModule dynamiteModule;
        AbstractC1632a aVar2;
        l lVar;
        boolean z;
        AbstractC1632a aVar3;
        ThreadLocal<C1636g> threadLocal = f5918h;
        C1636g gVar = threadLocal.get();
        C1636g gVar2 = new C1636g(null);
        threadLocal.set(gVar2);
        ThreadLocal<Long> threadLocal2 = f5919i;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            C1638j a = aVar.m8172a(context, str, f5920j);
            int i = a.f5925a;
            int i2 = a.f5926b;
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
            int i3 = a.f5927c;
            if (i3 == 0 || ((i3 == -1 && a.f5925a == 0) || (i3 == 1 && a.f5926b == 0))) {
                int i4 = a.f5925a;
                int i5 = a.f5926b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i4);
                sb2.append(" and remote version is ");
                sb2.append(i5);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), null);
            } else if (i3 == -1) {
                DynamiteModule i6 = m8175i(context, str);
                if (longValue == 0) {
                    threadLocal2.remove();
                } else {
                    threadLocal2.set(Long.valueOf(longValue));
                }
                Cursor cursor = gVar2.f5924a;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(gVar);
                return i6;
            } else if (i3 == 1) {
                try {
                    int i7 = a.f5926b;
                    try {
                        synchronized (DynamiteModule.class) {
                            bool = f5915e;
                        }
                        if (bool != null) {
                            if (bool.booleanValue()) {
                                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 51);
                                sb3.append("Selected remote version of ");
                                sb3.append(str);
                                sb3.append(", version >= ");
                                sb3.append(i7);
                                Log.i("DynamiteModule", sb3.toString());
                                synchronized (DynamiteModule.class) {
                                    lVar = f5922l;
                                }
                                if (lVar != null) {
                                    C1636g gVar3 = threadLocal.get();
                                    if (gVar3 == null || gVar3.f5924a == null) {
                                        throw new LoadingException("No result cursor", null);
                                    }
                                    Context applicationContext = context.getApplicationContext();
                                    Cursor cursor2 = gVar3.f5924a;
                                    b.g3((Object) null);
                                    synchronized (DynamiteModule.class) {
                                        z = f5917g >= 2;
                                    }
                                    if (Boolean.valueOf(z).booleanValue()) {
                                        Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                        aVar3 = lVar.g3(b.g3(applicationContext), str, i7, b.g3(cursor2));
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                        aVar3 = lVar.M1(b.g3(applicationContext), str, i7, b.g3(cursor2));
                                    }
                                    Context context2 = (Context) b.M1(aVar3);
                                    if (context2 != null) {
                                        dynamiteModule = new DynamiteModule(context2);
                                    } else {
                                        throw new LoadingException("Failed to get module context", null);
                                    }
                                } else {
                                    throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                }
                            } else {
                                StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 51);
                                sb4.append("Selected remote version of ");
                                sb4.append(str);
                                sb4.append(", version >= ");
                                sb4.append(i7);
                                Log.i("DynamiteModule", sb4.toString());
                                k k = m8173k(context);
                                if (k != null) {
                                    int i8 = k.i();
                                    if (i8 >= 3) {
                                        C1636g gVar4 = threadLocal.get();
                                        if (gVar4 != null) {
                                            aVar2 = k.u5(b.g3(context), str, i7, b.g3(gVar4.f5924a));
                                        } else {
                                            throw new LoadingException("No cached result cursor holder", null);
                                        }
                                    } else if (i8 == 2) {
                                        Log.w("DynamiteModule", "IDynamite loader version = 2");
                                        aVar2 = k.w4(b.g3(context), str, i7);
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                        aVar2 = k.M1(b.g3(context), str, i7);
                                    }
                                    if (b.M1(aVar2) != null) {
                                        dynamiteModule = new DynamiteModule((Context) b.M1(aVar2));
                                    } else {
                                        throw new LoadingException("Failed to load remote module.", null);
                                    }
                                } else {
                                    throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                }
                            }
                            if (longValue == 0) {
                                threadLocal2.remove();
                            } else {
                                threadLocal2.set(Long.valueOf(longValue));
                            }
                            Cursor cursor3 = gVar2.f5924a;
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            threadLocal.set(gVar);
                            return dynamiteModule;
                        }
                        throw new LoadingException("Failed to determine which loading route to use.", null);
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
                    int i9 = a.f5925a;
                    if (i9 == 0 || aVar.m8172a(context, str, new h(i9, 0)).f5927c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                    }
                    DynamiteModule i10 = m8175i(context, str);
                    ThreadLocal<Long> threadLocal3 = f5919i;
                    if (longValue == 0) {
                        threadLocal3.remove();
                    } else {
                        threadLocal3.set(Long.valueOf(longValue));
                    }
                    Cursor cursor4 = gVar2.f5924a;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    f5918h.set(gVar);
                    return i10;
                }
            } else {
                StringBuilder sb5 = new StringBuilder(47);
                sb5.append("VersionPolicy returned invalid code:");
                sb5.append(0);
                throw new LoadingException(sb5.toString(), null);
            }
        } catch (Throwable th2) {
            ThreadLocal<Long> threadLocal4 = f5919i;
            if (longValue == 0) {
                threadLocal4.remove();
            } else {
                threadLocal4.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = gVar2.f5924a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f5918h.set(gVar);
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
        RemoteException e;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f5915e;
                Cursor cursor = null;
                cursor = null;
                cursor = null;
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
                                int g = m8177g(context, str, z);
                                String str2 = f5916f;
                                if (str2 != null && !str2.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str3 = f5916f;
                                        C1581h.m8347h(str3);
                                        classLoader = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str4 = f5916f;
                                        C1581h.m8347h(str4);
                                        classLoader = new C1634a(str4, ClassLoader.getSystemClassLoader());
                                    }
                                    m8174j(classLoader);
                                    declaredField.set(null, classLoader);
                                    f5915e = Boolean.TRUE;
                                    return g;
                                }
                                return g;
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
                } else {
                    k k = m8173k(context);
                    if (k == null) {
                        i = 0;
                    } else {
                        try {
                            try {
                                int i2 = k.i();
                                if (i2 >= 3) {
                                    cursor = (Cursor) b.M1(k.T4(b.g3(context), str, z, f5919i.get().longValue()));
                                    if (cursor != null) {
                                        try {
                                            if (cursor.moveToFirst()) {
                                                i = cursor.getInt(0);
                                                if (i <= 0 || m8176h(cursor)) {
                                                }
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                            }
                                        } catch (RemoteException e6) {
                                            e = e6;
                                            String valueOf3 = String.valueOf(e.getMessage());
                                            cursor = cursor;
                                            Log.w("DynamiteModule", valueOf3.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf3) : new String("Failed to retrieve remote module version: "));
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
                                    i = k.M4(b.g3(context), str, z);
                                } else {
                                    Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                    i = k.g3(b.g3(context), str, z);
                                }
                            } catch (RemoteException e7) {
                                e = e7;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    return i;
                }
            }
        } catch (Throwable th4) {
            C1612h.m8234a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0126  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v7 */
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
        C1636g gVar = f5918h.get();
        if (gVar == null || gVar.f5924a != null) {
            return false;
        }
        gVar.f5924a = cursor;
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
