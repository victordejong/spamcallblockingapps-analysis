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
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.zip.ZipFile;
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex.class */
public final class MultiDex {

    /* renamed from: a */
    private static final Set<File> f4318a = new HashSet();

    /* renamed from: b */
    private static final boolean f4319b = m17944n(System.getProperty("java.vm.version"));

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14.class */
    public static final class V14 {

        /* renamed from: b */
        private static final int f4320b = 4;

        /* renamed from: a */
        private final ElementConstructor f4321a;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$ElementConstructor.class */
        public interface ElementConstructor {
            /* renamed from: a */
            Object mo17939a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$ICSElementConstructor.class */
        private static class ICSElementConstructor implements ElementConstructor {

            /* renamed from: a */
            private final Constructor<?> f4322a;

            ICSElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f4322a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            /* renamed from: a */
            public Object mo17939a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.f4322a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$JBMR11ElementConstructor.class */
        private static class JBMR11ElementConstructor implements ElementConstructor {

            /* renamed from: a */
            private final Constructor<?> f4323a;

            JBMR11ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f4323a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            /* renamed from: a */
            public Object mo17939a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f4323a.newInstance(file, file, dexFile);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$JBMR2ElementConstructor.class */
        private static class JBMR2ElementConstructor implements ElementConstructor {

            /* renamed from: a */
            private final Constructor<?> f4324a;

            JBMR2ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f4324a = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            /* renamed from: a */
            public Object mo17939a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f4324a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private V14() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            ElementConstructor elementConstructor;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                elementConstructor = new ICSElementConstructor(cls);
            } catch (NoSuchMethodException e) {
                try {
                    elementConstructor = new JBMR11ElementConstructor(cls);
                } catch (NoSuchMethodException e2) {
                    elementConstructor = new JBMR2ElementConstructor(cls);
                }
            }
            this.f4321a = elementConstructor;
        }

        /* renamed from: a */
        static void m17942a(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = MultiDex.m17951g(classLoader, "pathList").get(classLoader);
            Object[] b = new V14().m17941b(list);
            try {
                MultiDex.m17952f(obj, "dexElements", b);
            } catch (NoSuchFieldException e) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e);
                MultiDex.m17952f(obj, "pathElements", b);
            }
        }

        /* renamed from: b */
        private Object[] m17941b(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = (File) list.get(i);
                objArr[i] = this.f4321a.mo17939a(file, DexFile.loadDex(file.getPath(), m17940c(file), 0));
            }
            return objArr;
        }

        /* renamed from: c */
        private static String m17940c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f4320b) + ".dex").getPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V19.class */
    public static final class V19 {
        private V19() {
        }

        /* renamed from: a */
        static void m17938a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = MultiDex.m17951g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            MultiDex.m17952f(obj, "dexElements", m17937b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field g = MultiDex.m17951g(obj, "dexElementsSuppressedExceptions");
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
        private static Object[] m17937b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) MultiDex.m17950h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.multidex.MultiDex$V4 */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V4.class */
    public static final class C0434V4 {
        private C0434V4() {
        }

        /* renamed from: a */
        static void m17936a(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field g = MultiDex.m17951g(classLoader, "path");
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
            MultiDex.m17952f(classLoader, "mPaths", strArr);
            MultiDex.m17952f(classLoader, "mFiles", fileArr);
            MultiDex.m17952f(classLoader, "mZips", zipFileArr);
            MultiDex.m17952f(classLoader, "mDexs", dexFileArr);
        }
    }

    private MultiDex() {
    }

    /* renamed from: d */
    private static void m17954d(Context context) throws Exception {
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
    private static void m17953e(Context context, File file, File file2, String str, String str2, boolean z) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        synchronized (f4318a) {
            if (!f4318a.contains(file)) {
                f4318a.add(file);
                if (Build.VERSION.SDK_INT > 20) {
                    Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
                }
                ClassLoader j = m17948j(context);
                if (j != null) {
                    m17954d(context);
                    File k = m17947k(context, file2, str);
                    MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, k);
                    IOException e = null;
                    try {
                        m17945m(j, k, multiDexExtractor.m17928l(context, str2, false));
                    } catch (IOException e2) {
                        if (z) {
                            Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e2);
                            m17945m(j, k, multiDexExtractor.m17928l(context, str2, true));
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
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m17952f(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field g = m17951g(obj, str);
        Object[] objArr2 = (Object[]) g.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        g.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static Field m17951g(Object obj, String str) throws NoSuchFieldException {
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
    public static Method m17950h(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
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
    private static ApplicationInfo m17949i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: j */
    private static ClassLoader m17948j(Context context) {
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
    private static File m17947k(Context context, File file, String str) throws IOException {
        File file2;
        File file3 = new File(file, "code_cache");
        try {
            m17943o(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), "code_cache");
            m17943o(file2);
        }
        File file4 = new File(file2, str);
        m17943o(file4);
        return file4;
    }

    /* renamed from: l */
    public static void m17946l(Context context) {
        Log.i("MultiDex", "Installing application");
        if (f4319b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (Build.VERSION.SDK_INT >= 4) {
            try {
                ApplicationInfo i = m17949i(context);
                if (i == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                m17953e(context, new File(i.sourceDir), new File(i.dataDir), "secondary-dexes", "", true);
                Log.i("MultiDex", "install done");
            } catch (Exception e) {
                Log.e("MultiDex", "MultiDex installation failure", e);
                throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
            }
        } else {
            throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
        }
    }

    /* renamed from: m */
    private static void m17945m(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (!list.isEmpty()) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                V19.m17938a(classLoader, list, file);
            } else if (i >= 14) {
                V14.m17942a(classLoader, list);
            } else {
                C0434V4.m17936a(classLoader, list);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r0 >= 1) goto L_0x006b;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m17944n(java.lang.String r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0074
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
            if (r0 == 0) goto L_0x0029
            r0 = r8
            java.lang.String r0 = r0.nextToken()
            r10 = r0
            goto L_0x002c
        L_0x0029:
            r0 = 0
            r10 = r0
        L_0x002c:
            r0 = r8
            boolean r0 = r0.hasMoreTokens()
            if (r0 == 0) goto L_0x0039
            r0 = r8
            java.lang.String r0 = r0.nextToken()
            r9 = r0
        L_0x0039:
            r0 = r6
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0074
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0074
            r0 = r10
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0070
            r11 = r0
            r0 = r9
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0070
            r12 = r0
            r0 = r11
            r1 = 2
            if (r0 > r1) goto L_0x006b
            r0 = r6
            r7 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L_0x0074
            r0 = r6
            r7 = r0
            r0 = r12
            r1 = 1
            if (r0 < r1) goto L_0x0074
        L_0x006b:
            r0 = 1
            r7 = r0
            goto L_0x0074
        L_0x0070:
            r10 = move-exception
            r0 = r6
            r7 = r0
        L_0x0074:
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
            if (r0 == 0) goto L_0x0098
            java.lang.String r0 = " has multidex support"
            r5 = r0
            goto L_0x009c
        L_0x0098:
            java.lang.String r0 = " does not have multidex support"
            r5 = r0
        L_0x009c:
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.MultiDex.m17944n(java.lang.String):boolean");
    }

    /* renamed from: o */
    private static void m17943o(File file) throws IOException {
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
