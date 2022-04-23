package com.google.android.play.core.splitcompat;

import android.os.Build;
import com.google.android.play.core.internal.ay;
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
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f31443a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f31444b = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    /* renamed from: c  reason: collision with root package name */
    private final d f31445c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(d dVar) throws IOException {
        this.f31445c = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Set a(l lVar, Set set, r rVar, ZipFile zipFile) throws IOException {
        HashSet hashSet = new HashSet();
        lVar.a(rVar, set, new h(hashSet, rVar, zipFile));
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(r rVar, i iVar) throws IOException {
        ZipFile zipFile;
        IOException e;
        String[] strArr;
        try {
            ZipFile zipFile2 = new ZipFile(rVar.f31452a);
            try {
                String str = rVar.f31453b;
                HashMap hashMap = new HashMap();
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                    Matcher matcher = f31444b.matcher(zipEntry.getName());
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
                        set2.add(new k(zipEntry, group2));
                    }
                }
                HashMap hashMap2 = new HashMap();
                for (String str2 : Build.SUPPORTED_ABIS) {
                    if (hashMap.containsKey(str2)) {
                        String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str2);
                        for (k kVar : (Set) hashMap.get(str2)) {
                            if (hashMap2.containsKey(kVar.f31441a)) {
                                String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", kVar.f31441a, str2);
                            } else {
                                hashMap2.put(kVar.f31441a, kVar);
                                String.format("NativeLibraryExtractor: using library %s for ABI %s", kVar.f31441a, str2);
                            }
                        }
                    } else {
                        String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str2);
                    }
                }
                iVar.a(zipFile2, new HashSet(hashMap2.values()));
                zipFile2.close();
            } catch (IOException e2) {
                e = e2;
                zipFile = zipFile2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e3) {
                        ay.a(e, e3);
                    }
                }
                throw e;
            }
        } catch (IOException e4) {
            e = e4;
            zipFile = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(r rVar, Set<k> set, j jVar) throws IOException {
        for (k kVar : set) {
            File a2 = d.a(this.f31445c.b(rVar.f31453b), kVar.f31441a);
            boolean z = false;
            if (a2.exists()) {
                z = false;
                if (a2.length() == kVar.f31442b.getSize()) {
                    z = true;
                }
            }
            jVar.a(kVar, a2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<File> a() throws IOException {
        Set<r> f = this.f31445c.f();
        d dVar = this.f31445c;
        ArrayList<String> arrayList = new ArrayList();
        File[] listFiles = dVar.e().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        for (String str : arrayList) {
            Iterator<r> it2 = f.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().f31453b.equals(str)) {
                        break;
                    }
                } else {
                    String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str);
                    this.f31445c.c(str);
                    break;
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (r rVar : f) {
            HashSet hashSet2 = new HashSet();
            a(rVar, new g(this, hashSet2, rVar));
            for (File file2 : this.f31445c.d(rVar.f31453b)) {
                if (!hashSet2.contains(file2)) {
                    String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file2.getAbsolutePath(), rVar.f31453b, rVar.f31452a.getAbsolutePath());
                    this.f31445c.a(file2);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }
}
