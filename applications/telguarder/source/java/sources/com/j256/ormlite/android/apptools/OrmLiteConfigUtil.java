package com.j256.ormlite.android.apptools;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.p017db.SqliteAndroidDatabaseType;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/apptools/OrmLiteConfigUtil.class */
public class OrmLiteConfigUtil {
    protected static final String RAW_DIR_NAME = "raw";
    protected static final String RESOURCE_DIR_NAME = "res";
    protected static int maxFindSourceLevel = 20;
    private static final DatabaseType databaseType = new SqliteAndroidDatabaseType();
    private static final ClassComparator classComparator = new ClassComparator();

    /* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator.class */
    public static class ClassComparator implements Comparator<Class<?>> {
        private ClassComparator() {
        }

        public int compare(Class<?> cls, Class<?> cls2) {
            return cls.getName().compareTo(cls2.getName());
        }
    }

    private static boolean classHasAnnotations(Class<?> cls) {
        Field[] declaredFields;
        while (cls != null) {
            if (cls.getAnnotation(DatabaseTable.class) != null) {
                return true;
            }
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.getAnnotation(DatabaseField.class) != null || field.getAnnotation(ForeignCollectionField.class) != null) {
                        return true;
                    }
                }
                try {
                    cls = cls.getSuperclass();
                } catch (Throwable th) {
                    System.err.println("Could not get super class for: " + cls);
                    System.err.println("     " + th);
                    return false;
                }
            } catch (Throwable th2) {
                System.err.println("Could not load get delcared fields from: " + cls);
                System.err.println("     " + th2);
                return false;
            }
        }
        return false;
    }

    private static void findAnnotatedClasses(List<Class<?>> list, File file, int i) throws SQLException, IOException {
        File[] listFiles;
        Class<?>[] declaredClasses;
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                if (i < maxFindSourceLevel) {
                    findAnnotatedClasses(list, file2, i + 1);
                }
            } else if (file2.getName().endsWith(".java")) {
                String packageOfClass = getPackageOfClass(file2);
                if (packageOfClass == null) {
                    System.err.println("Could not find package name for: " + file2);
                } else {
                    String name = file2.getName();
                    try {
                        Class<?> cls = Class.forName(packageOfClass + "." + name.substring(0, name.length() - 5));
                        if (classHasAnnotations(cls)) {
                            list.add(cls);
                        }
                        try {
                            for (Class<?> cls2 : cls.getDeclaredClasses()) {
                                if (classHasAnnotations(cls2)) {
                                    list.add(cls2);
                                }
                            }
                        } catch (Throwable th) {
                            System.err.println("Could not load inner classes for: " + cls);
                            System.err.println("     " + th);
                        }
                    } catch (Throwable th2) {
                        System.err.println("Could not load class file for: " + file2);
                        System.err.println("     " + th2);
                    }
                }
            }
        }
    }

    protected static File findRawDir(File file) {
        for (int i = 0; file != null && i < 20; i++) {
            File findResRawDir = findResRawDir(file);
            if (findResRawDir != null) {
                return findResRawDir;
            }
            file = file.getParentFile();
        }
        return null;
    }

    private static File findResRawDir(File file) {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.getName().equals(RESOURCE_DIR_NAME) && file2.isDirectory()) {
                File[] listFiles2 = file2.listFiles(new FileFilter() { // from class: com.j256.ormlite.android.apptools.OrmLiteConfigUtil.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file3) {
                        return file3.getName().equals(OrmLiteConfigUtil.RAW_DIR_NAME) && file3.isDirectory();
                    }
                });
                if (listFiles2.length == 1) {
                    return listFiles2[0];
                }
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    private static String getPackageOfClass(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return null;
                } else if (readLine.contains("package")) {
                    String[] split = readLine.split("[ \t;]");
                    if (split.length > 1 && split[0].equals("package")) {
                        String str = split[1];
                        bufferedReader.close();
                        return str;
                    }
                }
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
    }

    public static void main(String[] strArr) throws Exception {
        boolean z;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= strArr.length || !strArr[i].equals("-s")) {
                break;
            }
            i++;
            z2 = true;
        }
        if (i == strArr.length - 1) {
            writeConfigFile(strArr[i], z);
            return;
        }
        throw new IllegalArgumentException("Usage: OrmLiteConfigUtil [-s] config-file-name");
    }

    public static void writeConfigFile(File file) throws SQLException, IOException {
        writeConfigFile(file, false);
    }

    public static void writeConfigFile(File file, File file2) throws SQLException, IOException {
        writeConfigFile(file, file2, false);
    }

    public static void writeConfigFile(File file, File file2, boolean z) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file2, 0);
        writeConfigFile(file, (Class[]) arrayList.toArray(new Class[arrayList.size()]), z);
    }

    public static void writeConfigFile(File file, boolean z) throws SQLException, IOException {
        writeConfigFile(file, new File("."), z);
    }

    public static void writeConfigFile(File file, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(file, clsArr, false);
    }

    public static void writeConfigFile(File file, Class<?>[] clsArr, boolean z) throws SQLException, IOException {
        PrintStream printStream = System.out;
        printStream.println("Writing configurations to " + file.getAbsolutePath());
        writeConfigFile(new FileOutputStream(file), clsArr, z);
    }

    public static void writeConfigFile(OutputStream outputStream, File file) throws SQLException, IOException {
        writeConfigFile(outputStream, file, false);
    }

    public static void writeConfigFile(OutputStream outputStream, File file, boolean z) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file, 0);
        writeConfigFile(outputStream, (Class[]) arrayList.toArray(new Class[arrayList.size()]), z);
    }

    public static void writeConfigFile(OutputStream outputStream, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(outputStream, clsArr, false);
    }

    public static void writeConfigFile(OutputStream outputStream, Class<?>[] clsArr, boolean z) throws SQLException, IOException {
        Class<?>[] clsArr2 = clsArr;
        if (z) {
            clsArr2 = new Class[clsArr.length];
            System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
            Arrays.sort(clsArr2, classComparator);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 4096);
        try {
            writeHeader(bufferedWriter);
            for (Class<?> cls : clsArr2) {
                writeConfigForTable(bufferedWriter, cls, z);
            }
            System.out.println("Done.");
        } finally {
            bufferedWriter.close();
        }
    }

    public static void writeConfigFile(String str) throws SQLException, IOException {
        writeConfigFile(str, false);
    }

    public static void writeConfigFile(String str, boolean z) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, new File("."), 0);
        writeConfigFile(str, (Class[]) arrayList.toArray(new Class[arrayList.size()]), z);
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(str, clsArr, false);
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr, boolean z) throws SQLException, IOException {
        File findRawDir = findRawDir(new File("."));
        if (findRawDir == null) {
            System.err.println("Could not find raw directory which is typically in the res directory");
        } else {
            writeConfigFile(new File(findRawDir, str), clsArr, z);
        }
    }

    private static void writeConfigForTable(BufferedWriter bufferedWriter, Class<?> cls, boolean z) throws SQLException, IOException {
        String extractTableName = DatabaseTableConfig.extractTableName(databaseType, cls);
        ArrayList arrayList = new ArrayList();
        for (Class<? super Object> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                for (Field field : cls2.getDeclaredFields()) {
                    DatabaseFieldConfig fromField = DatabaseFieldConfig.fromField(databaseType, extractTableName, field);
                    if (fromField != null) {
                        arrayList.add(fromField);
                    }
                }
            } catch (Error e) {
                System.err.println("Skipping " + cls + " because we got an error finding its definition: " + e.getMessage());
                return;
            }
        }
        if (arrayList.isEmpty()) {
            System.out.println("Skipping " + cls + " because no annotated fields found");
            return;
        }
        DatabaseTableConfigLoader.write(bufferedWriter, new DatabaseTableConfig(cls, extractTableName, arrayList));
        bufferedWriter.append("#################################");
        bufferedWriter.newLine();
        System.out.println("Wrote config for " + cls);
    }

    private static void writeHeader(BufferedWriter bufferedWriter) throws IOException {
        bufferedWriter.append('#');
        bufferedWriter.newLine();
        bufferedWriter.append("# generated on ").append((CharSequence) new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date()));
        bufferedWriter.newLine();
        bufferedWriter.append('#');
        bufferedWriter.newLine();
    }
}
