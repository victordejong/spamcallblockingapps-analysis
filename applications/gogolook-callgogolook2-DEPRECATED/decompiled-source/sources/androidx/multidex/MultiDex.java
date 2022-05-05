package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import androidx.media2.session.MediaSessionImplBase;
import dalvik.system.DexFile;
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
    public static final String CODE_CACHE_NAME = "code_cache";
    public static final String CODE_CACHE_SECONDARY_FOLDER_NAME = "secondary-dexes";
    public static final int MAX_SUPPORTED_SDK_VERSION = 20;
    public static final int MIN_SDK_VERSION = 4;
    public static final String NO_KEY_PREFIX = "";
    public static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    public static final String TAG = "MultiDex";
    public static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    public static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    public static final Set<File> installedApk = new HashSet();
    public static final boolean IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));

    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14.class */
    public static final class V14 {
        public static final int EXTRACTED_SUFFIX_LENGTH = 4;
        public final ElementConstructor elementConstructor;

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$ElementConstructor.class */
        public interface ElementConstructor {
            Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$ICSElementConstructor.class */
        public static class ICSElementConstructor implements ElementConstructor {
            public final Constructor<?> elementConstructor;

            public ICSElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.elementConstructor.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$JBMR11ElementConstructor.class */
        public static class JBMR11ElementConstructor implements ElementConstructor {
            public final Constructor<?> elementConstructor;

            public JBMR11ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(file, file, dexFile);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V14$JBMR2ElementConstructor.class */
        public static class JBMR2ElementConstructor implements ElementConstructor {
            public final Constructor<?> elementConstructor;

            public JBMR2ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.elementConstructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        public V14() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
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
            this.elementConstructor = elementConstructor;
        }

        public static void install(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            Object[] makeDexElements = new V14().makeDexElements(list);
            try {
                MultiDex.expandFieldArray(obj, "dexElements", makeDexElements);
            } catch (NoSuchFieldException e) {
                MultiDex.expandFieldArray(obj, "pathElements", makeDexElements);
            }
        }

        private Object[] makeDexElements(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            Object[] objArr = new Object[list.size()];
            for (int i = 0; i < objArr.length; i++) {
                File file = (File) list.get(i);
                objArr[i] = this.elementConstructor.newInstance(file, DexFile.loadDex(file.getPath(), optimizedPathFor(file), 0));
            }
            return objArr;
        }

        public static String optimizedPathFor(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - EXTRACTED_SUFFIX_LENGTH) + MultiDexExtractor.DEX_SUFFIX).getPath();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V19.class */
    public static final class V19 {
        public static void install(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            MultiDex.expandFieldArray(obj, "dexElements", makeDexElements(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    IOException iOException = (IOException) it.next();
                }
                Field findField = MultiDex.findField(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) findField.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    iOExceptionArr = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr, arrayList.size(), iOExceptionArr2.length);
                }
                findField.set(obj, iOExceptionArr);
                IOException iOException2 = new IOException("I/O exception during makeDexElement");
                iOException2.initCause((Throwable) arrayList.get(0));
                throw iOException2;
            }
        }

        public static Object[] makeDexElements(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) MultiDex.findMethod(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* renamed from: androidx.multidex.MultiDex$V4 */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDex$V4.class */
    public static final class C1010V4 {
        public static void install(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field findField = MultiDex.findField(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) findField.get(classLoader));
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
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + MultiDexExtractor.DEX_SUFFIX, 0);
            }
            findField.set(classLoader, sb.toString());
            MultiDex.expandFieldArray(classLoader, "mPaths", strArr);
            MultiDex.expandFieldArray(classLoader, "mFiles", fileArr);
            MultiDex.expandFieldArray(classLoader, "mZips", zipFileArr);
            MultiDex.expandFieldArray(classLoader, "mDexs", dexFileArr);
        }
    }

    public static void clearOldDexDir(Context context) throws Exception {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            String str = "Clearing old secondary dex dir (" + file.getPath() + ").";
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                String str2 = "Failed to list secondary dex dir content (" + file.getPath() + ").";
                return;
            }
            for (File file2 : listFiles) {
                String str3 = "Trying to delete old file " + file2.getPath() + " of size " + file2.length();
                if (!file2.delete()) {
                    String str4 = "Failed to delete old file " + file2.getPath();
                } else {
                    String str5 = "Deleted old file " + file2.getPath();
                }
            }
            if (!file.delete()) {
                String str6 = "Failed to delete secondary dex dir " + file.getPath();
                return;
            }
            String str7 = "Deleted old secondary dex dir " + file.getPath();
        }
    }

    public static void doInstallation(Context context, File file, File file2, String str, String str2, boolean z) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        synchronized (installedApk) {
            if (!installedApk.contains(file)) {
                installedApk.add(file);
                if (Build.VERSION.SDK_INT > 20) {
                    String str3 = "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"";
                }
                try {
                    ClassLoader classLoader = context.getClassLoader();
                    if (classLoader == null) {
                        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                        return;
                    }
                    try {
                        clearOldDexDir(context);
                    } catch (Throwable th) {
                    }
                    File dexDir = getDexDir(context, file2, str);
                    MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, dexDir);
                    IOException e = null;
                    try {
                        installSecondaryDexes(classLoader, dexDir, multiDexExtractor.load(context, str2, false));
                    } catch (IOException e2) {
                        if (z) {
                            installSecondaryDexes(classLoader, dexDir, multiDexExtractor.load(context, str2, true));
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
                }
            }
        }
    }

    public static void expandFieldArray(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field findField = findField(obj, str);
        Object[] objArr2 = (Object[]) findField.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        findField.set(obj, objArr3);
    }

    public static Field findField(Object obj, String str) throws NoSuchFieldException {
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

    public static Method findMethod(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
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

    public static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e) {
            return null;
        }
    }

    public static File getDexDir(Context context, File file, String str) throws IOException {
        File file2;
        File file3 = new File(file, "code_cache");
        try {
            mkdirChecked(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), "code_cache");
            mkdirChecked(file2);
        }
        File file4 = new File(file2, str);
        mkdirChecked(file4);
        return file4;
    }

    public static void install(Context context) {
        if (!IS_VM_MULTIDEX_CAPABLE) {
            if (Build.VERSION.SDK_INT >= 4) {
                try {
                    ApplicationInfo applicationInfo = getApplicationInfo(context);
                    if (applicationInfo != null) {
                        doInstallation(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
                    }
                } catch (Exception e) {
                    Log.e("MultiDex", "MultiDex installation failure", e);
                    throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
                }
            } else {
                throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4" + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            }
        }
    }

    public static void installInstrumentation(Context context, Context context2) {
        ApplicationInfo applicationInfo;
        if (!IS_VM_MULTIDEX_CAPABLE) {
            if (Build.VERSION.SDK_INT >= 4) {
                try {
                    ApplicationInfo applicationInfo2 = getApplicationInfo(context);
                    if (applicationInfo2 != null && (applicationInfo = getApplicationInfo(context2)) != null) {
                        String str = context.getPackageName() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM;
                        File file = new File(applicationInfo.dataDir);
                        doInstallation(context2, new File(applicationInfo2.sourceDir), file, str + "secondary-dexes", str, false);
                        doInstallation(context2, new File(applicationInfo.sourceDir), file, "secondary-dexes", "", false);
                    }
                } catch (Exception e) {
                    Log.e("MultiDex", "MultiDex installation failure", e);
                    throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
                }
            } else {
                throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4" + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            }
        }
    }

    public static void installSecondaryDexes(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (!list.isEmpty()) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                V19.install(classLoader, list, file);
            } else if (i >= 14) {
                V14.install(classLoader, list);
            } else {
                C1010V4.install(classLoader, list);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r0 >= 1) goto L_0x0046;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isVMMultidexCapable(java.lang.String r3) {
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
            r0 = r6
            java.lang.String r0 = r0.toString()
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.MultiDex.isVMMultidexCapable(java.lang.String):boolean");
    }

    public static void mkdirChecked(File file) throws IOException {
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
