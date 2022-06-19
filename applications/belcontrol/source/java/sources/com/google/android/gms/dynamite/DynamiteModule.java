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
    private static int zzd = -1;
    @GuardedBy("DynamiteModule.class")
    private static zzo zzi;
    @GuardedBy("DynamiteModule.class")
    private static zzp zzj;
    private final Context zzh;
    private static final ThreadLocal<zzk> zze = new ThreadLocal<>();
    private static final ThreadLocal<Long> zzf = new zzb();
    private static final zzm zzg = new zzc();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzd();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zze();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzf();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzg();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzh();
    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzi();
    @RecentlyNonNull
    public static final VersionPolicy zza = new zzj();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @RecentlyNullable
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str, zzb zzbVar) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, zzb zzbVar) {
            super(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {
        zzn zza(Context context, String str, zzm zzmVar);
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzh = context;
    }

    @KeepForSdk
    public static int getLocalVersion(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
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
    public static int getRemoteVersion(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return zza(context, str, false);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static DynamiteModule load(@RecentlyNonNull Context context, @RecentlyNonNull VersionPolicy versionPolicy, @RecentlyNonNull String str) {
        Boolean bool;
        DynamiteModule dynamiteModule;
        IObjectWrapper iObjectWrapper;
        zzp zzpVar;
        boolean z;
        IObjectWrapper iObjectWrapper2;
        ThreadLocal<zzk> threadLocal = zze;
        zzk zzkVar = threadLocal.get();
        zzk zzkVar2 = new zzk(null);
        threadLocal.set(zzkVar2);
        ThreadLocal<Long> threadLocal2 = zzf;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            zzn zza2 = versionPolicy.zza(context, str, zzg);
            int i = zza2.zza;
            int i2 = zza2.zzb;
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
            int i3 = zza2.zzc;
            if (i3 == 0 || ((i3 == -1 && zza2.zza == 0) || (i3 == 1 && zza2.zzb == 0))) {
                int i4 = zza2.zza;
                int i5 = zza2.zzb;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i4);
                sb2.append(" and remote version is ");
                sb2.append(i5);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), null);
            } else if (i3 == -1) {
                DynamiteModule zzd2 = zzd(context, str);
                if (longValue == 0) {
                    threadLocal2.remove();
                } else {
                    threadLocal2.set(Long.valueOf(longValue));
                }
                Cursor cursor = zzkVar2.zza;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(zzkVar);
                return zzd2;
            } else if (i3 != 1) {
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(0);
                throw new LoadingException(sb3.toString(), null);
            } else {
                try {
                    int i6 = zza2.zzb;
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
                            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 51);
                            sb4.append("Selected remote version of ");
                            sb4.append(str);
                            sb4.append(", version >= ");
                            sb4.append(i6);
                            Log.i("DynamiteModule", sb4.toString());
                            synchronized (DynamiteModule.class) {
                                try {
                                    zzpVar = zzj;
                                } finally {
                                }
                            }
                            if (zzpVar == null) {
                                throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                            }
                            zzk zzkVar3 = threadLocal.get();
                            if (zzkVar3 == null || zzkVar3.zza == null) {
                                throw new LoadingException("No result cursor", null);
                            }
                            Context applicationContext = context.getApplicationContext();
                            Cursor cursor2 = zzkVar3.zza;
                            ObjectWrapper.wrap((Object) null);
                            synchronized (DynamiteModule.class) {
                                try {
                                    z = zzd >= 2;
                                } finally {
                                }
                            }
                            if (Boolean.valueOf(z).booleanValue()) {
                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                iObjectWrapper2 = zzpVar.zzf(ObjectWrapper.wrap(applicationContext), str, i6, ObjectWrapper.wrap(cursor2));
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                iObjectWrapper2 = zzpVar.zze(ObjectWrapper.wrap(applicationContext), str, i6, ObjectWrapper.wrap(cursor2));
                            }
                            Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapper2);
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
                            zzo zzf2 = zzf(context);
                            if (zzf2 == null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                            }
                            int zzi2 = zzf2.zzi();
                            if (zzi2 >= 3) {
                                zzk zzkVar4 = threadLocal.get();
                                if (zzkVar4 == null) {
                                    throw new LoadingException("No cached result cursor holder", null);
                                }
                                iObjectWrapper = zzf2.zzk(ObjectWrapper.wrap(context), str, i6, ObjectWrapper.wrap(zzkVar4.zza));
                            } else if (zzi2 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                iObjectWrapper = zzf2.zzg(ObjectWrapper.wrap(context), str, i6);
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                iObjectWrapper = zzf2.zze(ObjectWrapper.wrap(context), str, i6);
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
                        Cursor cursor3 = zzkVar2.zza;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        threadLocal.set(zzkVar);
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
                    int i7 = zza2.zza;
                    if (i7 == 0 || versionPolicy.zza(context, str, new zzl(i7, 0)).zzc != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e3, null);
                    }
                    DynamiteModule zzd3 = zzd(context, str);
                    ThreadLocal<Long> threadLocal3 = zzf;
                    if (longValue == 0) {
                        threadLocal3.remove();
                    } else {
                        threadLocal3.set(Long.valueOf(longValue));
                    }
                    Cursor cursor4 = zzkVar2.zza;
                    if (cursor4 != null) {
                        cursor4.close();
                    }
                    zze.set(zzkVar);
                    return zzd3;
                }
            }
        } catch (Throwable th2) {
            ThreadLocal<Long> threadLocal4 = zzf;
            if (longValue == 0) {
                threadLocal4.remove();
            } else {
                threadLocal4.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = zzkVar2.zza;
            if (cursor5 != null) {
                cursor5.close();
            }
            zze.set(zzkVar);
            throw th2;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:146:0x031e -> B:18:0x005b). Please submit an issue!!! */
    public static int zza(@RecentlyNonNull Context context, @RecentlyNonNull String str, boolean z) {
        Field declaredField;
        ClassLoader classLoader;
        int i;
        Throwable th;
        RemoteException e;
        Cursor cursor;
        String str2;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
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
                                    zze(classLoader2);
                                } catch (LoadingException e3) {
                                }
                                bool2 = Boolean.TRUE;
                                zzb = bool2;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        } else {
                            try {
                                int zzb2 = zzb(context, str, z);
                                String str3 = zzc;
                                if (str3 != null && !str3.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str4 = zzc;
                                        Preconditions.checkNotNull(str4);
                                        classLoader = new DelegateLastClassLoader(str4, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str5 = zzc;
                                        Preconditions.checkNotNull(str5);
                                        classLoader = new zza(str5, ClassLoader.getSystemClassLoader());
                                    }
                                    zze(classLoader);
                                    declaredField.set(null, classLoader);
                                    zzb = Boolean.TRUE;
                                    return zzb2;
                                }
                                return zzb2;
                            } catch (LoadingException e4) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                            }
                        }
                        bool2 = Boolean.FALSE;
                        zzb = bool2;
                    }
                }
                if (bool2.booleanValue()) {
                    try {
                        return zzb(context, str, z);
                    } catch (LoadingException e5) {
                        String valueOf2 = String.valueOf(e5.getMessage());
                        Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                        return 0;
                    }
                }
                zzo zzf2 = zzf(context);
                if (zzf2 == null) {
                    i = 0;
                } else {
                    Cursor cursor2 = null;
                    try {
                        try {
                            int zzi2 = zzf2.zzi();
                            if (zzi2 >= 3) {
                                cursor = (Cursor) ObjectWrapper.unwrap(zzf2.zzj(ObjectWrapper.wrap(context), str, z, zzf.get().longValue()));
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            i = cursor.getInt(0);
                                            if (i > 0 && zzc(cursor)) {
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
                            } else if (zzi2 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = zzf2.zzh(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = zzf2.zzf(ObjectWrapper.wrap(context), str, z);
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
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012a  */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzb(android.content.Context, java.lang.String, boolean):int");
    }

    private static boolean zzc(Cursor cursor) {
        zzk zzkVar = zze.get();
        if (zzkVar == null || zzkVar.zza != null) {
            return false;
        }
        zzkVar.zza = cursor;
        return true;
    }

    private static DynamiteModule zzd(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    @GuardedBy("DynamiteModule.class")
    private static void zze(ClassLoader classLoader) {
        zzp zzpVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzpVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzpVar = queryLocalInterface instanceof zzp ? (zzp) queryLocalInterface : new zzp(iBinder);
            }
            zzj = zzpVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static zzo zzf(Context context) {
        zzo zzoVar;
        synchronized (DynamiteModule.class) {
            try {
                zzo zzoVar2 = zzi;
                if (zzoVar2 != null) {
                    return zzoVar2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        zzoVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        zzoVar = queryLocalInterface instanceof zzo ? (zzo) queryLocalInterface : new zzo(iBinder);
                    }
                    if (zzoVar != null) {
                        zzi = zzoVar;
                        return zzoVar;
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
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzh;
    }

    @RecentlyNonNull
    @KeepForSdk
    public IBinder instantiate(@RecentlyNonNull String str) {
        try {
            return (IBinder) this.zzh.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
