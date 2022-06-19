package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.common.zzc;
import com.tenor.android.core.constant.StringConstant;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1661g.C25003b;
import p193e.p1577m.p1578a.p1642f.p1661g.C25004c;
import p193e.p1577m.p1578a.p1642f.p1661g.C25005d;
import p193e.p1577m.p1578a.p1642f.p1661g.C25006e;
import p193e.p1577m.p1578a.p1642f.p1661g.C25007f;
import p193e.p1577m.p1578a.p1642f.p1661g.C25008g;
import p193e.p1577m.p1578a.p1642f.p1661g.C25009h;
import p193e.p1577m.p1578a.p1642f.p1661g.C25010i;
import p193e.p1577m.p1578a.p1642f.p1661g.C25011j;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: f */
    public static Boolean f6180f;

    /* renamed from: g */
    public static String f6181g;

    /* renamed from: h */
    public static boolean f6182h = false;

    /* renamed from: i */
    public static int f6183i = -1;

    /* renamed from: m */
    public static zzq f6187m;

    /* renamed from: n */
    public static zzr f6188n;

    /* renamed from: a */
    public final Context f6189a;

    /* renamed from: j */
    public static final ThreadLocal<C25010i> f6184j = new ThreadLocal<>();

    /* renamed from: k */
    public static final ThreadLocal<Long> f6185k = new C25004c();

    /* renamed from: l */
    public static final VersionPolicy.IVersions f6186l = new C25005d();
    @KeepForSdk

    /* renamed from: b */
    public static final VersionPolicy f6176b = new C25006e();
    @KeepForSdk

    /* renamed from: c */
    public static final VersionPolicy f6177c = new C25007f();
    @KeepForSdk

    /* renamed from: d */
    public static final VersionPolicy f6178d = new C25008g();
    @KeepForSdk

    /* renamed from: e */
    public static final VersionPolicy f6179e = new C25009h();

    @DynamiteApi
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions.class */
        public interface IVersions {
            /* renamed from: a */
            int mo4233a(Context context, String str, boolean z) throws LoadingException;

            int zza(Context context, String str);
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult.class */
        public static class SelectionResult {
            @KeepForSdk

            /* renamed from: a */
            public int f6190a = 0;
            @KeepForSdk

            /* renamed from: b */
            public int f6191b = 0;
            @KeepForSdk

            /* renamed from: c */
            public int f6192c = 0;
        }

        @KeepForSdk
        /* renamed from: a */
        SelectionResult mo4234a(Context context, String str, IVersions iVersions) throws LoadingException;
    }

    public DynamiteModule(Context context) {
        Objects.requireNonNull(context, "null reference");
        this.f6189a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public static int m38740a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(StringConstant.DOT);
            sb.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (com.google.android.gms.common.internal.Objects.m38910a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String.valueOf(declaredField.get(null)).length();
            String.valueOf(str).length();
            return 0;
        } catch (ClassNotFoundException e) {
            String.valueOf(str).length();
            return 0;
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Failed to load module descriptor class: ".concat(valueOf);
                return 0;
            }
            new String("Failed to load module descriptor class: ");
            return 0;
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public static int m38739b(Context context, String str) {
        return m38736e(context, str, false);
    }

    @KeepForSdk
    /* renamed from: d */
    public static DynamiteModule m38737d(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        Boolean bool;
        DynamiteModule dynamiteModule;
        IObjectWrapper iObjectWrapper;
        zzr zzrVar;
        boolean z;
        ThreadLocal<C25010i> threadLocal = f6184j;
        C25010i c25010i = threadLocal.get();
        C25010i c25010i2 = new C25010i(null);
        threadLocal.set(c25010i2);
        ThreadLocal<Long> threadLocal2 = f6185k;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult mo4234a = versionPolicy.mo4234a(context, str, f6186l);
            int i = mo4234a.f6190a;
            String.valueOf(str).length();
            String.valueOf(str).length();
            int i2 = mo4234a.f6192c;
            if (i2 != 0) {
                int i3 = i2;
                if (i2 == -1) {
                    if (mo4234a.f6190a != 0) {
                        i3 = -1;
                    }
                }
                if (i3 != 1 || mo4234a.f6191b != 0) {
                    if (i3 == -1) {
                        DynamiteModule m38734g = m38734g(context, str);
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor = c25010i2.f69977a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        threadLocal.set(c25010i);
                        return m38734g;
                    } else if (i3 != 1) {
                        StringBuilder sb = new StringBuilder(47);
                        sb.append("VersionPolicy returned invalid code:");
                        sb.append(i3);
                        throw new LoadingException(sb.toString());
                    } else {
                        try {
                            int i4 = mo4234a.f6191b;
                            try {
                                synchronized (DynamiteModule.class) {
                                    bool = f6180f;
                                }
                                if (bool == null) {
                                    throw new LoadingException("Failed to determine which loading route to use.");
                                }
                                if (bool.booleanValue()) {
                                    String.valueOf(str).length();
                                    synchronized (DynamiteModule.class) {
                                        zzrVar = f6188n;
                                    }
                                    if (zzrVar == null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                    }
                                    C25010i c25010i3 = threadLocal.get();
                                    if (c25010i3 == null || c25010i3.f69977a == null) {
                                        throw new LoadingException("No result cursor");
                                    }
                                    Context applicationContext = context.getApplicationContext();
                                    Cursor cursor2 = c25010i3.f69977a;
                                    new ObjectWrapper(null);
                                    synchronized (DynamiteModule.class) {
                                        z = f6183i >= 2;
                                    }
                                    Context context2 = (Context) ObjectWrapper.m38746B1(Boolean.valueOf(z).booleanValue() ? zzrVar.m38723B1(new ObjectWrapper(applicationContext), str, i4, new ObjectWrapper(cursor2)) : zzrVar.m38722m1(new ObjectWrapper(applicationContext), str, i4, new ObjectWrapper(cursor2)));
                                    if (context2 == null) {
                                        throw new LoadingException("Failed to get module context");
                                    }
                                    dynamiteModule = new DynamiteModule(context2);
                                } else {
                                    String.valueOf(str).length();
                                    zzq m38731j = m38731j(context);
                                    if (m38731j == null) {
                                        throw new LoadingException("Failed to create IDynamiteLoader.");
                                    }
                                    Parcel zzB = m38731j.zzB(6, m38731j.zza());
                                    int readInt = zzB.readInt();
                                    zzB.recycle();
                                    if (readInt >= 3) {
                                        C25010i c25010i4 = threadLocal.get();
                                        if (c25010i4 == null) {
                                            throw new LoadingException("No cached result cursor holder");
                                        }
                                        iObjectWrapper = m38731j.m38727B1(new ObjectWrapper(context), str, i4, new ObjectWrapper(c25010i4.f69977a));
                                    } else {
                                        iObjectWrapper = readInt == 2 ? m38731j.m38726C1(new ObjectWrapper(context), str, i4) : m38731j.m38724m1(new ObjectWrapper(context), str, i4);
                                    }
                                    if (ObjectWrapper.m38746B1(iObjectWrapper) == null) {
                                        throw new LoadingException("Failed to load remote module.");
                                    }
                                    dynamiteModule = new DynamiteModule((Context) ObjectWrapper.m38746B1(iObjectWrapper));
                                }
                                if (longValue == 0) {
                                    threadLocal2.remove();
                                } else {
                                    threadLocal2.set(Long.valueOf(longValue));
                                }
                                Cursor cursor3 = c25010i2.f69977a;
                                if (cursor3 != null) {
                                    cursor3.close();
                                }
                                threadLocal.set(c25010i);
                                return dynamiteModule;
                            } catch (RemoteException e) {
                                throw new LoadingException("Failed to load remote module.", e);
                            } catch (LoadingException e2) {
                                throw e2;
                            } catch (Throwable th) {
                                CrashUtils.m38790a(context, th);
                                throw new LoadingException("Failed to load remote module.", th);
                            }
                        } catch (LoadingException e3) {
                            String valueOf = String.valueOf(e3.getMessage());
                            if (valueOf.length() != 0) {
                                "Failed to load remote module: ".concat(valueOf);
                            } else {
                                new String("Failed to load remote module: ");
                            }
                            int i5 = mo4234a.f6190a;
                            if (i5 == 0 || versionPolicy.mo4234a(context, str, new C25011j(i5)).f6192c != -1) {
                                throw new LoadingException("Remote load failed. No local fallback found.", e3);
                            }
                            DynamiteModule m38734g2 = m38734g(context, str);
                            if (longValue == 0) {
                                f6185k.remove();
                            } else {
                                f6185k.set(Long.valueOf(longValue));
                            }
                            Cursor cursor4 = c25010i2.f69977a;
                            if (cursor4 != null) {
                                cursor4.close();
                            }
                            f6184j.set(c25010i);
                            return m38734g2;
                        }
                    }
                }
            }
            int i6 = mo4234a.f6190a;
            int i7 = mo4234a.f6191b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 92);
            sb2.append("No acceptable module ");
            sb2.append(str);
            sb2.append(" found. Local version is ");
            sb2.append(i6);
            sb2.append(" and remote version is ");
            sb2.append(i7);
            sb2.append(StringConstant.DOT);
            throw new LoadingException(sb2.toString());
        } catch (Throwable th2) {
            if (longValue == 0) {
                f6185k.remove();
            } else {
                f6185k.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = c25010i2.f69977a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f6184j.set(c25010i);
            throw th2;
        }
    }

    /* renamed from: e */
    public static int m38736e(Context context, String str, boolean z) {
        Field declaredField;
        int i;
        RemoteException e;
        Cursor cursor;
        Cursor cursor2;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool3 = f6180f;
                Boolean bool4 = bool3;
                if (bool3 == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        e2.toString().length();
                        bool4 = bool2;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader != ClassLoader.getSystemClassLoader()) {
                                try {
                                    m38733h(classLoader);
                                    bool4 = bool;
                                } catch (LoadingException e3) {
                                    bool4 = bool;
                                }
                                f6180f = bool4;
                            }
                        } else if (f6182h || bool.equals(null)) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        } else {
                            try {
                                int m38735f = m38735f(context, str, z);
                                String str2 = f6181g;
                                if (str2 != null && !str2.isEmpty()) {
                                    DelegateLastClassLoader m38730a = zzb.m38730a();
                                    if (m38730a == null) {
                                        if (Build.VERSION.SDK_INT >= 29) {
                                            String str3 = f6181g;
                                            Objects.requireNonNull(str3, "null reference");
                                            m38730a = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                        } else {
                                            String str4 = f6181g;
                                            Objects.requireNonNull(str4, "null reference");
                                            m38730a = new C25003b(str4, ClassLoader.getSystemClassLoader());
                                        }
                                    }
                                    m38733h(m38730a);
                                    declaredField.set(null, m38730a);
                                    f6180f = bool;
                                    return m38735f;
                                }
                                return m38735f;
                            } catch (LoadingException e4) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                            }
                        }
                        bool4 = bool2;
                        f6180f = bool4;
                    }
                }
                if (bool4.booleanValue()) {
                    try {
                        return m38735f(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf = String.valueOf(e5.getMessage());
                        if (valueOf.length() != 0) {
                            "Failed to retrieve remote module version: ".concat(valueOf);
                            return 0;
                        }
                        new String("Failed to retrieve remote module version: ");
                        return 0;
                    }
                }
                zzq m38731j = m38731j(context);
                if (m38731j == null) {
                    i = 0;
                } else {
                    try {
                        try {
                            Parcel zzB = m38731j.zzB(6, m38731j.zza());
                            int readInt = zzB.readInt();
                            zzB.recycle();
                            if (readInt >= 3) {
                                C25010i c25010i = f6184j.get();
                                if (c25010i == null || (cursor2 = c25010i.f69977a) == null) {
                                    cursor = (Cursor) ObjectWrapper.m38746B1(m38731j.m38725D1(new ObjectWrapper(context), str, z, f6185k.get().longValue()));
                                    if (cursor != null) {
                                        try {
                                            if (cursor.moveToFirst()) {
                                                int i2 = cursor.getInt(0);
                                                if (i2 > 0) {
                                                    if (m38732i(cursor)) {
                                                        cursor = null;
                                                    }
                                                }
                                                i = i2;
                                                if (cursor != null) {
                                                    cursor.close();
                                                    i = i2;
                                                }
                                            }
                                        } catch (RemoteException e6) {
                                            e = e6;
                                            String valueOf2 = String.valueOf(e.getMessage());
                                            Cursor cursor3 = cursor;
                                            if (valueOf2.length() != 0) {
                                                Cursor cursor4 = cursor;
                                                "Failed to retrieve remote module version: ".concat(valueOf2);
                                            } else {
                                                new String("Failed to retrieve remote module version: ");
                                            }
                                            i = 0;
                                            if (cursor != null) {
                                                cursor.close();
                                                i = 0;
                                            }
                                            return i;
                                        } catch (Throwable th) {
                                            th = th;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    i = 0;
                                    if (cursor != null) {
                                        cursor.close();
                                        i = 0;
                                    }
                                } else {
                                    i = cursor2.getInt(0);
                                }
                            } else if (readInt == 2) {
                                ObjectWrapper objectWrapper = new ObjectWrapper(context);
                                Parcel zza = m38731j.zza();
                                zzc.zze(zza, objectWrapper);
                                zza.writeString(str);
                                zzc.zzb(zza, z);
                                Parcel zzB2 = m38731j.zzB(5, zza);
                                i = zzB2.readInt();
                                zzB2.recycle();
                            } else {
                                ObjectWrapper objectWrapper2 = new ObjectWrapper(context);
                                Parcel zza2 = m38731j.zza();
                                zzc.zze(zza2, objectWrapper2);
                                zza2.writeString(str);
                                zzc.zzb(zza2, z);
                                Parcel zzB3 = m38731j.zzB(3, zza2);
                                i = zzB3.readInt();
                                zzB3.recycle();
                            }
                        } catch (RemoteException e7) {
                            e = e7;
                            cursor = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                    }
                }
                return i;
            }
        } catch (Throwable th3) {
            CrashUtils.m38790a(context, th3);
            throw th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0127  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m38735f(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m38735f(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: g */
    public static DynamiteModule m38734g(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: h */
    public static void m38733h(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = queryLocalInterface instanceof zzr ? (zzr) queryLocalInterface : new zzr(iBinder);
            }
            f6188n = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e);
        }
    }

    /* renamed from: i */
    public static boolean m38732i(Cursor cursor) {
        C25010i c25010i = f6184j.get();
        if (c25010i == null || c25010i.f69977a != null) {
            return false;
        }
        c25010i.f69977a = cursor;
        return true;
    }

    /* renamed from: j */
    public static zzq m38731j(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            try {
                zzq zzqVar2 = f6187m;
                if (zzqVar2 != null) {
                    return zzqVar2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        zzqVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        zzqVar = queryLocalInterface instanceof zzq ? (zzq) queryLocalInterface : new zzq(iBinder);
                    }
                    if (zzqVar != null) {
                        f6187m = zzqVar;
                        return zzqVar;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf);
                    } else {
                        new String("Failed to load IDynamiteLoader from GmsCore: ");
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    /* renamed from: c */
    public IBinder m38738c(String str) throws LoadingException {
        try {
            return (IBinder) this.f6189a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e);
        }
    }
}
