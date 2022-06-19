package com.google.android.play.core.splitcompat;

import android.os.Build;
import com.google.android.play.core.internal.C15034ay;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/l.class */
public final class C15116l {

    /* renamed from: a */
    public static final /* synthetic */ int f54858a = 0;

    /* renamed from: b */
    private static final Pattern f54859b = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    /* renamed from: c */
    private final C15108d f54860c;

    public C15116l(C15108d c15108d) throws IOException {
        this.f54860c = c15108d;
    }

    /* renamed from: a */
    public static /* synthetic */ Set m9427a(C15116l c15116l, Set set, C15122r c15122r, ZipFile zipFile) throws IOException {
        HashSet hashSet = new HashSet();
        c15116l.m9425a(c15122r, set, new C15112h(hashSet, c15122r, zipFile));
        return hashSet;
    }

    /* renamed from: a */
    public static void m9426a(C15122r c15122r, AbstractC15113i abstractC15113i) throws IOException {
        ZipFile zipFile;
        IOException e;
        String[] strArr;
        try {
            ZipFile zipFile2 = new ZipFile(c15122r.f54867a);
            try {
                String str = c15122r.f54868b;
                HashMap hashMap = new HashMap();
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    Matcher matcher = f54859b.matcher(nextElement.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        String.format("NativeLibraryExtractor: split '%s' has native library '%s' for ABI '%s'", str, group2, group);
                        Set set = (Set) hashMap.get(group);
                        Set set2 = set;
                        if (set == null) {
                            set2 = new HashSet();
                            hashMap.put(group, set2);
                        }
                        set2.add(new C15115k(nextElement, group2));
                    }
                }
                HashMap hashMap2 = new HashMap();
                for (String str2 : Build.SUPPORTED_ABIS) {
                    if (hashMap.containsKey(str2)) {
                        String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str2);
                        for (C15115k c15115k : (Set) hashMap.get(str2)) {
                            if (hashMap2.containsKey(c15115k.f54856a)) {
                                String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", c15115k.f54856a, str2);
                            } else {
                                hashMap2.put(c15115k.f54856a, c15115k);
                                String.format("NativeLibraryExtractor: using library %s for ABI %s", c15115k.f54856a, str2);
                            }
                        }
                    } else {
                        String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str2);
                    }
                }
                abstractC15113i.mo9431a(zipFile2, new HashSet(hashMap2.values()));
                zipFile2.close();
            } catch (IOException e2) {
                e = e2;
                zipFile = zipFile2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e3) {
                        C15034ay.m9577a(e, e3);
                    }
                }
                throw e;
            }
        } catch (IOException e4) {
            e = e4;
            zipFile = null;
        }
    }

    /* renamed from: a */
    public final void m9425a(C15122r c15122r, Set<C15115k> set, AbstractC15114j abstractC15114j) throws IOException {
        for (C15115k c15115k : set) {
            File m9446a = C15108d.m9446a(this.f54860c.m9442b(c15122r.f54868b), c15115k.f54856a);
            boolean z = false;
            if (m9446a.exists()) {
                z = false;
                if (m9446a.length() == c15115k.f54857b.getSize()) {
                    z = true;
                }
            }
            abstractC15114j.mo9430a(c15115k, m9446a, z);
        }
    }

    /* renamed from: a */
    public final Set<File> m9429a() throws IOException {
        Set<C15122r> m9434f = this.f54860c.m9434f();
        C15108d c15108d = this.f54860c;
        ArrayList<String> arrayList = new ArrayList();
        File[] listFiles = c15108d.m9436e().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        for (String str : arrayList) {
            Iterator<C15122r> it2 = m9434f.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().f54868b.equals(str)) {
                        break;
                    }
                } else {
                    String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str);
                    this.f54860c.m9439c(str);
                    break;
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (C15122r c15122r : m9434f) {
            HashSet hashSet2 = new HashSet();
            m9426a(c15122r, new C15111g(this, hashSet2, c15122r));
            for (File file2 : this.f54860c.m9437d(c15122r.f54868b)) {
                if (!hashSet2.contains(file2)) {
                    String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file2.getAbsolutePath(), c15122r.f54868b, c15122r.f54867a.getAbsolutePath());
                    this.f54860c.m9447a(file2);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }
}
