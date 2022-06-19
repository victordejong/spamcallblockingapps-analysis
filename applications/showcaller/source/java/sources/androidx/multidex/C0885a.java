package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
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
public final class C0885a {

    /* renamed from: a */
    private static final Set<File> f3897a = new HashSet();

    /* renamed from: b */
    private static final boolean f3898b = m32203n(System.getProperty("java.vm.version"));

    /* renamed from: androidx.multidex.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a.class */
    public static final class C0886a {

        /* renamed from: a */
        private static final int f3899a = 4;

        /* renamed from: b */
        private final AbstractC0887a f3900b;

        /* renamed from: androidx.multidex.a$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a$a.class */
        public interface AbstractC0887a {
            /* renamed from: a */
            Object mo32198a(File file, DexFile dexFile);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.multidex.a$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a$b.class */
        public static class C0888b implements AbstractC0887a {

            /* renamed from: a */
            private final Constructor<?> f3901a;

            C0888b(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f3901a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.C0885a.C0886a.AbstractC0887a
            /* renamed from: a */
            public Object mo32198a(File file, DexFile dexFile) {
                return this.f3901a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.multidex.a$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a$c.class */
        public static class C0889c implements AbstractC0887a {

            /* renamed from: a */
            private final Constructor<?> f3902a;

            C0889c(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f3902a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.C0885a.C0886a.AbstractC0887a
            /* renamed from: a */
            public Object mo32198a(File file, DexFile dexFile) {
                return this.f3902a.newInstance(file, file, dexFile);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.multidex.a$a$d */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/a$a$d.class */
        public static class C0890d implements AbstractC0887a {

            /* renamed from: a */
            private final Constructor<?> f3903a;

            C0890d(Class<?> cls) {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f3903a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.C0885a.C0886a.AbstractC0887a
            /* renamed from: a */
            public Object mo32198a(File file, DexFile dexFile) {
                return this.f3903a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private C0886a() {
            AbstractC0887a abstractC0887a;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                abstractC0887a = new C0888b(cls);
            } catch (NoSuchMethodException e) {
                try {
                    abstractC0887a = new C0889c(cls);
                } catch (NoSuchMethodException e2) {
                    abstractC0887a = new C0890d(cls);
                }
            }
            this.f3900b = abstractC0887a;
        }

        /* renamed from: a */
        static void m32201a(ClassLoader classLoader, List<? extends File> list) {
            Object obj = C0885a.m32210g(classLoader, "pathList").get(classLoader);
            Object[] m32200b = new C0886a().m32200b(list);
            try {
                C0885a.m32211f(obj, "dexElements", m32200b);
            } catch (NoSuchFieldException e) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e);
                C0885a.m32211f(obj, "pathElements", m32200b);
            }
        }

        /* renamed from: b */
        private Object[] m32200b(List<? extends File> list) {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = list.get(i);
                objArr[i] = this.f3900b.mo32198a(file, DexFile.loadDex(file.getPath(), m32199c(file), 0));
            }
            return objArr;
        }

        /* renamed from: c */
        private static String m32199c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f3899a) + ".dex").getPath();
        }
    }

    /* renamed from: androidx.multidex.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$b.class */
    public static final class C0891b {
        /* renamed from: a */
        static void m32197a(ClassLoader classLoader, List<? extends File> list, File file) {
            IOException[] iOExceptionArr;
            Object obj = C0885a.m32210g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            C0885a.m32211f(obj, "dexElements", m32196b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field m32210g = C0885a.m32210g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) m32210g.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    iOExceptionArr = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr, arrayList.size(), iOExceptionArr2.length);
                }
                m32210g.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        /* renamed from: b */
        private static Object[] m32196b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) C0885a.m32209h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* renamed from: androidx.multidex.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/a$c.class */
    public static final class C0892c {
        /* renamed from: a */
        static void m32195a(ClassLoader classLoader, List<? extends File> list) {
            int size = list.size();
            Field m32210g = C0885a.m32210g(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) m32210g.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = next;
                zipFileArr[previousIndex] = new ZipFile(next);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            m32210g.set(classLoader, sb.toString());
            C0885a.m32211f(classLoader, "mPaths", strArr);
            C0885a.m32211f(classLoader, "mFiles", fileArr);
            C0885a.m32211f(classLoader, "mZips", zipFileArr);
            C0885a.m32211f(classLoader, "mDexs", dexFileArr);
        }
    }

    /* renamed from: d */
    private static void m32213d(Context context) {
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
    private static void m32212e(Context context, File file, File file2, String str, String str2, boolean z) {
        IOException e;
        Set<File> set = f3897a;
        synchronized (set) {
            if (set.contains(file)) {
                return;
            }
            set.add(file);
            int i = Build.VERSION.SDK_INT;
            if (i > 20) {
                Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + i + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
            }
            ClassLoader m32207j = m32207j(context);
            if (m32207j == null) {
                return;
            }
            m32213d(context);
            File m32206k = m32206k(context, file2, str);
            MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, m32206k);
            try {
                m32204m(m32207j, m32206k, multiDexExtractor.m32219u(context, str2, false));
            } catch (IOException e2) {
                if (!z) {
                    throw e2;
                }
                Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e2);
                m32204m(m32207j, m32206k, multiDexExtractor.m32219u(context, str2, true));
            }
            try {
                multiDexExtractor.close();
                e = null;
            } catch (IOException e3) {
                e = e3;
            }
            if (e != null) {
                throw e;
            }
        }
    }

