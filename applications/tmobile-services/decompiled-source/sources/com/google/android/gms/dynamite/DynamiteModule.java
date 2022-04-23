package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy

    /* renamed from: b */
    private static Boolean f7696b;
    @GuardedBy

    /* renamed from: c */
    private static zzi f7697c;
    @GuardedBy

    /* renamed from: d */
    private static zzk f7698d;
    @GuardedBy

    /* renamed from: e */
    private static String f7699e;
    @GuardedBy

    /* renamed from: f */
    private static int f7700f = -1;

    /* renamed from: g */
    private static final ThreadLocal<zza> f7701g = new ThreadLocal<>();

    /* renamed from: h */
    private static final VersionPolicy.zza f7702h = new com.google.android.gms.dynamite.zza();
    @KeepForSdk

    /* renamed from: i */
    public static final VersionPolicy f7703i = new zzc();
    @KeepForSdk

    /* renamed from: j */
    public static final VersionPolicy f7704j = new zze();
    @KeepForSdk

    /* renamed from: k */
    public static final VersionPolicy f7705k = new zzf();

    /* renamed from: a */
    private final Context f7706a;

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @GuardedBy
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        private LoadingException(String str) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, com.google.android.gms.dynamite.zza zzaVar) {
            this(str);
        }

        private LoadingException(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ LoadingException(String str, Throwable th, com.google.android.gms.dynamite.zza zzaVar) {
            this(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza.class */
        public interface zza {
            /* renamed from: a */
            int mo14217a(Context context, String str);

            /* renamed from: b */
            int mo14216b(Context context, String str, boolean z) throws LoadingException;
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb.class */
        public static final class zzb {

            /* renamed from: a */
            public int f7707a = 0;

            /* renamed from: b */
            public int f7708b = 0;

            /* renamed from: c */
            public int f7709c = 0;
        }

        /* renamed from: a */
        zzb mo14215a(Context context, String str, zza zzaVar) throws LoadingException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$zza.class */
    public static final class zza {

        /* renamed from: a */
        public Cursor f7710a;

        private zza() {
        }

        /* synthetic */ zza(com.google.android.gms.dynamite.zza zzaVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$zzb.class */
    public static final class zzb implements VersionPolicy.zza {

        /* renamed from: a */
        private final int f7711a;

        public zzb(int i, int i2) {
            this.f7711a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        /* renamed from: a */
        public final int mo14217a(Context context, String str) {
            return this.f7711a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        /* renamed from: b */
        public final int mo14216b(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        Preconditions.m14523k(context);
        this.f7706a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public static int m14231a(Context context, String str) {
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
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    @KeepForSdk
    /* renamed from: c */
    public static int m14229c(Context context, String str) {
        return m14226f(context, str, false);
    }

    @KeepForSdk
    /* renamed from: e */
    public static DynamiteModule m14227e(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        zza zzaVar = f7701g.get();
        zza zzaVar2 = new zza(null);
        f7701g.set(zzaVar2);
        try {
            VersionPolicy.zzb a = versionPolicy.mo14215a(context, str, f7702h);
            int i = a.f7707a;
            int i2 = a.f7708b;
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
            if (a.f7709c == 0 || ((a.f7709c == -1 && a.f7707a == 0) || (a.f7709c == 1 && a.f7708b == 0))) {
                int i3 = a.f7707a;
                int i4 = a.f7708b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i3);
                sb2.append(" and remote version is ");
                sb2.append(i4);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), (com.google.android.gms.dynamite.zza) null);
            } else if (a.f7709c == -1) {
                DynamiteModule m = m14219m(context, str);
                Cursor cursor = zzaVar2.f7710a;
                if (cursor != null) {
                    cursor.close();
                }
                f7701g.set(zzaVar);
                return m;
            } else if (a.f7709c == 1) {
                try {
                    DynamiteModule g = m14225g(context, str, a.f7708b);
                    Cursor cursor2 = zzaVar2.f7710a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    f7701g.set(zzaVar);
                    return g;
                } catch (LoadingException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    if (a.f7707a == 0 || versionPolicy.mo14215a(context, str, new zzb(a.f7707a, 0)).f7709c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                    }
                    DynamiteModule m2 = m14219m(context, str);
                    Cursor cursor3 = zzaVar2.f7710a;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    f7701g.set(zzaVar);
                    return m2;
                }
            } else {
                int i5 = a.f7709c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i5);
                throw new LoadingException(sb3.toString(), (com.google.android.gms.dynamite.zza) null);
            }
        } catch (Throwable th) {
            Cursor cursor4 = zzaVar2.f7710a;
            if (cursor4 != null) {
                cursor4.close();
            }
            f7701g.set(zzaVar);
            throw th;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0190 -> B:17:0x004e). Please submit an issue!!! */
    /* renamed from: f */
    public static int m14226f(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f7696b;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                        declaredField = loadClass.getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (loadClass) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m14224h(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int l = m14220l(context, str, z);
                                if (f7699e != null && !f7699e.isEmpty()) {
                                    zzh zzhVar = new zzh(f7699e, ClassLoader.getSystemClassLoader());
                                    m14224h(zzhVar);
                                    declaredField.set(null, zzhVar);
                                    f7696b = Boolean.TRUE;
                                    return l;
                                }
                                return l;
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f7696b = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return m14222j(context, str, z);
                }
                try {
                    return m14220l(context, str, z);
                } catch (LoadingException e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
        } catch (Throwable th) {
            CrashUtils.m14337a(context, th);
            throw th;
        }
    }

    /* renamed from: g */
    private static DynamiteModule m14225g(Context context, String str, int i) throws LoadingException {
        Boolean bool;
        IObjectWrapper iObjectWrapper;
        try {
            synchronized (DynamiteModule.class) {
                bool = f7696b;
            }
            if (bool == null) {
                throw new LoadingException("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.zza) null);
            } else if (bool.booleanValue()) {
                return m14221k(context, str, i);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i);
                Log.i("DynamiteModule", sb.toString());
                zzi n = m14218n(context);
                if (n != null) {
                    if (n.mo14214J0() >= 2) {
                        iObjectWrapper = n.mo14210v0(ObjectWrapper.m14257f(context), str, i);
                    } else {
                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                        iObjectWrapper = n.mo14213M(ObjectWrapper.m14257f(context), str, i);
                    }
                    if (ObjectWrapper.m14258c(iObjectWrapper) != null) {
                        return new DynamiteModule((Context) ObjectWrapper.m14258c(iObjectWrapper));
                    }
                    throw new LoadingException("Failed to load remote module.", (com.google.android.gms.dynamite.zza) null);
                }
                throw new LoadingException("Failed to create IDynamiteLoader.", (com.google.android.gms.dynamite.zza) null);
            }
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, null);
        } catch (LoadingException e2) {
            throw e2;
        } catch (Throwable th) {
            CrashUtils.m14337a(context, th);
            throw new LoadingException("Failed to load remote module.", th, null);
        }
    }

    @GuardedBy
    /* renamed from: h */
    private static void m14224h(ClassLoader classLoader) throws LoadingException {
        zzk zzkVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzkVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzkVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
            }
            f7698d = zzkVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: i */
    private static Boolean m14223i() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f7700f >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: j */
    private static int m14222j(Context context, String str, boolean z) {
        zzi n = m14218n(context);
        if (n == null) {
            return 0;
        }
        try {
            if (n.mo14214J0() >= 2) {
                return n.mo14212b0(ObjectWrapper.m14257f(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return n.mo14211p0(ObjectWrapper.m14257f(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    /* renamed from: k */
    private static DynamiteModule m14221k(Context context, String str, int i) throws LoadingException, RemoteException {
        zzk zzkVar;
        IObjectWrapper iObjectWrapper;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            try {
                zzkVar = f7698d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zzkVar != null) {
            zza zzaVar = f7701g.get();
            if (zzaVar == null || zzaVar.f7710a == null) {
                throw new LoadingException("No result cursor", (com.google.android.gms.dynamite.zza) null);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = zzaVar.f7710a;
            ObjectWrapper.m14257f(null);
            if (m14223i().booleanValue()) {
                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                iObjectWrapper = zzkVar.mo14209A(ObjectWrapper.m14257f(applicationContext), str, i, ObjectWrapper.m14257f(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                iObjectWrapper = zzkVar.mo14208y(ObjectWrapper.m14257f(applicationContext), str, i, ObjectWrapper.m14257f(cursor));
            }
            Context context2 = (Context) ObjectWrapper.m14258c(iObjectWrapper);
            if (context2 != null) {
                return new DynamiteModule(context2);
            }
            throw new LoadingException("Failed to get module context", (com.google.android.gms.dynamite.zza) null);
        }
        throw new LoadingException("DynamiteLoaderV2 was not cached.", (com.google.android.gms.dynamite.zza) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x012b  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m14220l(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m14220l(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: m */
    private static DynamiteModule m14219m(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: n */
    private static zzi m14218n(Context context) {
        zzi zziVar;
        synchronized (DynamiteModule.class) {
            try {
                if (f7697c != null) {
                    return f7697c;
                } else if (GoogleApiAvailabilityLight.m15064h().mo15063i(context) != 0) {
                    return null;
                } else {
                    try {
                        IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                        if (iBinder == null) {
                            zziVar = null;
                        } else {
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                            zziVar = queryLocalInterface instanceof zzi ? (zzi) queryLocalInterface : new zzj(iBinder);
                        }
                        if (zziVar != null) {
                            f7697c = zziVar;
                            return zziVar;
                        }
                    } catch (Exception e) {
                        String valueOf = String.valueOf(e.getMessage());
                        Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                    }
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public final Context m14230b() {
        return this.f7706a;
    }

    @KeepForSdk
    /* renamed from: d */
    public final IBinder m14228d(String str) throws LoadingException {
        try {
            return (IBinder) this.f7706a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
