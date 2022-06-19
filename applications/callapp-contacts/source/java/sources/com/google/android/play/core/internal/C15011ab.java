package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.C15176z;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.android.play.core.internal.ab */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ab.class */
public final class C15011ab implements AbstractC15087w {

    /* renamed from: a */
    private final /* synthetic */ int f54743a = 0;

    public C15011ab() {
    }

    public C15011ab(byte[] bArr) {
    }

    public C15011ab(char[] cArr) {
    }

    public C15011ab(float[] fArr) {
    }

    public C15011ab(int[] iArr) {
    }

    public C15011ab(short[] sArr) {
    }

    public C15011ab(boolean[] zArr) {
    }

    public C15011ab(byte[][] bArr) {
    }

    /* renamed from: a */
    private static AbstractC15090z m9623a() {
        return new C15012ac(null);
    }

    /* renamed from: a */
    private static Object m9622a(ClassLoader classLoader) {
        return C15017ah.m9597a(classLoader, "pathList", Object.class).m9611a();
    }

    /* renamed from: a */
    private static void m9620a(ClassLoader classLoader, Set<File> set, AbstractC15013ad abstractC15013ad) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (File file : set) {
            hashSet.add(file.getParentFile());
        }
        Object m9622a = m9622a(classLoader);
        C15016ag m9597a = C15017ah.m9597a(m9622a, "nativeLibraryDirectories", List.class);
        synchronized (C15176z.class) {
            try {
                ArrayList arrayList = new ArrayList((Collection) m9597a.m9611a());
                hashSet.removeAll(arrayList);
                arrayList.addAll(hashSet);
                m9597a.m9610a((C15016ag) arrayList);
            } finally {
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Object[] mo9612a = abstractC15013ad.mo9612a(m9622a, new ArrayList(hashSet), arrayList2);
        if (arrayList2.isEmpty()) {
            synchronized (C15176z.class) {
                try {
                    C15017ah.m9591b(m9622a, "nativeLibraryPathElements", Object.class).m9607b(Arrays.asList(mo9612a));
                } finally {
                }
            }
            return;
        }
        C15042bf c15042bf = new C15042bf("Error in makePathElements");
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            C15034ay.m9577a(c15042bf, arrayList2.get(i));
        }
        throw c15042bf;
    }

    /* renamed from: a */
    private static boolean m9621a(ClassLoader classLoader, File file, File file2, boolean z, AbstractC15090z abstractC15090z, String str, AbstractC15089y abstractC15089y) {
        ArrayList<IOException> arrayList = new ArrayList<>();
        Object m9622a = m9622a(classLoader);
        C15016ag m9591b = C15017ah.m9591b(m9622a, "dexElements", Object.class);
        List<Object> asList = Arrays.asList((Object[]) m9591b.m9611a());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : asList) {
            arrayList2.add((File) C15017ah.m9597a(obj, str, File.class).m9611a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        if (!z && !abstractC15089y.mo9478a(m9622a, file2, file)) {
            String valueOf = String.valueOf(file2.getPath());
            Log.w("SplitCompat", valueOf.length() != 0 ? "Should be optimized ".concat(valueOf) : new String("Should be optimized "));
            return false;
        }
        m9591b.m9609a((Collection) Arrays.asList(abstractC15090z.mo9477a(m9622a, new ArrayList<>(Collections.singleton(file2)), file, arrayList)));
        if (arrayList.isEmpty()) {
            return true;
        }
        C15042bf c15042bf = new C15042bf("DexPathList.makeDexElement failed");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            IOException iOException = arrayList.get(i);
            Log.e("SplitCompat", "DexPathList.makeDexElement failed", iOException);
            C15034ay.m9577a(c15042bf, iOException);
        }
        C15017ah.m9591b(m9622a, "dexElementsSuppressedExceptions", IOException.class).m9609a((Collection) arrayList);
        throw c15042bf;
    }

    /* renamed from: b */
    private static AbstractC15089y m9619b() {
        return new C15015af((byte[]) null);
    }

    /* renamed from: b */
    private static void m9617b(ClassLoader classLoader, Set<File> set) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (File file : set) {
            String valueOf = String.valueOf(file.getParentFile().getAbsolutePath());
            if (valueOf.length() != 0) {
                "Adding native library parent directory: ".concat(valueOf);
            } else {
                new String("Adding native library parent directory: ");
            }
            hashSet.add(file.getParentFile());
        }
        C15016ag m9591b = C15017ah.m9591b(m9622a(classLoader), "nativeLibraryDirectories", File.class);
        hashSet.removeAll(Arrays.asList((File[]) m9591b.m9611a()));
        synchronized (C15176z.class) {
            try {
                int size = hashSet.size();
                StringBuilder sb = new StringBuilder(30);
                sb.append("Adding directories ");
                sb.append(size);
                m9591b.m9607b(hashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static boolean m9618b(ClassLoader classLoader, File file, File file2, boolean z) {
        return m9621a(classLoader, file, file2, z, m9616c(), "zip", m9619b());
    }

    /* renamed from: c */
    private static AbstractC15090z m9616c() {
        return new C15012ac();
    }

    /* renamed from: c */
    private static void m9614c(ClassLoader classLoader, Set<File> set) {
        m9620a(classLoader, set, new C15014ae());
    }

    /* renamed from: c */
    private static boolean m9615c(ClassLoader classLoader, File file, File file2, boolean z) {
        return m9621a(classLoader, file, file2, z, m9616c(), "path", new C15015af());
    }

    /* renamed from: d */
    private static AbstractC15013ad m9613d() {
        return new C15014ae(null);
    }

    @Override // com.google.android.play.core.internal.AbstractC15087w
    /* renamed from: a */
    public final void mo9482a(ClassLoader classLoader, Set set) {
        switch (this.f54743a) {
            case 0:
                m9617b(classLoader, set);
                return;
            case 1:
                m9617b(classLoader, set);
                return;
            case 2:
            case 3:
            case 4:
                m9620a(classLoader, set, m9613d());
                return;
            case 5:
                m9614c(classLoader, set);
                return;
            case 6:
                m9614c(classLoader, set);
                return;
            default:
                m9614c(classLoader, set);
                return;
        }
    }

    @Override // com.google.android.play.core.internal.AbstractC15087w
    /* renamed from: a */
    public final boolean mo9483a(ClassLoader classLoader, File file, File file2, boolean z) {
        AbstractC15090z m9623a;
        C15015af m9619b;
        String str;
        switch (this.f54743a) {
            case 0:
            case 1:
                m9623a = m9623a();
                m9619b = m9619b();
                str = "zip";
                break;
            case 2:
                return m9618b(classLoader, file, file2, z);
            case 3:
                return m9618b(classLoader, file, file2, z);
            case 4:
                return m9618b(classLoader, file, file2, z);
            case 5:
                return m9615c(classLoader, file, file2, z);
            case 6:
                return m9615c(classLoader, file, file2, z);
            default:
                m9623a = m9616c();
                m9619b = new C15015af((char[]) null);
                str = "path";
                break;
        }
        return m9621a(classLoader, file, file2, z, m9623a, str, m9619b);
    }
}