    /* renamed from: f */
    public static void m32211f(Object obj, String str, Object[] objArr) {
        Field m32210g = m32210g(obj, str);
        Object[] objArr2 = (Object[]) m32210g.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        m32210g.set(obj, objArr3);
    }

    /* renamed from: g */
    public static Field m32210g(Object obj, String str) {
        Field declaredField;
        Class<?> cls = obj.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 == null) {
                throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
            }
            try {
                declaredField = cls2.getDeclaredField(str);
                if (declaredField.isAccessible()) {
                    break;
                }
                declaredField.setAccessible(true);
                break;
            } catch (NoSuchFieldException e) {
                cls = cls2.getSuperclass();
            }
        }
        return declaredField;
    }

    /* renamed from: h */
    public static Method m32209h(Object obj, String str, Class<?>... clsArr) {
        Method declaredMethod;
        Class<?> cls = obj.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 == null) {
                throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
            }
            try {
                declaredMethod = cls2.getDeclaredMethod(str, clsArr);
                if (declaredMethod.isAccessible()) {
                    break;
                }
                declaredMethod.setAccessible(true);
                break;
            } catch (NoSuchMethodException e) {
                cls = cls2.getSuperclass();
            }
        }
        return declaredMethod;
    }

    /* renamed from: i */
    private static ApplicationInfo m32208i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: j */
    private static ClassLoader m32207j(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (Build.VERSION.SDK_INT >= 14) {
                if (classLoader instanceof BaseDexClassLoader) {
                    return classLoader;
                }
            } else if ((classLoader instanceof DexClassLoader) || (classLoader instanceof PathClassLoader)) {
                return classLoader;
            }
            Log.e("MultiDex", "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
            return null;
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: k */
    private static File m32206k(Context context, File file, String str) {
        File file2;
        File file3 = new File(file, "code_cache");
        try {
            m32202o(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), "code_cache");
            m32202o(file2);
        }
        File file4 = new File(file2, str);
        m32202o(file4);
        return file4;
    }

    /* renamed from: l */
    public static void m32205l(Context context) {
        Log.i("MultiDex", "Installing application");
        if (f3898b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 4) {
            throw new RuntimeException("MultiDex installation failed. SDK " + i + " is unsupported. Min SDK version is 4.");
        }
        try {
            ApplicationInfo m32208i = m32208i(context);
            if (m32208i == null) {
                Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                return;
            }
            m32212e(context, new File(m32208i.sourceDir), new File(m32208i.dataDir), "secondary-dexes", "", true);
            Log.i("MultiDex", "install done");
        } catch (Exception e) {
            Log.e("MultiDex", "MultiDex installation failure", e);
            throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
        }
    }

    /* renamed from: m */
    private static void m32204m(ClassLoader classLoader, File file, List<? extends File> list) {
        if (!list.isEmpty()) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                C0891b.m32197a(classLoader, list, file);
            } else if (i >= 14) {
                C0886a.m32201a(classLoader, list);
            } else {
                C0892c.m32195a(classLoader, list);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r0 >= 1) goto L22;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m32203n(java.lang.String r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L74
            java.util.StringTokenizer r0 = new java.util.StringTokenizer
            r1 = r0
            r2 = r5
            java.lang.String r3 = "."
            r1.<init>(r2, r3)
            r8 = r0
            r0 = r8
            boolean r0 = r0.hasMoreTokens()
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L29
            r0 = r8
            java.lang.String r0 = r0.nextToken()
            r10 = r0
            goto L2c
        L29:
            r0 = 0
            r10 = r0
        L2c:
            r0 = r8
            boolean r0 = r0.hasMoreTokens()
            if (r0 == 0) goto L39
            r0 = r8
            java.lang.String r0 = r0.nextToken()
            r9 = r0
        L39:
            r0 = r6
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L74
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L74
            r0 = r10
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L70
            r11 = r0
            r0 = r9
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L70
            r12 = r0
            r0 = r11
            r1 = 2
            if (r0 > r1) goto L6b
            r0 = r6
            r7 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L74
            r0 = r6
            r7 = r0
            r0 = r12
            r1 = 1
            if (r0 < r1) goto L74
        L6b:
            r0 = 1
            r7 = r0
            goto L74
        L70:
            r10 = move-exception
            r0 = r6
            r7 = r0
        L74:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "VM with version "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            if (r0 == 0) goto L98
            java.lang.String r0 = " has multidex support"
            r5 = r0
            goto L9c
        L98:
            java.lang.String r0 = " does not have multidex support"
            r5 = r0
        L9c:
            r0 = r10
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MultiDex"
            r1 = r10
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.i(r0, r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.C0885a.m32203n(java.lang.String):boolean");
    }

    /* renamed from: o */
    private static void m32202o(File file) {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". Parent file is null.");
            } else {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
            }
            throw new IOException("Failed to create directory " + file.getPath());
        }
    }
}
