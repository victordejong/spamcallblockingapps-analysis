package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C8505n0;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.google.android.play.core.assetpacks.y1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/y1.class */
final class C8457y1 {

    /* renamed from: a */
    private static final Pattern f37991a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* renamed from: a */
    public static List<File> m3610a(File file, File file2) {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(C8454x1.f37987a);
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            fileArr = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split("-")[0]);
                if (parseInt > listFiles.length || fileArr[parseInt] != null) {
                    throw new C8369bk("Metadata folder ordering corrupt.");
                }
                fileArr[parseInt] = file3;
            }
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    C8368b2 m3767a = new C8375d0(fileInputStream).m3767a();
                    if (m3767a.m3777d() == null) {
                        throw new C8369bk("Metadata files corrupt. Could not read local file header.");
                    }
                    File file5 = new File(file, m3767a.m3777d());
                    if (!file5.exists()) {
                        throw new C8369bk(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                    }
                    arrayList.add(file5);
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        C8505n0.m3487a(th, th2);
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
