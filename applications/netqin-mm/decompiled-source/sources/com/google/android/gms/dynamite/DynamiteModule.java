package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import p131c.p161d.p170b.p224d.p251f.C3328a;
import p131c.p161d.p170b.p224d.p251f.C3329b;
import p131c.p161d.p170b.p224d.p251f.C3330c;
import p131c.p161d.p170b.p224d.p251f.C3331d;
import p131c.p161d.p170b.p224d.p251f.C3332e;
import p131c.p161d.p170b.p224d.p251f.C3333f;
import p131c.p161d.p170b.p224d.p251f.C3334g;
import p131c.p161d.p170b.p224d.p251f.C3335h;
import p131c.p161d.p170b.p224d.p251f.C3336i;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: b */
    public static Boolean f23592b;

    /* renamed from: c */
    public static zzk f23593c;

    /* renamed from: d */
    public static zzm f23594d;

    /* renamed from: e */
    public static String f23595e;

    /* renamed from: f */
    public static int f23596f = -1;

    /* renamed from: g */
    public static final ThreadLocal<C7240a> f23597g = new ThreadLocal<>();

    /* renamed from: h */
    public static final VersionPolicy.zzb f23598h = new C3329b();
    @KeepForSdk

    /* renamed from: i */
    public static final VersionPolicy f23599i = new C3328a();
    @KeepForSdk

    /* renamed from: j */
    public static final VersionPolicy f23600j = new C3331d();
    @KeepForSdk

    /* renamed from: k */
    public static final VersionPolicy f23601k = new C3332e();
    @KeepForSdk

    /* renamed from: l */
    public static final VersionPolicy f23602l = new C3335h();

    /* renamed from: a */
    public final Context f23603a;

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        public LoadingException(String str) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, C3329b bVar) {
            this(str);
        }

        public LoadingException(String str, Throwable th) {
            super(str, th);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, C3329b bVar) {
            this(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza.class */
        public static final class zza {

            /* renamed from: a */
            public int f23604a = 0;

            /* renamed from: b */
            public int f23605b = 0;

            /* renamed from: c */
            public int f23606c = 0;
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb.class */
        public interface zzb {
            /* renamed from: a */
            int mo16980a(Context context, String str);

            /* renamed from: a */
            int mo16979a(Context context, String str, boolean z) throws LoadingException;
        }

        /* renamed from: a */
        zza mo16981a(Context context, String str, zzb zzbVar) throws LoadingException;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public static final class C7240a {

        /* renamed from: a */
        public Cursor f23607a;

        public C7240a() {
        }

        public /* synthetic */ C7240a(C3329b bVar) {
            this();
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b.class */
    public static final class C7241b implements VersionPolicy.zzb {

        /* renamed from: a */
        public final int f23608a;

        public C7241b(int i, int i2) {
            this.f23608a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zzb
        /* renamed from: a */
        public final int mo16980a(Context context, String str) {
            return this.f23608a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zzb
        /* renamed from: a */
        public final int mo16979a(Context context, String str, boolean z) {
            return 0;
        }
    }

    static {
        new C3330c();
        new C3333f();
        new C3334g();
    }

    public DynamiteModule(Context context) {
        Preconditions.m17288a(context);
        this.f23603a = context;
    }

    @KeepForSdk
    /* renamed from: a */
    public static int m16992a(Context context, String str) {
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

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01ae -> B:17:0x0051). Please submit an issue!!! */
    /* renamed from: a */
    public static int m16990a(Context context, String str, boolean z) {
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f23592b;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m16989a(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int c = m16982c(context, str, z);
                                if (f23595e != null && !f23595e.isEmpty()) {
                                    ClassLoader delegateLastClassLoader = Build.VERSION.SDK_INT >= 29 ? new DelegateLastClassLoader(f23595e, ClassLoader.getSystemClassLoader()) : new C3336i(f23595e, ClassLoader.getSystemClassLoader());
                                    m16989a(delegateLastClassLoader);
                                    declaredField.set(null, delegateLastClassLoader);
                                    f23592b = Boolean.TRUE;
                                    return c;
                                }
                                return c;
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f23592b = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return m16984b(context, str, z);
                }
                try {
                    return m16982c(context, str, z);
                } catch (LoadingException e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
        } catch (Throwable th) {
            CrashUtils.m17094a(context, th);
            throw th;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static DynamiteModule m16993a(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        C7240a aVar = f23597g.get();
        C7240a aVar2 = new C7240a(null);
        f23597g.set(aVar2);
        try {
            VersionPolicy.zza a = versionPolicy.mo16981a(context, str, f23598h);
            int i = a.f23604a;
            int i2 = a.f23605b;
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
            if (a.f23606c == 0 || ((a.f23606c == -1 && a.f23604a == 0) || (a.f23606c == 1 && a.f23605b == 0))) {
                int i3 = a.f23604a;
                int i4 = a.f23605b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i3);
                sb2.append(" and remote version is ");
                sb2.append(i4);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), (C3329b) null);
            } else if (a.f23606c == -1) {
                DynamiteModule c = m16983c(context, str);
                Cursor cursor = aVar2.f23607a;
                if (cursor != null) {
                    cursor.close();
                }
                f23597g.set(aVar);
                return c;
            } else if (a.f23606c == 1) {
                try {
                    DynamiteModule a2 = m16991a(context, str, a.f23605b);
                    Cursor cursor2 = aVar2.f23607a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    f23597g.set(aVar);
                    return a2;
                } catch (LoadingException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    if (a.f23604a == 0 || versionPolicy.mo16981a(context, str, new C7241b(a.f23604a, 0)).f23606c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                    }
                    DynamiteModule c2 = m16983c(context, str);
                    Cursor cursor3 = aVar2.f23607a;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    f23597g.set(aVar);
                    return c2;
                }
            } else {
                int i5 = a.f23606c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i5);
                throw new LoadingException(sb3.toString(), (C3329b) null);
            }
        } catch (Throwable th) {
            Cursor cursor4 = aVar2.f23607a;
            if (cursor4 != null) {
                cursor4.close();
            }
            f23597g.set(aVar);
            throw th;
        }
    }

    /* renamed from: a */
    public static DynamiteModule m16991a(Context context, String str, int i) throws LoadingException {
        Boolean bool;
        IObjectWrapper iObjectWrapper;
        try {
            synchronized (DynamiteModule.class) {
                bool = f23592b;
            }
            if (bool == null) {
                throw new LoadingException("Failed to determine which loading route to use.", (C3329b) null);
            } else if (bool.booleanValue()) {
                return m16985b(context, str, i);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i);
                Log.i("DynamiteModule", sb.toString());
                zzk a = m16994a(context);
                if (a != null) {
                    if (a.zzb() >= 2) {
                        iObjectWrapper = a.mo16976b(ObjectWrapper.m17020a(context), str, i);
                    } else {
                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                        iObjectWrapper = a.mo16978a(ObjectWrapper.m17020a(context), str, i);
                    }
                    if (ObjectWrapper.m17021Q(iObjectWrapper) != null) {
                        return new DynamiteModule((Context) ObjectWrapper.m17021Q(iObjectWrapper));
                    }
                    throw new LoadingException("Failed to load remote module.", (C3329b) null);
                }
                throw new LoadingException("Failed to create IDynamiteLoader.", (C3329b) null);
            }
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, null);
        } catch (LoadingException e2) {
            throw e2;
        } catch (Throwable th) {
            CrashUtils.m17094a(context, th);
            throw new LoadingException("Failed to load remote module.", th, null);
        }
    }

    /* renamed from: a */
    public static zzk m16994a(Context context) {
        zzk zzkVar;
        synchronized (DynamiteModule.class) {
            try {
                if (f23593c != null) {
                    return f23593c;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        zzkVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        zzkVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzj(iBinder);
                    }
                    if (zzkVar != null) {
                        f23593c = zzkVar;
                        return zzkVar;
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
    public static void m16989a(ClassLoader classLoader) throws LoadingException {
        zzm zzmVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzmVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzmVar = queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzl(iBinder);
            }
            f23594d = zzmVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public static int m16986b(Context context, String str) {
        return m16990a(context, str, false);
    }

    /* renamed from: b */
    public static int m16984b(Context context, String str, boolean z) {
        zzk a = m16994a(context);
        if (a == null) {
            return 0;
        }
        try {
            if (a.zzb() >= 2) {
                return a.mo16977a(ObjectWrapper.m17020a(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return a.mo16975b(ObjectWrapper.m17020a(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    /* renamed from: b */
    public static DynamiteModule m16985b(Context context, String str, int i) throws LoadingException, RemoteException {
        zzm zzmVar;
        IObjectWrapper iObjectWrapper;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            try {
                zzmVar = f23594d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zzmVar != null) {
            C7240a aVar = f23597g.get();
            if (aVar == null || aVar.f23607a == null) {
                throw new LoadingException("No result cursor", (C3329b) null);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = aVar.f23607a;
            ObjectWrapper.m17020a((Object) null);
            if (m16987b().booleanValue()) {
                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                iObjectWrapper = zzmVar.mo16973b(ObjectWrapper.m17020a(applicationContext), str, i, ObjectWrapper.m17020a(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                iObjectWrapper = zzmVar.mo16974a(ObjectWrapper.m17020a(applicationContext), str, i, ObjectWrapper.m17020a(cursor));
            }
            Context context2 = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
            if (context2 != null) {
                return new DynamiteModule(context2);
            }
            throw new LoadingException("Failed to get module context", (C3329b) null);
        }
        throw new LoadingException("DynamiteLoaderV2 was not cached.", (C3329b) null);
    }

    /* renamed from: b */
    public static Boolean m16987b() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f23596f >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x012b  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m16982c(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m16982c(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: c */
    public static DynamiteModule m16983c(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    @KeepForSdk
    /* renamed from: a */
    public final Context m16995a() {
        return this.f23603a;
    }

    @KeepForSdk
    /* renamed from: a */
    public final IBinder m16988a(String str) throws LoadingException {
        try {
            return (IBinder) this.f23603a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
