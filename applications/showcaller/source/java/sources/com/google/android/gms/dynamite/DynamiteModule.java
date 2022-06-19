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
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.C6229g;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: g */
    private static Boolean f19764g;

    /* renamed from: h */
    private static String f19765h;

    /* renamed from: i */
    private static int f19766i = -1;

    /* renamed from: n */
    private static C6272o f19771n;

    /* renamed from: o */
    private static C6273p f19772o;

    /* renamed from: p */
    private final Context f19773p;

    /* renamed from: j */
    private static final ThreadLocal<C6268k> f19767j = new ThreadLocal<>();

    /* renamed from: k */
    private static final ThreadLocal<Long> f19768k = new C6259b();

    /* renamed from: l */
    private static final AbstractC6270m f19769l = new C6260c();
    @RecentlyNonNull

    /* renamed from: a */
    public static final AbstractC6257a f19758a = new C6261d();
    @RecentlyNonNull

    /* renamed from: b */
    public static final AbstractC6257a f19759b = new C6262e();
    @RecentlyNonNull

    /* renamed from: c */
    public static final AbstractC6257a f19760c = new C6263f();
    @RecentlyNonNull

    /* renamed from: d */
    public static final AbstractC6257a f19761d = new C6264g();
    @RecentlyNonNull

    /* renamed from: e */
    public static final AbstractC6257a f19762e = new C6265h();
    @RecentlyNonNull

    /* renamed from: f */
    public static final AbstractC6257a f19763f = new C6266i();
    @RecentlyNonNull

    /* renamed from: m */
    public static final AbstractC6257a f19770m = new C6267j();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @RecentlyNullable
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, C6259b c6259b) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, C6259b c6259b) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC6257a {
        /* renamed from: a */
        C6271n mo16732a(Context context, String str, AbstractC6270m abstractC6270m);
    }

    private DynamiteModule(Context context) {
        C6155o.m17018j(context);
        this.f19773p = context;
    }

    /* renamed from: a */
    public static int m16743a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
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
            if (C6147m.m17044a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 51 + String.valueOf(str).length());
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
    public static int m16741c(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return m16738f(context, str, false);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static DynamiteModule m16739e(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC6257a abstractC6257a, @RecentlyNonNull String str) {
        Boolean bool;
        DynamiteModule dynamiteModule;
        AbstractC6253a abstractC6253a;
        C6273p c6273p;
        boolean z;
        AbstractC6253a abstractC6253a2;
        ThreadLocal<C6268k> threadLocal = f19767j;
        C6268k c6268k = threadLocal.get();
        C6268k c6268k2 = new C6268k(null);
        threadLocal.set(c6268k2);
        ThreadLocal<Long> threadLocal2 = f19768k;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            C6271n mo16732a = abstractC6257a.mo16732a(context, str, f19769l);
            int i = mo16732a.f19776a;
            int i2 = mo16732a.f19777b;
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
            int i3 = mo16732a.f19778c;
            if (i3 == 0 || ((i3 == -1 && mo16732a.f19776a == 0) || (i3 == 1 && mo16732a.f19777b == 0))) {
                int i4 = mo16732a.f19776a;
                int i5 = mo16732a.f19777b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i4);
                sb2.append(" and remote version is ");
                sb2.append(i5);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), null);
            } else if (i3 == -1) {
                DynamiteModule m16735i = m16735i(context, str);
                if (longValue == 0) {
                    threadLocal2.remove();
                } else {
                    threadLocal2.set(Long.valueOf(longValue));
                }
                Cursor cursor = c6268k2.f19774a;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(c6268k);
                return m16735i;
            } else if (i3 != 1) {
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(0);
                throw new LoadingException(sb3.toString(), null);
            } else {
                try {
                    int i6 = mo16732a.f19777b;
                    try {
                        synchronized (DynamiteModule.class) {
                            try {
                                bool = f19764g;
                            } finally {
                            }
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
                                try {
                                    c6273p = f19772o;
                                } finally {
                                }
                            }
                            if (c6273p == null) {
                                throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                            }
                            C6268k c6268k3 = threadLocal.get();
                            if (c6268k3 == null || c6268k3.f19774a == null) {
                                throw new LoadingException("No result cursor", null);
                            }
                            Context applicationContext = context.getApplicationContext();
                            Cursor cursor2 = c6268k3.f19774a;
                            BinderC6255b.m16744m2(null);
                            synchronized (DynamiteModule.class) {
                                try {
                                    z = f19766i >= 2;
                                } finally {
                                }
                            }
                            if (Boolean.valueOf(z).booleanValue()) {
                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                abstractC6253a2 = c6273p.m16722m2(BinderC6255b.m16744m2(applicationContext), str, i6, BinderC6255b.m16744m2(cursor2));
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                abstractC6253a2 = c6273p.m16723J0(BinderC6255b.m16744m2(applicationContext), str, i6, BinderC6255b.m16744m2(cursor2));
                            }
                            Context context2 = (Context) BinderC6255b.m16745J0(abstractC6253a2);
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
                            C6272o m16733k = m16733k(context);
                            if (m16733k == null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                            }
                            int zzi = m16733k.zzi();
                            if (zzi >= 3) {
                                C6268k c6268k4 = threadLocal.get();
                                if (c6268k4 == null) {
                                    throw new LoadingException("No cached result cursor holder", null);
                                }
                                abstractC6253a = m16733k.m16727V4(BinderC6255b.m16744m2(context), str, i6, BinderC6255b.m16744m2(c6268k4.f19774a));
                            } else if (zzi == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                abstractC6253a = m16733k.m16726a3(BinderC6255b.m16744m2(context), str, i6);
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                abstractC6253a = m16733k.m16728J0(BinderC6255b.m16744m2(context), str, i6);
                            }
                            if (BinderC6255b.m16745J0(abstractC6253a) == null) {
                                throw new LoadingException("Failed to load remote module.", null);
                            }
                            dynamiteModule = new DynamiteModule((Context) BinderC6255b.m16745J0(abstractC6253a));
                        }
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor3 = c6268k2.f19774a;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        threadLocal.set(c6268k);
                        return dynamiteModule;
                    } catch (RemoteException e) {
                        throw new LoadingException("Failed to load remote module.", e, null);
                    } catch (LoadingException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        C6229g.m16808a(context, th);
                        throw new LoadingException("Failed to load remote module.", th, null);
                    }
                } catch (LoadingException e3) {
                    String valueOf = String.valueOf(e3.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    int i7 = mo16732a.f19776a;
                    if (i7 == 0 || abstractC6257a.mo16732a(context, str, new C6269l(i7, 0)).f19778c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                    }
                    DynamiteModule m16735i2 = m16735i(context, str);
                    if (longValue == 0) {
                        f19768k.remove();
                    } else {
                        f19768k.set(Long.valueOf(longValue));
                    }
                    Cursor cursor4 = c6268k2.f19774a;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    f19767j.set(c6268k);
                    return m16735i2;
                }
            }
        } catch (Throwable th2) {
            if (longValue == 0) {
                f19768k.remove();
            } else {
                f19768k.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = c6268k2.f19774a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f19767j.set(c6268k);
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:145:0x0322 -> B:17:0x005b). Please submit an issue!!! */
    /* renamed from: f */
    public static int m16738f(@RecentlyNonNull Context context, @RecentlyNonNull String str, boolean z) {
        Field declaredField;
        ClassLoader classLoader;
        int i;
        Throwable th;
        RemoteException e;
        Cursor cursor;
        String str2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f19764g;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String valueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader2 = (ClassLoader) declaredField.get(null);
                        if (classLoader2 != null) {
                            if (classLoader2 == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m16734j(classLoader2);
                                } catch (LoadingException e3) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int m16737g = m16737g(context, str, z);
                                String str3 = f19765h;
                                if (str3 != null && !str3.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str4 = f19765h;
                                        C6155o.m17018j(str4);
                                        classLoader = new DelegateLastClassLoader(str4, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str5 = f19765h;
                                        C6155o.m17018j(str5);
                                        classLoader = new C6258a(str5, ClassLoader.getSystemClassLoader());
                                    }
                                    m16734j(classLoader);
                                    declaredField.set(null, classLoader);
                                    f19764g = Boolean.TRUE;
                                    return m16737g;
                                }
                                return m16737g;
                            } catch (LoadingException e4) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f19764g = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return m16737g(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf2 = String.valueOf(e5.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                C6272o m16733k = m16733k(context);
                if (m16733k == null) {
                    i = 0;
                } else {
                    Cursor cursor2 = null;
                    try {
                        try {
                            int zzi = m16733k.zzi();
                            if (zzi >= 3) {
                                cursor = (Cursor) BinderC6255b.m16745J0(m16733k.m16729A4(BinderC6255b.m16744m2(context), str, z, f19768k.get().longValue()));
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            i = cursor.getInt(0);
                                            if (i > 0 && m16736h(cursor)) {
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
                                        Cursor cursor5 = cursor;
                                        Log.w("DynamiteModule", str2);
                                        i = 0;
                                        if (cursor != null) {
                                            cursor.close();
                                            i = 0;
                                        }
                                        return i;
                                    } catch (Throwable th2) {
                                        cursor2 = cursor;
                                        th = th2;
                                        if (cursor2 != null) {
                                            cursor2.close();
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
                            } else if (zzi == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = m16733k.m16724y4(BinderC6255b.m16744m2(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = m16733k.m16725m2(BinderC6255b.m16744m2(context), str, z);
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (RemoteException e7) {
                        e = e7;
                        cursor = null;
                    }
                }
                return i;
            }
        } catch (Throwable th4) {
            C6229g.m16808a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0128  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m16737g(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m16737g(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: h */
    private static boolean m16736h(Cursor cursor) {
        C6268k c6268k = f19767j.get();
        if (c6268k == null || c6268k.f19774a != null) {
            return false;
        }
        c6268k.f19774a = cursor;
        return true;
    }

    /* renamed from: i */
    private static DynamiteModule m16735i(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: j */
    private static void m16734j(ClassLoader classLoader) {
        C6273p c6273p;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                c6273p = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                c6273p = queryLocalInterface instanceof C6273p ? (C6273p) queryLocalInterface : new C6273p(iBinder);
            }
            f19772o = c6273p;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: k */
    private static C6272o m16733k(Context context) {
        C6272o c6272o;
        synchronized (DynamiteModule.class) {
            try {
                C6272o c6272o2 = f19771n;
                if (c6272o2 != null) {
                    return c6272o2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        c6272o = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        c6272o = queryLocalInterface instanceof C6272o ? (C6272o) queryLocalInterface : new C6272o(iBinder);
                    }
                    if (c6272o != null) {
                        f19771n = c6272o;
                        return c6272o;
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
    public Context m16742b() {
        return this.f19773p;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public IBinder m16740d(@RecentlyNonNull String str) {
        try {
            return (IBinder) this.f19773p.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
