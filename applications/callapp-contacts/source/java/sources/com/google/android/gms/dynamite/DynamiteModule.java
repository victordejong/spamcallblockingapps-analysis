package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12104h;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.p357c.C13163c;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: i */
    private static Boolean f39678i;

    /* renamed from: j */
    private static String f39679j;

    /* renamed from: k */
    private static int f39680k = -1;

    /* renamed from: o */
    private static C12155o f39684o;

    /* renamed from: p */
    private static C12156p f39685p;

    /* renamed from: h */
    public final Context f39686h;

    /* renamed from: l */
    private static final ThreadLocal<C12151k> f39681l = new ThreadLocal<>();

    /* renamed from: m */
    private static final ThreadLocal<Long> f39682m = new C12142b();

    /* renamed from: n */
    private static final AbstractC12153m f39683n = new C12143c();

    /* renamed from: a */
    public static final AbstractC12140a f39671a = new C12144d();

    /* renamed from: b */
    public static final AbstractC12140a f39672b = new C12145e();

    /* renamed from: c */
    public static final AbstractC12140a f39673c = new C12146f();

    /* renamed from: d */
    public static final AbstractC12140a f39674d = new C12147g();

    /* renamed from: e */
    public static final AbstractC12140a f39675e = new C12148h();

    /* renamed from: f */
    public static final AbstractC12140a f39676f = new C12149i();

    /* renamed from: g */
    public static final AbstractC12140a f39677g = new C12150j();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, C12142b c12142b) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, C12142b c12142b) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC12140a {
        /* renamed from: a */
        C12154n mo18965a(Context context, String str, AbstractC12153m abstractC12153m) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        C12045o.m19162a(context);
        this.f39686h = context;
    }

    /* renamed from: a */
    public static int m18973a(Context context, String str) {
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
            if (C12041m.m19168a(declaredField.get(null), str)) {
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

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:194:0x040a -> B:17:0x005a). Please submit an issue!!! */
    /* renamed from: a */
    public static int m18972a(Context context, String str, boolean z) {
        Field declaredField;
        ClassLoader classLoader;
        int i;
        Throwable th;
        Cursor cursor;
        RemoteException e;
        String str2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f39678i;
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
                            if (classLoader2 == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m18970a(classLoader2);
                                } catch (LoadingException e3) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int m18967b = m18967b(context, str, z);
                                String str3 = f39679j;
                                if (str3 != null && !str3.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str4 = f39679j;
                                        C12045o.m19162a(str4);
                                        classLoader = new DelegateLastClassLoader(str4, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str5 = f39679j;
                                        C12045o.m19162a(str5);
                                        classLoader = new C12141a(str5, ClassLoader.getSystemClassLoader());
                                    }
                                    m18970a(classLoader);
                                    declaredField.set(null, classLoader);
                                    f39678i = Boolean.TRUE;
                                    return m18967b;
                                }
                                return m18967b;
                            } catch (LoadingException e4) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f39678i = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return m18967b(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf2 = String.valueOf(e5.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                C12155o m18975a = m18975a(context);
                if (m18975a == null) {
                    i = 0;
                } else {
                    try {
                        try {
                            int m18962a = m18975a.m18962a();
                            if (m18962a >= 3) {
                                AbstractC12126b m18979a = BinderC12129d.m18979a(context);
                                long longValue = f39682m.get().longValue();
                                Parcel m13591c = m18975a.m13591c();
                                C13163c.m13588a(m13591c, m18979a);
                                m13591c.writeString(str);
                                C13163c.m13585a(m13591c, z);
                                m13591c.writeLong(longValue);
                                Parcel m13592a = m18975a.m13592a(7, m13591c);
                                AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13592a.readStrongBinder());
                                m13592a.recycle();
                                cursor = (Cursor) BinderC12129d.m18980a(m18981a);
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            int i2 = cursor.getInt(0);
                                            if (i2 > 0 && m18971a(cursor)) {
                                                cursor = null;
                                            }
                                            i = i2;
                                            if (cursor != null) {
                                                cursor.close();
                                                i = i2;
                                            }
                                        }
                                    } catch (RemoteException e6) {
                                        e = e6;
                                        String valueOf3 = String.valueOf(e.getMessage());
                                        Cursor cursor2 = cursor;
                                        if (valueOf3.length() != 0) {
                                            Cursor cursor3 = cursor;
                                            str2 = "Failed to retrieve remote module version: ".concat(valueOf3);
                                        } else {
                                            str2 = new String("Failed to retrieve remote module version: ");
                                        }
                                        Cursor cursor4 = cursor;
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
                            } else if (m18962a == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                AbstractC12126b m18979a2 = BinderC12129d.m18979a(context);
                                Parcel m13591c2 = m18975a.m13591c();
                                C13163c.m13588a(m13591c2, m18979a2);
                                m13591c2.writeString(str);
                                C13163c.m13585a(m13591c2, z);
                                Parcel m13592a2 = m18975a.m13592a(5, m13591c2);
                                i = m13592a2.readInt();
                                m13592a2.recycle();
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                AbstractC12126b m18979a3 = BinderC12129d.m18979a(context);
                                Parcel m13591c3 = m18975a.m13591c();
                                C13163c.m13588a(m13591c3, m18979a3);
                                m13591c3.writeString(str);
                                C13163c.m13585a(m13591c3, z);
                                Parcel m13592a3 = m18975a.m13592a(3, m13591c3);
                                i = m13592a3.readInt();
                                m13592a3.recycle();
                            }
                        } catch (Throwable th3) {
                            cursor = null;
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
            C12104h.m19040a(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0983 A[Catch: all -> 0x0a8c, TRY_LEAVE, TryCatch #5 {all -> 0x0a8c, blocks: (B:3:0x002f, B:7:0x00cd, B:12:0x00db, B:17:0x00e9, B:29:0x0126, B:302:0x091a, B:304:0x0925, B:306:0x092e, B:309:0x093f, B:312:0x0944, B:316:0x094f, B:318:0x0958, B:321:0x0969, B:324:0x0971, B:326:0x0983, B:327:0x0990, B:329:0x099e, B:331:0x09b0, B:333:0x09ce, B:343:0x0a09, B:344:0x0a18, B:345:0x0a19, B:345:0x0a19, B:346:0x0a1c, B:347:0x0a3f, B:348:0x0a40, B:348:0x0a40, B:349:0x0a43, B:350:0x0a8b), top: B:365:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0990 A[Catch: all -> 0x0a8c, TRY_ENTER, TryCatch #5 {all -> 0x0a8c, blocks: (B:3:0x002f, B:7:0x00cd, B:12:0x00db, B:17:0x00e9, B:29:0x0126, B:302:0x091a, B:304:0x0925, B:306:0x092e, B:309:0x093f, B:312:0x0944, B:316:0x094f, B:318:0x0958, B:321:0x0969, B:324:0x0971, B:326:0x0983, B:327:0x0990, B:329:0x099e, B:331:0x09b0, B:333:0x09ce, B:343:0x0a09, B:344:0x0a18, B:345:0x0a19, B:345:0x0a19, B:346:0x0a1c, B:347:0x0a3f, B:348:0x0a40, B:348:0x0a40, B:349:0x0a43, B:350:0x0a8b), top: B:365:0x002f }] */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule m18974a(android.content.Context r5, com.google.android.gms.dynamite.DynamiteModule.AbstractC12140a r6, java.lang.String r7) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 2754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m18974a(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$a, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    /* renamed from: a */
    private static C12155o m18975a(Context context) {
        C12155o c12155o;
        synchronized (DynamiteModule.class) {
            try {
                C12155o c12155o2 = f39684o;
                if (c12155o2 != null) {
                    return c12155o2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        c12155o = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        c12155o = queryLocalInterface instanceof C12155o ? (C12155o) queryLocalInterface : new C12155o(iBinder);
                    }
                    if (c12155o != null) {
                        f39684o = c12155o;
                        return c12155o;
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

    /* renamed from: a */
    private static void m18970a(ClassLoader classLoader) throws LoadingException {
        C12156p c12156p;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                c12156p = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                c12156p = queryLocalInterface instanceof C12156p ? (C12156p) queryLocalInterface : new C12156p(iBinder);
            }
            f39685p = c12156p;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: a */
    private static boolean m18971a(Cursor cursor) {
        C12151k c12151k = f39681l.get();
        if (c12151k == null || c12151k.f39687a != null) {
            return false;
        }
        c12151k.f39687a = cursor;
        return true;
    }

    /* renamed from: b */
    public static int m18968b(Context context, String str) {
        return m18972a(context, str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0126  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m18967b(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m18967b(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: c */
    private static DynamiteModule m18966c(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: a */
    public final IBinder m18969a(String str) throws LoadingException {
        try {
            return (IBinder) this.f39686h.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
