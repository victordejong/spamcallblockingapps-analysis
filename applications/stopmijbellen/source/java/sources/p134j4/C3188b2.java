package p134j4;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: j4.b2 */
/* loaded from: classes-dex2jar.jar:j4/b2.class */
public final class C3188b2 {

    /* renamed from: a */
    public static final Pattern f10736a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* renamed from: a */
    public static List m2560a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(C3184a2.f10720a);
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            fileArr = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split("-")[0]);
                if (parseInt > listFiles.length || fileArr[parseInt] != null) {
                    throw new C3233n0("Metadata folder ordering corrupt.");
                }
                fileArr[parseInt] = file3;
            }
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    AbstractC3200e2 m2555d = new C3198e0(fileInputStream).m2555d();
                    if (((C3190c0) m2555d).f10740a == null) {
                        throw new C3233n0("Metadata files corrupt. Could not read local file header.");
                    }
                    File file5 = new File(file, ((C3190c0) m2555d).f10740a);
                    if (!file5.exists()) {
                        throw new C3233n0(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                    }
                    arrayList.add(file5);
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
