package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.z;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ab.class */
public final class ab implements w {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f31341a = 0;

    public ab() {
    }

    public ab(byte[] bArr) {
    }

    public ab(char[] cArr) {
    }

    public ab(float[] fArr) {
    }

    public ab(int[] iArr) {
    }

    public ab(short[] sArr) {
    }

    public ab(boolean[] zArr) {
    }

    public ab(byte[][] bArr) {
    }

    private static z a() {
        return new ac(null);
    }

    private static Object a(ClassLoader classLoader) {
        return ah.a(classLoader, "pathList", Object.class).a();
    }

    private static void a(ClassLoader classLoader, Set<File> set, ad adVar) {
        if (!set.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (File file : set) {
                hashSet.add(file.getParentFile());
            }
            Object a2 = a(classLoader);
            ag a3 = ah.a(a2, "nativeLibraryDirectories", List.class);
            synchronized (z.class) {
                try {
                    ArrayList arrayList = new ArrayList((Collection) a3.a());
                    hashSet.removeAll(arrayList);
                    arrayList.addAll(hashSet);
                    a3.a((ag) arrayList);
                } finally {
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Object[] a4 = adVar.a(a2, new ArrayList(hashSet), arrayList2);
            if (!arrayList2.isEmpty()) {
                bf bfVar = new bf("Error in makePathElements");
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ay.a(bfVar, arrayList2.get(i));
                }
                throw bfVar;
            }
            synchronized (z.class) {
                try {
                    ah.b(a2, "nativeLibraryPathElements", Object.class).b(Arrays.asList(a4));
                } finally {
                }
            }
        }
    }

    private static boolean a(ClassLoader classLoader, File file, File file2, boolean z, z zVar, String str, y yVar) {
        ArrayList<IOException> arrayList = new ArrayList<>();
        Object a2 = a(classLoader);
        ag b2 = ah.b(a2, "dexElements", Object.class);
        List<Object> asList = Arrays.asList((Object[]) b2.a());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : asList) {
            arrayList2.add((File) ah.a(obj, str, File.class).a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        if (z || yVar.a(a2, file2, file)) {
            b2.a((Collection) Arrays.asList(zVar.a(a2, new ArrayList<>(Collections.singleton(file2)), file, arrayList)));
            if (arrayList.isEmpty()) {
                return true;
            }
            bf bfVar = new bf("DexPathList.makeDexElement failed");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                IOException iOException = arrayList.get(i);
                Log.e("SplitCompat", "DexPathList.makeDexElement failed", iOException);
                ay.a(bfVar, iOException);
            }
            ah.b(a2, "dexElementsSuppressedExceptions", IOException.class).a((Collection) arrayList);
            throw bfVar;
        }
        String valueOf = String.valueOf(file2.getPath());
        Log.w("SplitCompat", valueOf.length() != 0 ? "Should be optimized ".concat(valueOf) : new String("Should be optimized "));
        return false;
    }

    private static y b() {
        return new af((byte[]) null);
    }

    private static void b(ClassLoader classLoader, Set<File> set) {
        if (!set.isEmpty()) {
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
            ag b2 = ah.b(a(classLoader), "nativeLibraryDirectories", File.class);
            hashSet.removeAll(Arrays.asList((File[]) b2.a()));
            synchronized (z.class) {
                try {
                    int size = hashSet.size();
                    StringBuilder sb = new StringBuilder(30);
                    sb.append("Adding directories ");
                    sb.append(size);
                    b2.b(hashSet);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static boolean b(ClassLoader classLoader, File file, File file2, boolean z) {
        return a(classLoader, file, file2, z, c(), "zip", b());
    }

    private static z c() {
        return new ac();
    }

    private static void c(ClassLoader classLoader, Set<File> set) {
        a(classLoader, set, new ae());
    }

    private static boolean c(ClassLoader classLoader, File file, File file2, boolean z) {
        return a(classLoader, file, file2, z, c(), "path", new af());
    }

    private static ad d() {
        return new ae(null);
    }

    @Override // com.google.android.play.core.internal.w
    public final void a(ClassLoader classLoader, Set set) {
        switch (this.f31341a) {
            case 0:
                b(classLoader, set);
                return;
            case 1:
                b(classLoader, set);
                return;
            case 2:
            case 3:
            case 4:
                a(classLoader, set, d());
                return;
            case 5:
                c(classLoader, set);
                return;
            case 6:
                c(classLoader, set);
                return;
            default:
                c(classLoader, set);
                return;
        }
    }

    @Override // com.google.android.play.core.internal.w
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z) {
        z a2;
        y b2;
        String str;
        switch (this.f31341a) {
            case 0:
            case 1:
                a2 = a();
                b2 = b();
                str = "zip";
                break;
            case 2:
                return b(classLoader, file, file2, z);
            case 3:
                return b(classLoader, file, file2, z);
            case 4:
                return b(classLoader, file, file2, z);
            case 5:
                return c(classLoader, file, file2, z);
            case 6:
                return c(classLoader, file, file2, z);
            default:
                a2 = c();
                b2 = new af((char[]) null);
                str = "path";
                break;
        }
        return a(classLoader, file, file2, z, a2, str, b2);
    }
}
