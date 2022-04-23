package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.zip.ZipFile;
/* renamed from: androidx.multidex.a */
/* loaded from: classes-dex2jar.jar:androidx/multidex/a.class */
public final class C0403a {

    /* renamed from: a */
    private static final Set<File> f2147a = new HashSet();

    /* renamed from: b */
    private static final boolean f2148b = m12877m(System.getProperty("java.vm.version"));

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.multidex.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a.class */
    public static final class C0404a {

        /* renamed from: b */
        private static final int f2149b = 4;

        /* renamed from: a */
        private final AbstractC0405a f2150a;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.multidex.a$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a$a.class */
        public interface AbstractC0405a {
            /* renamed from: a */
            Object m12872a(File file, DexFile dexFile);
        }

        private C0404a() {
            b bVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                bVar = new b(cls);
            } catch (NoSuchMethodException e) {
                try {
                    bVar = new c(cls);
                } catch (NoSuchMethodException e2) {
                    bVar = new d(cls);
                }
            }
            this.f2150a = bVar;
        }

        /* renamed from: a */
        static void m12875a(ClassLoader classLoader, List<? extends File> list) {
            Object obj = C0403a.m12883g(classLoader, "pathList").get(classLoader);
            Object[] b = new C0404a().m12874b(list);
            try {
                C0403a.m12884f(obj, "dexElements", b);
            } catch (NoSuchFieldException e) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e);
                C0403a.m12884f(obj, "pathElements", b);
            }
        }

        /* renamed from: b */
        private Object[] m12874b(List<? extends File> list) {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = (File) list.get(i);
                objArr[i] = this.f2150a.m12872a(file, DexFile.loadDex(file.getPath(), m12873c(file), 0));
            }
            return objArr;
        }

        /* renamed from: c */
        private static String m12873c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f2149b) + ".dex").getPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.multidex.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$b.class */
    public static final class C0406b {
        /* renamed from: a */
        static void m12871a(ClassLoader classLoader, List<? extends File> list, File file) {
            IOException[] iOExceptionArr;
            Object obj = C0403a.m12883g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            C0403a.m12884f(obj, "dexElements", m12870b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field g = C0403a.m12883g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) g.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    iOExceptionArr = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr, arrayList.size(), iOExceptionArr2.length);
                }
                g.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        /* renamed from: b */
        private static Object[] m12870b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) C0403a.m12882h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.multidex.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$c.class */
    public static final class C0407c {
        /* renamed from: a */
        static void m12869a(ClassLoader classLoader, List<? extends File> list) {
            int size = list.size();
            Field g = C0403a.m12883g(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) g.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File file = (File) listIterator.next();
                String absolutePath = file.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = file;
                zipFileArr[previousIndex] = new ZipFile(file);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            g.set(classLoader, sb.toString());
            C0403a.m12884f(classLoader, "mPaths", strArr);
            C0403a.m12884f(classLoader, "mFiles", fileArr);
            C0403a.m12884f(classLoader, "mZips", zipFileArr);
            C0403a.m12884f(classLoader, "mDexs", dexFileArr);
        }
    }

    /* renamed from: d */
    private static void m12886d(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File file2 : listFiles) {
                Log.i("MultiDex", "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
                if (!file2.delete()) {
                    Log.w("MultiDex", "Failed to delete old file " + file2.getPath());
                } else {
                    Log.i("MultiDex", "Deleted old file " + file2.getPath());
                }
            }
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
                return;
            }
            Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
        }
    }

    /* renamed from: e */
    private static void m12885e(Context context, File file, File file2, String str, String str2, boolean z) {
        Set<File> set = f2147a;
        synchronized (set) {
            if (!set.contains(file)) {
                set.add(file);
                int i = Build.VERSION.SDK_INT;
                if (i > 20) {
                    Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + i + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
                }
                try {
                    ClassLoader classLoader = context.getClassLoader();
                    if (classLoader == null) {
                        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                        return;
                    }
                    m12886d(context);
                    File j = m12880j(context, file2, str);
                    MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, j);
                    IOException e = null;
                    try {
                        m12878l(classLoader, j, multiDexExtractor.m12896O(context, str2, false));
                    } catch (IOException e2) {
                        if (z) {
                            Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e2);
                            m12878l(classLoader, j, multiDexExtractor.m12896O(context, str2, true));
                        } else {
                            throw e2;
                        }
                    }
                    try {
                        multiDexExtractor.close();
                    } catch (IOException e3) {
                        e = e3;
                    }
                    if (e != null) {
                        throw e;
                    }
                } catch (RuntimeException e4) {
                    Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m12884f(Object obj, String str, Object[] objArr) {
        Field g = m12883g(obj, str);
        Object[] objArr2 = (Object[]) g.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        g.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static Field m12883g(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static Method m12882h(Object obj, String str, Class<?>... clsArr) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* renamed from: i */
    private static ApplicationInfo m12881i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: j */
    private static File m12880j(Context context, File file, String str) {
        File file2;
        File file3 = new File(file, "code_cache");
        try {
            m12876n(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), "code_cache");
            m12876n(file2);
        }
        File file4 = new File(file2, str);
        m12876n(file4);
        return file4;
    }

    /* renamed from: k */
    public static void m12879k(Context context) {
        String str;
        Log.i("MultiDex", "Installing application");
        if (f2148b) {
            str = "VM has multidex support, MultiDex support library is disabled.";
        } else {
            int i = Build.VERSION.SDK_INT;
            if (i >= 4) {
                try {
                    ApplicationInfo i2 = m12881i(context);
                    if (i2 == null) {
                        Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                        return;
                    } else {
                        m12885e(context, new File(i2.sourceDir), new File(i2.dataDir), "secondary-dexes", "", true);
                        str = "install done";
                    }
                } catch (Exception e) {
                    Log.e("MultiDex", "MultiDex installation failure", e);
                    throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
                }
            } else {
                throw new RuntimeException("MultiDex installation failed. SDK " + i + " is unsupported. Min SDK version is 4.");
            }
        }
        Log.i("MultiDex", str);
    }

    /* renamed from: l */
    private static void m12878l(ClassLoader classLoader, File file, List<? extends File> list) {
        if (!list.isEmpty()) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                C0406b.m12871a(classLoader, list, file);
            } else if (i >= 14) {
                C0404a.m12875a(classLoader, list);
            } else {
                C0407c.m12869a(classLoader, list);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r0 >= 1) goto L_0x0046;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m12877m(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x004e
            java.lang.String r0 = "(\\d+)\\.(\\d+)(\\.\\d+)?"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r6
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x004e
            r0 = r6
            r1 = 1
            java.lang.String r0 = r0.group(r1)     // Catch: NumberFormatException -> 0x004b
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x004b
            r7 = r0
            r0 = r6
            r1 = 2
            java.lang.String r0 = r0.group(r1)     // Catch: NumberFormatException -> 0x004b
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x004b
            r8 = r0
            r0 = r7
            r1 = 2
            if (r0 > r1) goto L_0x0046
            r0 = r4
            r5 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x004e
            r0 = r4
            r5 = r0
            r0 = r8
            r1 = 1
            if (r0 < r1) goto L_0x004e
        L_0x0046:
            r0 = 1
            r5 = r0
            goto L_0x004e
        L_0x004b:
            r6 = move-exception
            r0 = r4
            r5 = r0
        L_0x004e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "VM with version "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r3
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            if (r0 == 0) goto L_0x006f
            java.lang.String r0 = " has multidex support"
            r3 = r0
            goto L_0x0073
        L_0x006f:
            java.lang.String r0 = " does not have multidex support"
            r3 = r0
        L_0x0073:
            r0 = r6
            r1 = r3
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MultiDex"
            r1 = r6
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.i(r0, r1)
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.C0403a.m12877m(java.lang.String):boolean");
    }

    /* renamed from: n */
    private static void m12876n(File file) {
        File parentFile;
        String str;
        file.mkdir();
        if (!file.isDirectory()) {
            if (file.getParentFile() == null) {
                str = "Failed to create dir " + file.getPath() + ". Parent file is null.";
            } else {
                str = "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite();
            }
            Log.e("MultiDex", str);
            throw new IOException("Failed to create directory " + file.getPath());
        }
    }
}
