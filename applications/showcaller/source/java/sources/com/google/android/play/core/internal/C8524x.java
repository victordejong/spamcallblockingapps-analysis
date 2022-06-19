package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.C8560g;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/x.class */
public final class C8524x implements AbstractC8514s {

    /* renamed from: a */
    private final /* synthetic */ int f38091a = 0;

    public C8524x() {
    }

    public C8524x(byte[] bArr) {
    }

    public C8524x(char[] cArr) {
    }

    public C8524x(float[] fArr) {
    }

    public C8524x(int[] iArr) {
    }

    public C8524x(short[] sArr) {
    }

    public C8524x(boolean[] zArr) {
    }

    public C8524x(byte[][] bArr) {
    }

    /* renamed from: c */
    static void m3433c(ClassLoader classLoader, Set<File> set) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (File file : set) {
            String valueOf = String.valueOf(file.getParentFile().getAbsolutePath());
            Log.d("Splitcompat", valueOf.length() != 0 ? "Adding native library parent directory: ".concat(valueOf) : new String("Adding native library parent directory: "));
            hashSet.add(file.getParentFile());
        }
        C8477c0 m3547e = C8480d0.m3547e(m3431e(classLoader), "nativeLibraryDirectories", File.class);
        hashSet.removeAll(Arrays.asList((File[]) m3547e.m3557a()));
        synchronized (C8560g.class) {
            try {
                int size = hashSet.size();
                StringBuilder sb = new StringBuilder(30);
                sb.append("Adding directories ");
                sb.append(size);
                Log.d("Splitcompat", sb.toString());
                m3547e.m3553e(hashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    static boolean m3432d(ClassLoader classLoader, File file, File file2, boolean z, AbstractC8520v abstractC8520v, String str, AbstractC8518u abstractC8518u) {
        ArrayList<IOException> arrayList = new ArrayList<>();
        Object m3431e = m3431e(classLoader);
        C8477c0 m3547e = C8480d0.m3547e(m3431e, "dexElements", Object.class);
        List<Object> asList = Arrays.asList((Object[]) m3547e.m3557a());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : asList) {
            arrayList2.add((File) C8480d0.m3548d(obj, str, File.class).m3557a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        if (!z && !abstractC8518u.mo3466a(m3431e, file2, file)) {
            String valueOf = String.valueOf(file2.getPath());
            Log.w("SplitCompat", valueOf.length() != 0 ? "Should be optimized ".concat(valueOf) : new String("Should be optimized "));
            return false;
        }
        m3547e.m3554d(Arrays.asList(abstractC8520v.mo3421a(m3431e, new ArrayList<>(Collections.singleton(file2)), file, arrayList)));
        if (arrayList.isEmpty()) {
            return true;
        }
        C8473bf c8473bf = new C8473bf("DexPathList.makeDexElement failed");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            IOException iOException = arrayList.get(i);
            Log.e("SplitCompat", "DexPathList.makeDexElement failed", iOException);
            C8505n0.m3487a(c8473bf, iOException);
        }
        C8480d0.m3547e(m3431e, "dexElementsSuppressedExceptions", IOException.class).m3554d(arrayList);
        throw c8473bf;
    }

    /* renamed from: e */
    static Object m3431e(ClassLoader classLoader) {
        return C8480d0.m3548d(classLoader, "pathList", Object.class).m3557a();
    }

    /* renamed from: f */
    static AbstractC8520v m3430f() {
        return new C8526y(null);
    }

    /* renamed from: g */
    static AbstractC8518u m3429g() {
        return new C8471b0((byte[]) null);
    }

    /* renamed from: h */
    public static void m3428h(ClassLoader classLoader, Set<File> set, AbstractC8528z abstractC8528z) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (File file : set) {
            hashSet.add(file.getParentFile());
        }
        Object m3431e = m3431e(classLoader);
        C8477c0 m3548d = C8480d0.m3548d(m3431e, "nativeLibraryDirectories", List.class);
        synchronized (C8560g.class) {
            try {
                ArrayList arrayList = new ArrayList((Collection) m3548d.m3557a());
                hashSet.removeAll(arrayList);
                arrayList.addAll(hashSet);
                m3548d.m3556b(arrayList);
            } finally {
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Object[] mo3417a = abstractC8528z.mo3417a(m3431e, new ArrayList(hashSet), arrayList2);
        if (arrayList2.isEmpty()) {
            synchronized (C8560g.class) {
                try {
                    C8480d0.m3547e(m3431e, "nativeLibraryPathElements", Object.class).m3553e(Arrays.asList(mo3417a));
                } finally {
                }
            }
            return;
        }
        C8473bf c8473bf = new C8473bf("Error in makePathElements");
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            C8505n0.m3487a(c8473bf, arrayList2.get(i));
        }
        throw c8473bf;
    }

    /* renamed from: i */
    static AbstractC8520v m3427i() {
        return new C8526y();
    }

    /* renamed from: j */
    static AbstractC8528z m3426j() {
        return new C8467a0(null);
    }

    /* renamed from: k */
    public static boolean m3425k(ClassLoader classLoader, File file, File file2, boolean z) {
        return m3432d(classLoader, file, file2, z, m3427i(), "zip", m3429g());
    }

    /* renamed from: l */
    static void m3424l(ClassLoader classLoader, Set<File> set) {
        m3428h(classLoader, set, new C8467a0());
    }

    /* renamed from: m */
    static boolean m3423m(ClassLoader classLoader, File file, File file2, boolean z) {
        return m3432d(classLoader, file, file2, z, m3427i(), "path", new C8471b0());
    }

    @Override // com.google.android.play.core.internal.AbstractC8514s
    /* renamed from: a */
    public final boolean mo3435a(ClassLoader classLoader, File file, File file2, boolean z) {
        AbstractC8520v m3430f;
        C8471b0 m3429g;
        String str;
        switch (this.f38091a) {
            case 0:
            case 1:
                m3430f = m3430f();
                m3429g = m3429g();
                str = "zip";
                break;
            case 2:
                return m3425k(classLoader, file, file2, z);
            case 3:
                return m3425k(classLoader, file, file2, z);
            case 4:
                return m3425k(classLoader, file, file2, z);
            case 5:
                return m3423m(classLoader, file, file2, z);
            case 6:
                return m3423m(classLoader, file, file2, z);
            default:
                m3430f = m3427i();
                m3429g = new C8471b0((char[]) null);
                str = "path";
                break;
        }
        return m3432d(classLoader, file, file2, z, m3430f, str, m3429g);
    }

    @Override // com.google.android.play.core.internal.AbstractC8514s
    /* renamed from: b */
    public final void mo3434b(ClassLoader classLoader, Set set) {
        switch (this.f38091a) {
            case 0:
                m3433c(classLoader, set);
                return;
            case 1:
                m3433c(classLoader, set);
                return;
            case 2:
            case 3:
            case 4:
                m3428h(classLoader, set, m3426j());
                return;
            case 5:
                m3424l(classLoader, set);
                return;
            case 6:
                m3424l(classLoader, set);
                return;
            default:
                m3424l(classLoader, set);
                return;
        }
    }
}
