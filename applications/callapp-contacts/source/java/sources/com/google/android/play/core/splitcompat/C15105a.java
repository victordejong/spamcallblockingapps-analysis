package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.C15011ab;
import com.google.android.play.core.internal.C15034ay;
import com.google.android.play.core.internal.C15042bf;
import com.google.android.play.core.internal.C15084t;
import com.google.android.play.core.internal.C15086v;
import com.google.android.play.core.internal.C15088x;
import com.google.android.play.core.splitinstall.C15138ad;
import com.google.android.play.core.splitinstall.C15139ae;
import com.google.android.play.core.splitinstall.EnumC15135aa;
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
/* renamed from: com.google.android.play.core.splitcompat.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/a.class */
public final class C15105a {

    /* renamed from: a */
    private static final AtomicReference<C15105a> f54837a = new AtomicReference<>(null);

    /* renamed from: b */
    private final C15108d f54838b;

    /* renamed from: c */
    private final Set<String> f54839c = new HashSet();

    /* renamed from: d */
    private final C15106b f54840d;

    private C15105a(Context context) {
        try {
            C15108d c15108d = new C15108d(context);
            this.f54838b = c15108d;
            this.f54840d = new C15106b(c15108d);
        } catch (PackageManager.NameNotFoundException e) {
            throw new C15042bf(e);
        }
    }

    /* renamed from: a */
    public static boolean m9461a() {
        return f54837a.get() != null;
    }

    /* renamed from: a */
    public static boolean m9460a(Context context) {
        return m9459a(context, false);
    }

    /* renamed from: a */
    private static boolean m9459a(Context context, boolean z) {
        if (m9457b()) {
            return false;
        }
        AtomicReference<C15105a> atomicReference = f54837a;
        boolean compareAndSet = atomicReference.compareAndSet(null, new C15105a(context));
        C15105a c15105a = atomicReference.get();
        if (compareAndSet) {
            EnumC15135aa.f54917a.m9405b(new C15084t(context, C15121q.m9424a(), new C15086v(context, c15105a.f54838b, new C15088x(), null), c15105a.f54838b, new C15121q()));
            C15138ad.m9402a(new C15117m(c15105a));
            C15121q.m9424a().execute(new RunnableC15118n(context));
        }
        try {
            c15105a.m9455b(context, z);
            return true;
        } catch (Exception e) {
            Log.e("SplitCompat", "Error installing additional splits", e);
            return false;
        }
    }

