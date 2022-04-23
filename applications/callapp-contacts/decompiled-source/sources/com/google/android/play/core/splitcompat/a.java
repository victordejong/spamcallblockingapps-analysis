package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.ab;
import com.google.android.play.core.internal.ay;
import com.google.android.play.core.internal.bf;
import com.google.android.play.core.internal.t;
import com.google.android.play.core.internal.v;
import com.google.android.play.core.internal.x;
import com.google.android.play.core.splitinstall.aa;
import com.google.android.play.core.splitinstall.ad;
import com.google.android.play.core.splitinstall.ae;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<a> f31422a = new AtomicReference<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final d f31423b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f31424c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final b f31425d;

    private a(Context context) {
        try {
            d dVar = new d(context);
            this.f31423b = dVar;
            this.f31425d = new b(dVar);
        } catch (PackageManager.NameNotFoundException e) {
            throw new bf(e);
        }
    }

    public static boolean a() {
        return f31422a.get() != null;
    }

    public static boolean a(Context context) {
        return a(context, false);
    }

    private static boolean a(Context context, boolean z) {
        if (b()) {
            return false;
        }
        AtomicReference<a> atomicReference = f31422a;
        boolean compareAndSet = atomicReference.compareAndSet(null, new a(context));
        a aVar = atomicReference.get();
        if (compareAndSet) {
            aa.f31483a.b(new t(context, q.a(), new v(context, aVar.f31423b, new x(), null), aVar.f31423b, new q()));
            ad.a(new m(aVar));
            q.a().execute(new n(context));
        }
        try {
            aVar.b(context, z);
            return true;
        } catch (Exception e) {
            Log.e("SplitCompat", "Error installing additional splits", e);
            return false;
        }
    }

    private final void b(Context context, boolean z) throws IOException {
        ab abVar;
        IOException e;
        ZipFile zipFile;
        synchronized (this) {
            if (z) {
                this.f31423b.a();
            } else {
                q.a().execute(new o(this));
            }
            String packageName = context.getPackageName();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
                List<String> arrayList = packageInfo.splitNames == null ? new ArrayList() : Arrays.asList(packageInfo.splitNames);
                Set<r> f = this.f31423b.f();
                HashSet hashSet = new HashSet();
                Iterator<r> it2 = f.iterator();
                while (it2.hasNext()) {
                    String str = it2.next().f31453b;
                    if (arrayList.contains(str)) {
                        if (z) {
                            this.f31423b.f(str);
                        } else {
                            hashSet.add(str);
                        }
                        it2.remove();
                    }
                }
                if (!hashSet.isEmpty()) {
                    q.a().execute(new p(this, hashSet));
                }
                HashSet hashSet2 = new HashSet();
                for (r rVar : f) {
                    String str2 = rVar.f31453b;
                    if (!ae.b(str2)) {
                        hashSet2.add(str2);
                    }
                }
                for (String str3 : arrayList) {
                    if (!ae.b(str3)) {
                        hashSet2.add(str3);
                    }
                }
                HashSet<r> hashSet3 = new HashSet(f.size());
                for (r rVar2 : f) {
                    if (!ae.a(rVar2.f31453b)) {
                        String str4 = rVar2.f31453b;
                        if (hashSet2.contains(ae.a(str4) ? "" : str4.split("\\.config\\.", 2)[0])) {
                        }
                    }
                    hashSet3.add(rVar2);
                }
                l lVar = new l(this.f31423b);
                if (Build.VERSION.SDK_INT >= 21) {
                    ZipFile zipFile2 = null;
                    switch (Build.VERSION.SDK_INT) {
                        case 21:
                            abVar = new ab((byte[]) null);
                            break;
                        case 22:
                            abVar = new ab();
                            break;
                        case 23:
                            abVar = new ab((char[]) null);
                            break;
                        case 24:
                            abVar = new ab((short[]) null);
                            break;
                        case 25:
                            abVar = new ab((int[]) null);
                            break;
                        case 26:
                            abVar = new ab((boolean[]) null);
                            break;
                        case 27:
                            if (Build.VERSION.PREVIEW_SDK_INT == 0) {
                                abVar = new ab((float[]) null);
                                break;
                            }
                        default:
                            abVar = new ab((byte[][]) null);
                            break;
                    }
                    ClassLoader classLoader = context.getClassLoader();
                    if (z) {
                        abVar.a(classLoader, lVar.a());
                    } else {
                        Iterator it3 = hashSet3.iterator();
                        while (it3.hasNext()) {
                            r rVar3 = (r) it3.next();
                            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                            HashSet hashSet4 = new HashSet();
                            l.a(rVar3, new f(lVar, rVar3, hashSet4, atomicBoolean));
                            if (!atomicBoolean.get()) {
                                hashSet4 = null;
                            }
                            if (hashSet4 == null) {
                                it3.remove();
                            } else {
                                abVar.a(classLoader, hashSet4);
                            }
                        }
                    }
                    HashSet hashSet5 = new HashSet();
                    for (r rVar4 : hashSet3) {
                        try {
                            zipFile = new ZipFile(rVar4.f31452a);
                        } catch (IOException e2) {
                            e = e2;
                        }
                        try {
                            ZipEntry entry = zipFile.getEntry("classes.dex");
                            zipFile.close();
                            if (entry != null) {
                                d dVar = this.f31423b;
                                String str5 = rVar4.f31453b;
                                File file = new File(dVar.d(), "dex");
                                d.b(file);
                                File a2 = d.a(file, str5);
                                d.b(a2);
                                if (!abVar.a(classLoader, a2, rVar4.f31452a, z)) {
                                    String valueOf = String.valueOf(rVar4.f31452a);
                                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                                    sb.append("split was not installed ");
                                    sb.append(valueOf);
                                    Log.w("SplitCompat", sb.toString());
                                }
                            }
                            hashSet5.add(rVar4.f31452a);
                        } catch (IOException e3) {
                            e = e3;
                            zipFile2 = zipFile;
                            if (zipFile2 != null) {
                                try {
                                    zipFile2.close();
                                } catch (IOException e4) {
                                    ay.a(e, e4);
                                }
                            }
                            throw e;
                        }
                    }
                    this.f31425d.b(context, hashSet5);
                    HashSet hashSet6 = new HashSet();
                    for (r rVar5 : hashSet3) {
                        if (hashSet5.contains(rVar5.f31452a)) {
                            String str6 = rVar5.f31453b;
                            StringBuilder sb2 = new StringBuilder(str6.length() + 30);
                            sb2.append("Split '");
                            sb2.append(str6);
                            sb2.append("' installation emulated");
                            hashSet6.add(rVar5.f31453b);
                        } else {
                            String str7 = rVar5.f31453b;
                            StringBuilder sb3 = new StringBuilder(str7.length() + 35);
                            sb3.append("Split '");
                            sb3.append(str7);
                            sb3.append("' installation not emulated.");
                        }
                    }
                    synchronized (this.f31424c) {
                        this.f31424c.addAll(hashSet6);
                    }
                } else {
                    throw new AssertionError("Unsupported Android Version");
                }
            } catch (PackageManager.NameNotFoundException e5) {
                throw new IOException(String.format("Cannot load data for application '%s'", packageName), e5);
            }
        }
    }

    private static boolean b() {
        return Build.VERSION.SDK_INT < 21;
    }

    public static boolean b(Context context) {
        if (b()) {
            return false;
        }
        a aVar = f31422a.get();
        if (aVar != null) {
            return aVar.f31425d.a(context, aVar.c());
        }
        if (context.getApplicationContext() != null) {
            a(context.getApplicationContext(), false);
        }
        return a(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<String> c() {
        HashSet hashSet;
        synchronized (this.f31424c) {
            hashSet = new HashSet(this.f31424c);
        }
        return hashSet;
    }

    public static boolean c(Context context) {
        return a(context, true);
    }
}
