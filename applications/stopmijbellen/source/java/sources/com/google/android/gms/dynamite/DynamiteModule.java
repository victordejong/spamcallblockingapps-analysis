package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")
    private static Boolean zzb;
    @GuardedBy("DynamiteModule.class")
    private static String zzc;
    @GuardedBy("DynamiteModule.class")
    private static boolean zzd = false;
    @GuardedBy("DynamiteModule.class")
    private static int zze = -1;
    @GuardedBy("DynamiteModule.class")
    private static zzq zzj;
    @GuardedBy("DynamiteModule.class")
    private static zzr zzk;
    private final Context zzi;
    private static final ThreadLocal<zzn> zzf = new ThreadLocal<>();
    private static final ThreadLocal<Long> zzg = new zzd();
    private static final VersionPolicy.IVersions zzh = new zze();
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzf();
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zzg();
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();
    public static final VersionPolicy zza = new zzl();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions.class */
        public interface IVersions {
            int zza(Context context, String str);

            int zzb(Context context, String str, boolean z) throws LoadingException;
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult.class */
        public static class SelectionResult {
            @KeepForSdk
            public int localVersion = 0;
            @KeepForSdk
            public int remoteVersion = 0;
            @KeepForSdk
            public int selection = 0;
        }

        @KeepForSdk
        SelectionResult selectModule(Context context, String str, IVersions iVersions) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzi = context;
    }

    @KeepForSdk
    public static int getLocalVersion(Context context, String str) {
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
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            new StringBuilder(String.valueOf(declaredField.get(null)).length() + 51 + String.valueOf(str).length());
            return 0;
        } catch (ClassNotFoundException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 45);
            sb2.append("Local module descriptor class for ");
            sb2.append(str);
            sb2.append(" not found.");
            Log.w("DynamiteModule", sb2.toString());
            return 0;
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() == 0) {
                return 0;
            }
            "Failed to load module descriptor class: ".concat(valueOf);
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    @KeepForSdk
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        Boolean bool;
        DynamiteModule dynamiteModule;
        IObjectWrapper iObjectWrapper;
        zzr zzrVar;
        boolean z;
        IObjectWrapper iObjectWrapper2;
        ThreadLocal<zzn> threadLocal = zzf;
        zzn zznVar = threadLocal.get();
        zzn zznVar2 = new zzn(null);
        threadLocal.set(zznVar2);
        ThreadLocal<Long> threadLocal2 = zzg;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult selectModule = versionPolicy.selectModule(context, str, zzh);
            int i = selectModule.localVersion;
            int i2 = selectModule.remoteVersion;
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
            int i3 = selectModule.selection;
            if (i3 != 0) {
                int i4 = i3;
                if (i3 == -1) {
                    if (selectModule.localVersion != 0) {
                        i4 = -1;
                    }
                }
                if (i4 != 1 || selectModule.remoteVersion != 0) {
                    if (i4 == -1) {
                        DynamiteModule zzc2 = zzc(context, str);
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor = zznVar2.zza;
                        if (cursor != null) {
                            cursor.close();
                        }
                        threadLocal.set(zznVar);
                        return zzc2;
                    } else if (i4 != 1) {
                        StringBuilder sb2 = new StringBuilder(47);
                        sb2.append("VersionPolicy returned invalid code:");
                        sb2.append(i4);
                        throw new LoadingException(sb2.toString(), null);
                    } else {
                        try {
                            int i5 = selectModule.remoteVersion;
                            try {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        bool = zzb;
                                    } finally {
                                    }
                                }
                                if (bool == null) {
                                    throw new LoadingException("Failed to determine which loading route to use.", null);
                                }
                                if (bool.booleanValue()) {
                                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 51);
                                    sb3.append("Selected remote version of ");
                                    sb3.append(str);
                                    sb3.append(", version >= ");
                                    sb3.append(i5);
                                    Log.i("DynamiteModule", sb3.toString());
                                    synchronized (DynamiteModule.class) {
                                        try {
                                            zzrVar = zzk;
                                        } finally {
                                        }
                                    }
                                    if (zzrVar == null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                    }
                                    zzn zznVar3 = threadLocal.get();
                                    if (zznVar3 == null || zznVar3.zza == null) {
                                        throw new LoadingException("No result cursor", null);
                                    }
                                    Context applicationContext = context.getApplicationContext();
                                    Cursor cursor2 = zznVar3.zza;
                                    ObjectWrapper.wrap(null);
                                    synchronized (DynamiteModule.class) {
                                        try {
                                            z = zze >= 2;
                                        } finally {
                                        }
                                    }
                                    if (Boolean.valueOf(z).booleanValue()) {
                                        iObjectWrapper2 = zzrVar.zzf(ObjectWrapper.wrap(applicationContext), str, i5, ObjectWrapper.wrap(cursor2));
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                        iObjectWrapper2 = zzrVar.zze(ObjectWrapper.wrap(applicationContext), str, i5, ObjectWrapper.wrap(cursor2));
                                    }
                                    Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapper2);
                                    if (context2 == null) {
                                        throw new LoadingException("Failed to get module context", null);
                                    }
                                    dynamiteModule = new DynamiteModule(context2);
                                } else {
                                    StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 51);
                                    sb4.append("Selected remote version of ");
                                    sb4.append(str);
                                    sb4.append(", version >= ");
                                    sb4.append(i5);
                                    Log.i("DynamiteModule", sb4.toString());
                                    zzq zzf2 = zzf(context);
                                    if (zzf2 == null) {
                                        throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                    }
                                    int zze2 = zzf2.zze();
                                    if (zze2 >= 3) {
                                        zzn zznVar4 = threadLocal.get();
                                        if (zznVar4 == null) {
                                            throw new LoadingException("No cached result cursor holder", null);
                                        }
                                        iObjectWrapper = zzf2.zzi(ObjectWrapper.wrap(context), str, i5, ObjectWrapper.wrap(zznVar4.zza));
                                    } else if (zze2 == 2) {
                                        Log.w("DynamiteModule", "IDynamite loader version = 2");
                                        iObjectWrapper = zzf2.zzj(ObjectWrapper.wrap(context), str, i5);
                                    } else {
                                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                        iObjectWrapper = zzf2.zzh(ObjectWrapper.wrap(context), str, i5);
                                    }
                                    if (ObjectWrapper.unwrap(iObjectWrapper) == null) {
                                        throw new LoadingException("Failed to load remote module.", null);
                                    }
                                    dynamiteModule = new DynamiteModule((Context) ObjectWrapper.unwrap(iObjectWrapper));
                                }
                                if (longValue == 0) {
                                    threadLocal2.remove();
                                } else {
                                    threadLocal2.set(Long.valueOf(longValue));
                                }
                                Cursor cursor3 = zznVar2.zza;
                                if (cursor3 != null) {
                                    cursor3.close();
                                }
                                threadLocal.set(zznVar);
                                return dynamiteModule;
                            } catch (RemoteException e) {
                                throw new LoadingException("Failed to load remote module.", e, null);
                            } catch (LoadingException e2) {
                                throw e2;
                            } catch (Throwable th) {
                                CrashUtils.addDynamiteErrorToDropBox(context, th);
                                throw new LoadingException("Failed to load remote module.", th, null);
                            }
                        } catch (LoadingException e3) {
                            String valueOf = String.valueOf(e3.getMessage());
                            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                            int i6 = selectModule.localVersion;
                            if (i6 == 0 || versionPolicy.selectModule(context, str, new zzo(i6, 0)).selection != -1) {
                                throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                            }
                            DynamiteModule zzc3 = zzc(context, str);
                            if (longValue == 0) {
                                zzg.remove();
                            } else {
                                zzg.set(Long.valueOf(longValue));
                            }
                            Cursor cursor4 = zznVar2.zza;
                            if (cursor4 != null) {
                                cursor4.close();
                            }
                            zzf.set(zznVar);
                            return zzc3;
                        }
                    }
                }
            }
            int i7 = selectModule.localVersion;
            int i8 = selectModule.remoteVersion;
            StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 92);
            sb5.append("No acceptable module ");
            sb5.append(str);
            sb5.append(" found. Local version is ");
            sb5.append(i7);
            sb5.append(" and remote version is ");
            sb5.append(i8);
            sb5.append(".");
            throw new LoadingException(sb5.toString(), null);
        } catch (Throwable th2) {
            if (longValue == 0) {
                zzg.remove();
            } else {
                zzg.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = zznVar2.zza;
            if (cursor5 != null) {
                cursor5.close();
            }
            zzf.set(zznVar);
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:157:0x0371 -> B:17:0x005b). Please submit an issue!!! */
    public static int zza(Context context, String str, boolean z) {
        Field declaredField;
        int i;
        Throwable th;
        Cursor cursor;
        RemoteException e;
        String str2;
        Cursor cursor2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String obj = e2.toString();
                        StringBuilder sb = new StringBuilder(obj.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(obj);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == null) {
                            if (!zzd) {
                                Boolean bool3 = Boolean.TRUE;
                                if (!bool3.equals(null)) {
                                    try {
                                        int zzb2 = zzb(context, str, z);
                                        String str3 = zzc;
                                        if (str3 != null && !str3.isEmpty()) {
                                            DelegateLastClassLoader zza2 = zzb.zza();
                                            if (zza2 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    String str4 = zzc;
                                                    Preconditions.checkNotNull(str4);
                                                    zza2 = new DelegateLastClassLoader(str4, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str5 = zzc;
                                                    Preconditions.checkNotNull(str5);
                                                    zza2 = new zzc(str5, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            zzd(zza2);
                                            declaredField.set(null, zza2);
                                            zzb = bool3;
                                            return zzb2;
                                        }
                                        return zzb2;
                                    } catch (LoadingException e3) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool2 = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                zzd(classLoader);
                            } catch (LoadingException e4) {
                            }
                            bool2 = Boolean.TRUE;
                        }
                        zzb = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return zzb(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf = String.valueOf(e5.getMessage());
                        Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                zzq zzf2 = zzf(context);
                if (zzf2 == null) {
                    i = 0;
                } else {
                    try {
                        try {
                            int zze2 = zzf2.zze();
                            if (zze2 >= 3) {
                                zzn zznVar = zzf.get();
                                if (zznVar == null || (cursor2 = zznVar.zza) == null) {
                                    cursor = (Cursor) ObjectWrapper.unwrap(zzf2.zzk(ObjectWrapper.wrap(context), str, z, zzg.get().longValue()));
                                    if (cursor != null) {
                                        try {
                                            if (cursor.moveToFirst()) {
                                                i = cursor.getInt(0);
                                                if (i > 0 && zze(cursor)) {
                                                    cursor = null;
                                                }
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                            }
                                        } catch (RemoteException e6) {
                                            e = e6;
                                            String valueOf2 = String.valueOf(e.getMessage());
                                            Cursor cursor3 = cursor;
                                            if (valueOf2.length() != 0) {
                                                Cursor cursor4 = cursor;
                                                str2 = "Failed to retrieve remote module version: ".concat(valueOf2);
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
                                } else {
                                    i = cursor2.getInt(0);
                                }
                            } else if (zze2 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = zzf2.zzg(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = zzf2.zzf(ObjectWrapper.wrap(context), str, z);
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
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01af  */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzb(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule zzc(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    @GuardedBy("DynamiteModule.class")
    private static void zzd(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = queryLocalInterface instanceof zzr ? (zzr) queryLocalInterface : new zzr(iBinder);
            }
            zzk = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static boolean zze(Cursor cursor) {
        zzn zznVar = zzf.get();
        if (zznVar == null || zznVar.zza != null) {
            return false;
        }
        zznVar.zza = cursor;
        return true;
    }

    private static zzq zzf(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            try {
                zzq zzqVar2 = zzj;
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
                        zzj = zzqVar;
                        return zzqVar;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf);
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    public Context getModuleContext() {
        return this.zzi;
    }

    @KeepForSdk
    public IBinder instantiate(String str) throws LoadingException {
        try {
            return (IBinder) this.zzi.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
