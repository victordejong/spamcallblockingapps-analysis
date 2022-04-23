package p012b.p119t;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import androidx.multidex.MultiDexExtractor;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
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
/* renamed from: b.t.a */
/* loaded from: classes-dex2jar.jar:b/t/a.class */
public final class C1880a {

    /* renamed from: a */
    public static final Set<File> f7440a = new HashSet();

    /* renamed from: b */
    public static final boolean f7441b = m31829a(System.getProperty("java.vm.version"));

    /* renamed from: b.t.a$a */
    /* loaded from: classes-dex2jar.jar:b/t/a$a.class */
    public static final class C1881a {

        /* renamed from: b */
        public static final int f7442b = 4;

        /* renamed from: a */
        public final AbstractC1882a f7443a;

        /* renamed from: b.t.a$a$a */
        /* loaded from: classes-dex2jar.jar:b/t/a$a$a.class */
        public interface AbstractC1882a {
            /* renamed from: a */
            Object mo31819a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        /* renamed from: b.t.a$a$b */
        /* loaded from: classes-dex2jar.jar:b/t/a$a$b.class */
        public static class C1883b implements AbstractC1882a {

            /* renamed from: a */
            public final Constructor<?> f7444a;

            public C1883b(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f7444a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p012b.p119t.C1880a.C1881a.AbstractC1882a
            /* renamed from: a */
            public Object mo31819a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.f7444a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* renamed from: b.t.a$a$c */
        /* loaded from: classes-dex2jar.jar:b/t/a$a$c.class */
        public static class C1884c implements AbstractC1882a {

            /* renamed from: a */
            public final Constructor<?> f7445a;

            public C1884c(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f7445a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p012b.p119t.C1880a.C1881a.AbstractC1882a
            /* renamed from: a */
            public Object mo31819a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f7445a.newInstance(file, file, dexFile);
            }
        }

        /* renamed from: b.t.a$a$d */
        /* loaded from: classes-dex2jar.jar:b/t/a$a$d.class */
        public static class C1885d implements AbstractC1882a {

            /* renamed from: a */
            public final Constructor<?> f7446a;

            public C1885d(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f7446a = constructor;
                constructor.setAccessible(true);
            }

            @Override // p012b.p119t.C1880a.C1881a.AbstractC1882a
            /* renamed from: a */
            public Object mo31819a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f7446a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        public C1881a() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            AbstractC1882a aVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                aVar = new C1883b(cls);
            } catch (NoSuchMethodException e) {
                try {
                    aVar = new C1884c(cls);
                } catch (NoSuchMethodException e2) {
                    aVar = new C1885d(cls);
                }
            }
            this.f7443a = aVar;
        }

        /* renamed from: a */
        public static String m31822a(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f7442b) + ".dex").getPath();
        }

        /* renamed from: a */
        public static void m31821a(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = C1880a.m31827b(classLoader, "pathList").get(classLoader);
            Object[] a = new C1881a().m31820a(list);
            try {
                C1880a.m31825b(obj, "dexElements", a);
            } catch (NoSuchFieldException e) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e);
                C1880a.m31825b(obj, "pathElements", a);
            }
        }

        /* renamed from: a */
        public final Object[] m31820a(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                File file = (File) list.get(i);
                objArr[i] = this.f7443a.mo31819a(file, DexFile.loadDex(file.getPath(), m31822a(file), 0));
            }
            return objArr;
        }
    }

    /* renamed from: b.t.a$b */
    /* loaded from: classes-dex2jar.jar:b/t/a$b.class */
    public static final class C1886b {
        /* renamed from: a */
        public static void m31818a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = C1880a.m31827b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            C1880a.m31825b(obj, "dexElements", m31817a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field b = C1880a.m31827b(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) b.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    iOExceptionArr = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr, arrayList.size(), iOExceptionArr2.length);
                }
                b.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        /* renamed from: a */
        public static Object[] m31817a(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) C1880a.m31826b(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* renamed from: b.t.a$c */
    /* loaded from: classes-dex2jar.jar:b/t/a$c.class */
    public static final class C1887c {
        /* renamed from: a */
        public static void m31816a(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field b = C1880a.m31827b(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) b.get(classLoader));
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
            b.set(classLoader, sb.toString());
            C1880a.m31825b(classLoader, "mPaths", strArr);
            C1880a.m31825b(classLoader, "mFiles", fileArr);
            C1880a.m31825b(classLoader, "mZips", zipFileArr);
            C1880a.m31825b(classLoader, "mDexs", dexFileArr);
        }
    }

    /* renamed from: a */
    public static File m31835a(Context context, File file, String str) throws IOException {
        File file2;
        File file3 = new File(file, DynamicLoaderFactory.CODE_CACHE_DIR);
        try {
            m31834a(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), DynamicLoaderFactory.CODE_CACHE_DIR);
            m31834a(file2);
        }
        File file4 = new File(file2, str);
        m31834a(file4);
        return file4;
    }

    /* renamed from: a */
    public static void m31837a(Context context) throws Exception {
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

    /* renamed from: a */
    public static void m31836a(Context context, File file, File file2, String str, String str2, boolean z) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        synchronized (f7440a) {
            if (!f7440a.contains(file)) {
                f7440a.add(file);
                if (Build.VERSION.SDK_INT > 20) {
                    Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
                }
                ClassLoader c = m31824c(context);
                if (c != null) {
                    m31837a(context);
                    File a = m31835a(context, file2, str);
                    MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, a);
                    IOException e = null;
                    try {
                        m31833a(c, a, multiDexExtractor.m37632a(context, str2, false));
                    } catch (IOException e2) {
                        if (z) {
                            Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e2);
                            m31833a(c, a, multiDexExtractor.m37632a(context, str2, true));
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

    /* renamed from: a */
    public static void m31834a(File file) throws IOException {
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

    /* renamed from: a */
    public static void m31833a(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (!list.isEmpty()) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                C1886b.m31818a(classLoader, list, file);
            } else if (i >= 14) {
                C1881a.m31821a(classLoader, list);
            } else {
                C1887c.m31816a(classLoader, list);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r0 >= 1) goto L_0x006b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m31829a(java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: p012b.p119t.C1880a.m31829a(java.lang.String):boolean");
    }

    /* renamed from: b */
    public static ApplicationInfo m31828b(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    /* renamed from: b */
    public static Field m31827b(Object obj, String str) throws NoSuchFieldException {
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

    /* renamed from: b */
    public static Method m31826b(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
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

    /* renamed from: b */
    public static void m31825b(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field b = m31827b(obj, str);
        Object[] objArr2 = (Object[]) b.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        b.set(obj, objArr3);
    }

    /* renamed from: c */
    public static ClassLoader m31824c(Context context) {
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

    /* renamed from: d */
    public static void m31823d(Context context) {
        Log.i("MultiDex", "Installing application");
        if (f7441b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (Build.VERSION.SDK_INT >= 4) {
            try {
                ApplicationInfo b = m31828b(context);
                if (b == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                m31836a(context, new File(b.sourceDir), new File(b.dataDir), "secondary-dexes", "", true);
                Log.i("MultiDex", "install done");
            } catch (Exception e) {
                Log.e("MultiDex", "MultiDex installation failure", e);
                throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
            }
        } else {
            throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
        }
    }
}
