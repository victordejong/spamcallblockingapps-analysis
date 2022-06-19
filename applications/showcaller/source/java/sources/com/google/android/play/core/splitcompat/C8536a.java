package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.AbstractC8514s;
import com.google.android.play.core.internal.C8473bf;
import com.google.android.play.core.internal.C8505n0;
import com.google.android.play.core.internal.C8508p;
import com.google.android.play.core.internal.C8512r;
import com.google.android.play.core.internal.C8516t;
import com.google.android.play.core.splitinstall.C8563j;
import com.google.android.play.core.splitinstall.C8564k;
import com.google.android.play.core.splitinstall.EnumC8565l;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/a.class */
public class C8536a {

    /* renamed from: a */
    private static final AtomicReference<C8536a> f38105a = new AtomicReference<>(null);

    /* renamed from: b */
    private final C8539d f38106b;

    /* renamed from: c */
    private final Set<String> f38107c = new HashSet();

    /* renamed from: d */
    private final C8537b f38108d;

    private C8536a(Context context) {
        try {
            C8539d c8539d = new C8539d(context);
            this.f38106b = c8539d;
            this.f38108d = new C8537b(c8539d);
        } catch (PackageManager.NameNotFoundException e) {
            throw new C8473bf(e);
        }
    }

    /* renamed from: a */
    public static boolean m3397a(Context context) {
        return m3393e(context, true);
    }

    /* renamed from: b */
    public static boolean m3396b() {
        return f38105a.get() != null;
    }

    /* renamed from: d */
    private static boolean m3394d() {
        return Build.VERSION.SDK_INT < 21;
    }

    /* renamed from: e */
    private static boolean m3393e(Context context, boolean z) {
        if (m3394d()) {
            return false;
        }
        AtomicReference<C8536a> atomicReference = f38105a;
        boolean compareAndSet = atomicReference.compareAndSet(null, new C8536a(context));
        C8536a c8536a = atomicReference.get();
        if (compareAndSet) {
            EnumC8565l.f38153d.m3336b(new C8508p(context, C8552q.m3357a(), new C8512r(context, c8536a.f38106b, new C8516t(), null), c8536a.f38106b, new C8552q()));
            C8563j.m3340a(new C8548m(c8536a));
            C8552q.m3357a().execute(new RunnableC8549n(context));
        }
        try {
            c8536a.m3392f(context, z);
            return true;
        } catch (Exception e) {
            Log.e("SplitCompat", "Error installing additional splits", e);
            return false;
        }
    }

    /* renamed from: f */
    private final void m3392f(Context context, boolean z) {
        ZipFile zipFile;
        IOException e;
        synchronized (this) {
            if (z) {
                this.f38106b.m3388a();
            } else {
                C8552q.m3357a().execute(new RunnableC8550o(this));
            }
            String packageName = context.getPackageName();
            try {
                String[] strArr = context.getPackageManager().getPackageInfo(packageName, 0).splitNames;
                List<String> arrayList = strArr == null ? new ArrayList() : Arrays.asList(strArr);
                Set<C8553r> m3380i = this.f38106b.m3380i();
                HashSet hashSet = new HashSet();
                Iterator<C8553r> it = m3380i.iterator();
                while (it.hasNext()) {
                    String m3353b = it.next().m3353b();
                    if (arrayList.contains(m3353b)) {
                        if (z) {
                            this.f38106b.m3375n(m3353b);
                        } else {
                            hashSet.add(m3353b);
                        }
                        it.remove();
                    }
                }
                if (!hashSet.isEmpty()) {
                    C8552q.m3357a().execute(new RunnableC8551p(this, hashSet));
                }
                HashSet hashSet2 = new HashSet();
                for (C8553r c8553r : m3380i) {
                    String m3353b2 = c8553r.m3353b();
                    if (!C8564k.m3338b(m3353b2)) {
                        hashSet2.add(m3353b2);
                    }
                }
                for (String str : arrayList) {
                    if (!C8564k.m3338b(str)) {
                        hashSet2.add(str);
                    }
                }
                HashSet<C8553r> hashSet3 = new HashSet(m3380i.size());
                for (C8553r c8553r2 : m3380i) {
                    if (!C8564k.m3339a(c8553r2.m3353b())) {
                        String m3353b3 = c8553r2.m3353b();
                        if (hashSet2.contains(C8564k.m3339a(m3353b3) ? "" : m3353b3.split("\\.config\\.", 2)[0])) {
                        }
                    }
                    hashSet3.add(c8553r2);
                }
                C8547l c8547l = new C8547l(this.f38106b);
                AbstractC8514s m3470a = C8516t.m3470a();
                ClassLoader classLoader = context.getClassLoader();
                if (z) {
                    m3470a.mo3434b(classLoader, c8547l.m3363a());
                } else {
                    Iterator it2 = hashSet3.iterator();
                    while (it2.hasNext()) {
                        Set<File> m3362b = c8547l.m3362b((C8553r) it2.next());
                        if (m3362b == null) {
                            it2.remove();
                        } else {
                            m3470a.mo3434b(classLoader, m3362b);
                        }
                    }
                }
                HashSet hashSet4 = new HashSet();
                for (C8553r c8553r3 : hashSet3) {
                    try {
                        zipFile = new ZipFile(c8553r3.m3354a());
                    } catch (IOException e2) {
                        e = e2;
                        zipFile = null;
                    }
                    try {
                        ZipEntry entry = zipFile.getEntry("classes.dex");
                        zipFile.close();
                        if (entry != null && !m3470a.mo3435a(classLoader, this.f38106b.m3381h(c8553r3.m3353b()), c8553r3.m3354a(), z)) {
                            String valueOf = String.valueOf(c8553r3.m3354a());
                            StringBuilder sb = new StringBuilder(valueOf.length() + 24);
                            sb.append("split was not installed ");
                            sb.append(valueOf);
                            Log.w("SplitCompat", sb.toString());
                        }
                        hashSet4.add(c8553r3.m3354a());
                    } catch (IOException e3) {
                        e = e3;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e4) {
                                C8505n0.m3487a(e, e4);
                            }
                        }
                        throw e;
                    }
                }
                this.f38108d.m3390a(context, hashSet4);
                HashSet hashSet5 = new HashSet();
                for (C8553r c8553r4 : hashSet3) {
                    if (hashSet4.contains(c8553r4.m3354a())) {
                        String m3353b4 = c8553r4.m3353b();
                        StringBuilder sb2 = new StringBuilder(m3353b4.length() + 30);
                        sb2.append("Split '");
                        sb2.append(m3353b4);
                        sb2.append("' installation emulated");
                        Log.d("SplitCompat", sb2.toString());
                        hashSet5.add(c8553r4.m3353b());
                    } else {
                        String m3353b5 = c8553r4.m3353b();
                        StringBuilder sb3 = new StringBuilder(m3353b5.length() + 35);
                        sb3.append("Split '");
                        sb3.append(m3353b5);
                        sb3.append("' installation not emulated.");
                        Log.d("SplitCompat", sb3.toString());
                    }
                }
                synchronized (this.f38107c) {
                    this.f38107c.addAll(hashSet5);
                }
            } catch (PackageManager.NameNotFoundException e5) {
                throw new IOException(String.format("Cannot load data for application '%s'", packageName), e5);
            }
        }
    }

    /* renamed from: g */
    public static boolean m3391g(Context context) {
        return m3393e(context, false);
    }
}
