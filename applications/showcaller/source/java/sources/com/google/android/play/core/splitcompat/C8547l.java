package com.google.android.play.core.splitcompat;

import android.os.Build;
import android.util.Log;
import com.google.android.play.core.internal.C8505n0;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/l.class */
public final class C8547l {

    /* renamed from: a */
    private static final Pattern f38126a = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    /* renamed from: b */
    public static final /* synthetic */ int f38127b = 0;

    /* renamed from: c */
    private final C8539d f38128c;

    public C8547l(C8539d c8539d) {
        this.f38128c = c8539d;
    }

    /* renamed from: d */
    public static /* synthetic */ Set m3360d(C8547l c8547l, Set set, C8553r c8553r, ZipFile zipFile) {
        HashSet hashSet = new HashSet();
        c8547l.m3358f(c8553r, set, new C8543h(hashSet, c8553r, zipFile));
        return hashSet;
    }

    /* renamed from: e */
    private static void m3359e(C8553r c8553r, AbstractC8544i abstractC8544i) {
        ZipFile zipFile;
        IOException e;
        ZipFile zipFile2;
        String[] strArr;
        String format;
        try {
            zipFile2 = new ZipFile(c8553r.m3354a());
        } catch (IOException e2) {
            e = e2;
            zipFile = null;
        }
        try {
            String m3353b = c8553r.m3353b();
            HashMap hashMap = new HashMap();
            Enumeration<? extends ZipEntry> entries = zipFile2.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                Matcher matcher = f38126a.matcher(nextElement.getName());
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' for ABI '%s'", m3353b, group2, group));
                    Set set = (Set) hashMap.get(group);
                    Set set2 = set;
                    if (set == null) {
                        set2 = new HashSet();
                        hashMap.put(group, set2);
                    }
                    set2.add(new C8546k(nextElement, group2));
                }
            }
            HashMap hashMap2 = new HashMap();
            for (String str : Build.SUPPORTED_ABIS) {
                if (hashMap.containsKey(str)) {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str));
                    for (C8546k c8546k : (Set) hashMap.get(str)) {
                        if (hashMap2.containsKey(c8546k.f38124a)) {
                            format = String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", c8546k.f38124a, str);
                        } else {
                            hashMap2.put(c8546k.f38124a, c8546k);
                            format = String.format("NativeLibraryExtractor: using library %s for ABI %s", c8546k.f38124a, str);
                        }
                        Log.d("SplitCompat", format);
                    }
                } else {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str));
                }
            }
            abstractC8544i.mo3365a(zipFile2, new HashSet(hashMap2.values()));
            zipFile2.close();
        } catch (IOException e3) {
            e = e3;
            zipFile = zipFile2;
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

    /* renamed from: f */
    public final void m3358f(C8553r c8553r, Set<C8546k> set, AbstractC8545j abstractC8545j) {
        for (C8546k c8546k : set) {
            File m3384e = this.f38128c.m3384e(c8553r.m3353b(), c8546k.f38124a);
            boolean z = false;
            if (m3384e.exists()) {
                z = false;
                if (m3384e.length() == c8546k.f38125b.getSize()) {
                    z = true;
                }
            }
            abstractC8545j.mo3364a(c8546k, m3384e, z);
        }
    }

    /* renamed from: a */
    public final Set<File> m3363a() {
        Log.d("SplitCompat", "NativeLibraryExtractor: synchronizing native libraries");
        Set<C8553r> m3380i = this.f38128c.m3380i();
        for (String str : this.f38128c.m3379j()) {
            Iterator<C8553r> it = m3380i.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().m3353b().equals(str)) {
                        break;
                    }
                } else {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str));
                    this.f38128c.m3378k(str);
                    break;
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (C8553r c8553r : m3380i) {
            HashSet hashSet2 = new HashSet();
            m3359e(c8553r, new C8542g(this, hashSet2, c8553r));
            for (File file : this.f38128c.m3376m(c8553r.m3353b())) {
                if (!hashSet2.contains(file)) {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file.getAbsolutePath(), c8553r.m3353b(), c8553r.m3354a().getAbsolutePath()));
                    this.f38128c.m3377l(file);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }

    /* renamed from: b */
    public final Set<File> m3362b(C8553r c8553r) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        HashSet hashSet = new HashSet();
        m3359e(c8553r, new C8541f(this, c8553r, hashSet, atomicBoolean));
        if (atomicBoolean.get()) {
            return hashSet;
        }
        return null;
    }
}
