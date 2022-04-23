package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.h;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.c.c;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    private static Boolean i;
    private static String j;
    private static int k = -1;
    private static o o;
    private static p p;
    public final Context h;
    private static final ThreadLocal<k> l = new ThreadLocal<>();
    private static final ThreadLocal<Long> m = new b();
    private static final m n = new c();

    /* renamed from: a  reason: collision with root package name */
    public static final a f22980a = new d();

    /* renamed from: b  reason: collision with root package name */
    public static final a f22981b = new e();

    /* renamed from: c  reason: collision with root package name */
    public static final a f22982c = new f();

    /* renamed from: d  reason: collision with root package name */
    public static final a f22983d = new g();
    public static final a e = new h();
    public static final a f = new i();
    public static final a g = new j();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, b bVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, b bVar) {
            super(str, th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface a {
        n a(Context context, String str, m mVar) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        o.a(context);
        this.h = context;
    }

    public static int a(Context context, String str) {
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
            if (m.a(declaredField.get(null), str)) {
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
        } catch (ClassNotFoundException e2) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e3) {
            String valueOf2 = String.valueOf(e3.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:194:0x040a -> B:17:0x005a). Please submit an issue!!! */
    public static int a(Context context, String str, boolean z) {
        Field declaredField;
        ClassLoader classLoader;
        int i2;
        Throwable th;
        RemoteException e2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = i;
                Cursor cursor = null;
                cursor = null;
                cursor = null;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e3) {
                        String valueOf = String.valueOf(e3);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
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
                                    a(classLoader2);
                                } catch (LoadingException e4) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int b2 = b(context, str, z);
                                String str2 = j;
                                if (str2 != null && !str2.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str3 = j;
                                        o.a(str3);
                                        classLoader = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str4 = j;
                                        o.a(str4);
                                        classLoader = new com.google.android.gms.dynamite.a(str4, ClassLoader.getSystemClassLoader());
                                    }
                                    a(classLoader);
                                    declaredField.set(null, classLoader);
                                    i = Boolean.TRUE;
                                    return b2;
                                }
                                return b2;
                            } catch (LoadingException e5) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        i = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return b(context, str, z);
                    } catch (LoadingException e6) {
                        String valueOf2 = String.valueOf(e6.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                } else {
                    o a2 = a(context);
                    if (a2 == null) {
                        i2 = 0;
                    } else {
                        try {
                            try {
                                int a3 = a2.a();
                                if (a3 >= 3) {
                                    b a4 = d.a(context);
                                    long longValue = m.get().longValue();
                                    Parcel c2 = a2.c();
                                    c.a(c2, a4);
                                    c2.writeString(str);
                                    c.a(c2, z);
                                    c2.writeLong(longValue);
                                    Parcel a5 = a2.a(7, c2);
                                    b a6 = b.a.a(a5.readStrongBinder());
                                    a5.recycle();
                                    cursor = (Cursor) d.a(a6);
                                    if (cursor != null) {
                                        try {
                                            if (cursor.moveToFirst()) {
                                                int i3 = cursor.getInt(0);
                                                if (i3 <= 0 || a(cursor)) {
                                                }
                                                i2 = i3;
                                                if (cursor != null) {
                                                    cursor.close();
                                                    i2 = i3;
                                                }
                                            }
                                        } catch (RemoteException e7) {
                                            e2 = e7;
                                            String valueOf3 = String.valueOf(e2.getMessage());
                                            Log.w("DynamiteModule", valueOf3.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf3) : new String("Failed to retrieve remote module version: "));
                                            i2 = 0;
                                            if (cursor != null) {
                                                cursor.close();
                                                i2 = 0;
                                            }
                                            return i2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    i2 = 0;
                                    if (cursor != null) {
                                        cursor.close();
                                        i2 = 0;
                                    }
                                } else if (a3 == 2) {
                                    Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                    b a7 = d.a(context);
                                    Parcel c3 = a2.c();
                                    c.a(c3, a7);
                                    c3.writeString(str);
                                    c.a(c3, z);
                                    Parcel a8 = a2.a(5, c3);
                                    i2 = a8.readInt();
                                    a8.recycle();
                                } else {
                                    Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                    b a9 = d.a(context);
                                    Parcel c4 = a2.c();
                                    c.a(c4, a9);
                                    c4.writeString(str);
                                    c.a(c4, z);
                                    Parcel a10 = a2.a(3, c4);
                                    i2 = a10.readInt();
                                    a10.recycle();
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (RemoteException e8) {
                            e2 = e8;
                        }
                    }
                    return i2;
                }
            }
        } catch (Throwable th4) {
            h.a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0983 A[Catch: all -> 0x0a8c, TRY_LEAVE, TryCatch #5 {all -> 0x0a8c, blocks: (B:3:0x002f, B:7:0x00cd, B:12:0x00db, B:17:0x00e9, B:29:0x0126, B:302:0x091a, B:304:0x0925, B:306:0x092e, B:309:0x093f, B:312:0x0944, B:316:0x094f, B:318:0x0958, B:321:0x0969, B:324:0x0971, B:326:0x0983, B:327:0x0990, B:329:0x099e, B:331:0x09b0, B:333:0x09ce, B:343:0x0a09, B:344:0x0a18, B:345:0x0a19, B:345:0x0a19, B:346:0x0a1c, B:347:0x0a3f, B:348:0x0a40, B:348:0x0a40, B:349:0x0a43, B:350:0x0a8b), top: B:365:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0990 A[Catch: all -> 0x0a8c, TRY_ENTER, TryCatch #5 {all -> 0x0a8c, blocks: (B:3:0x002f, B:7:0x00cd, B:12:0x00db, B:17:0x00e9, B:29:0x0126, B:302:0x091a, B:304:0x0925, B:306:0x092e, B:309:0x093f, B:312:0x0944, B:316:0x094f, B:318:0x0958, B:321:0x0969, B:324:0x0971, B:326:0x0983, B:327:0x0990, B:329:0x099e, B:331:0x09b0, B:333:0x09ce, B:343:0x0a09, B:344:0x0a18, B:345:0x0a19, B:345:0x0a19, B:346:0x0a1c, B:347:0x0a3f, B:348:0x0a40, B:348:0x0a40, B:349:0x0a43, B:350:0x0a8b), top: B:365:0x002f }] */
    /* JADX WARN: Type inference failed for: r19v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule a(android.content.Context r5, com.google.android.gms.dynamite.DynamiteModule.a r6, java.lang.String r7) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 2754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.a(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$a, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    private static o a(Context context) {
        o oVar;
        synchronized (DynamiteModule.class) {
            try {
                o oVar2 = o;
                if (oVar2 != null) {
                    return oVar2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        oVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        oVar = queryLocalInterface instanceof o ? (o) queryLocalInterface : new o(iBinder);
                    }
                    if (oVar != null) {
                        o = oVar;
                        return oVar;
                    }
                } catch (Exception e2) {
                    String valueOf = String.valueOf(e2.getMessage());
                    Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(ClassLoader classLoader) throws LoadingException {
        p pVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                pVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                pVar = queryLocalInterface instanceof p ? (p) queryLocalInterface : new p(iBinder);
            }
            p = pVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new LoadingException("Failed to instantiate dynamite loader", e2, null);
        }
    }

    private static boolean a(Cursor cursor) {
        k kVar = l.get();
        if (kVar == null || kVar.f22984a != null) {
            return false;
        }
        kVar.f22984a = cursor;
        return true;
    }

    public static int b(Context context, String str) {
        return a(context, str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0126  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.b(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule c(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    public final IBinder a(String str) throws LoadingException {
        try {
            return (IBinder) this.h.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e2, null);
        }
    }
}