    /* renamed from: b */
    private final void m9455b(Context context, boolean z) throws IOException {
        C15011ab c15011ab;
        ZipFile zipFile;
        IOException e;
        ZipFile zipFile2;
        synchronized (this) {
            if (z) {
                this.f54838b.m9448a();
            } else {
                C15121q.m9424a().execute(new RunnableC15119o(this));
            }
            String packageName = context.getPackageName();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
                List<String> arrayList = packageInfo.splitNames == null ? new ArrayList() : Arrays.asList(packageInfo.splitNames);
                Set<C15122r> m9434f = this.f54838b.m9434f();
                HashSet hashSet = new HashSet();
                Iterator<C15122r> it2 = m9434f.iterator();
                while (it2.hasNext()) {
                    String str = it2.next().f54868b;
                    if (arrayList.contains(str)) {
                        if (z) {
                            this.f54838b.m9433f(str);
                        } else {
                            hashSet.add(str);
                        }
                        it2.remove();
                    }
                }
                if (!hashSet.isEmpty()) {
                    C15121q.m9424a().execute(new RunnableC15120p(this, hashSet));
                }
                HashSet hashSet2 = new HashSet();
                for (C15122r c15122r : m9434f) {
                    String str2 = c15122r.f54868b;
                    if (!C15139ae.m9398b(str2)) {
                        hashSet2.add(str2);
                    }
                }
                for (String str3 : arrayList) {
                    if (!C15139ae.m9398b(str3)) {
                        hashSet2.add(str3);
                    }
                }
                HashSet<C15122r> hashSet3 = new HashSet(m9434f.size());
                for (C15122r c15122r2 : m9434f) {
                    if (!C15139ae.m9400a(c15122r2.f54868b)) {
                        String str4 = c15122r2.f54868b;
                        if (hashSet2.contains(C15139ae.m9400a(str4) ? "" : str4.split("\\.config\\.", 2)[0])) {
                        }
                    }
                    hashSet3.add(c15122r2);
                }
                C15116l c15116l = new C15116l(this.f54838b);
                if (Build.VERSION.SDK_INT < 21) {
                    throw new AssertionError("Unsupported Android Version");
                }
                switch (Build.VERSION.SDK_INT) {
                    case 21:
                        c15011ab = new C15011ab((byte[]) null);
                        break;
                    case 22:
                        c15011ab = new C15011ab();
                        break;
                    case 23:
                        c15011ab = new C15011ab((char[]) null);
                        break;
                    case 24:
                        c15011ab = new C15011ab((short[]) null);
                        break;
                    case 25:
                        c15011ab = new C15011ab((int[]) null);
                        break;
                    case 26:
                        c15011ab = new C15011ab((boolean[]) null);
                        break;
                    case 27:
                        if (Build.VERSION.PREVIEW_SDK_INT == 0) {
                            c15011ab = new C15011ab((float[]) null);
                            break;
                        }
                    default:
                        c15011ab = new C15011ab((byte[][]) null);
                        break;
                }
                ClassLoader classLoader = context.getClassLoader();
                if (z) {
                    c15011ab.mo9482a(classLoader, c15116l.m9429a());
                } else {
                    Iterator it3 = hashSet3.iterator();
                    while (it3.hasNext()) {
                        C15122r c15122r3 = (C15122r) it3.next();
                        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                        HashSet hashSet4 = new HashSet();
                        C15116l.m9426a(c15122r3, new C15110f(c15116l, c15122r3, hashSet4, atomicBoolean));
                        if (!atomicBoolean.get()) {
                            hashSet4 = null;
                        }
                        if (hashSet4 == null) {
                            it3.remove();
                        } else {
                            c15011ab.mo9482a(classLoader, hashSet4);
                        }
                    }
                }
                HashSet hashSet5 = new HashSet();
                for (C15122r c15122r4 : hashSet3) {
                    try {
                        zipFile2 = new ZipFile(c15122r4.f54867a);
                    } catch (IOException e2) {
                        e = e2;
                        zipFile = null;
                    }
                    try {
                        ZipEntry entry = zipFile2.getEntry("classes.dex");
                        zipFile2.close();
                        if (entry != null) {
                            C15108d c15108d = this.f54838b;
                            String str5 = c15122r4.f54868b;
                            File file = new File(c15108d.m9438d(), "dex");
                            C15108d.m9443b(file);
                            File m9446a = C15108d.m9446a(file, str5);
                            C15108d.m9443b(m9446a);
                            if (!c15011ab.mo9483a(classLoader, m9446a, c15122r4.f54867a, z)) {
                                String valueOf = String.valueOf(c15122r4.f54867a);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                                sb.append("split was not installed ");
                                sb.append(valueOf);
                                Log.w("SplitCompat", sb.toString());
                            }
                        }
                        hashSet5.add(c15122r4.f54867a);
                    } catch (IOException e3) {
                        e = e3;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e4) {
                                C15034ay.m9577a(e, e4);
                            }
                        }
                        throw e;
                    }
                }
                this.f54840d.m9449b(context, hashSet5);
                HashSet hashSet6 = new HashSet();
                for (C15122r c15122r5 : hashSet3) {
                    if (hashSet5.contains(c15122r5.f54867a)) {
                        String str6 = c15122r5.f54868b;
                        StringBuilder sb2 = new StringBuilder(str6.length() + 30);
                        sb2.append("Split '");
                        sb2.append(str6);
                        sb2.append("' installation emulated");
                        hashSet6.add(c15122r5.f54868b);
                    } else {
                        String str7 = c15122r5.f54868b;
                        StringBuilder sb3 = new StringBuilder(str7.length() + 35);
                        sb3.append("Split '");
                        sb3.append(str7);
                        sb3.append("' installation not emulated.");
                    }
                }
                synchronized (this.f54839c) {
                    this.f54839c.addAll(hashSet6);
                }
            } catch (PackageManager.NameNotFoundException e5) {
                throw new IOException(String.format("Cannot load data for application '%s'", packageName), e5);
            }
        }
    }

    /* renamed from: b */
    private static boolean m9457b() {
        return Build.VERSION.SDK_INT < 21;
    }

    /* renamed from: b */
    public static boolean m9456b(Context context) {
        if (m9457b()) {
            return false;
        }
        C15105a c15105a = f54837a.get();
        if (c15105a != null) {
            return c15105a.f54840d.m9451a(context, c15105a.m9453c());
        }
        if (context.getApplicationContext() != null) {
            m9459a(context.getApplicationContext(), false);
        }
        return m9459a(context, false);
    }

    /* renamed from: c */
    public final Set<String> m9453c() {
        HashSet hashSet;
        synchronized (this.f54839c) {
            hashSet = new HashSet(this.f54839c);
        }
        return hashSet;
    }

    /* renamed from: c */
    public static boolean m9452c(Context context) {
        return m9459a(context, true);
    }
}
