package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C15034ay;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.google.android.play.core.assetpacks.ca */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ca.class */
final class C14954ca {

    /* renamed from: a */
    private static final Pattern f54593a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* renamed from: a */
    public static List<File> m9714a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(C14952bz.f54592a);
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            fileArr = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split(VerificationLanguage.REGION_PREFIX)[0]);
                if (parseInt > listFiles.length || fileArr[parseInt] != null) {
                    throw new C14911al("Metadata folder ordering corrupt.");
                }
                fileArr[parseInt] = file3;
            }
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    C14957cd m9786a = new C14904ae(fileInputStream).m9786a();
                    if (m9786a.f54600a == null) {
                        throw new C14911al("Metadata files corrupt. Could not read local file header.");
                    }
                    File file5 = new File(file, m9786a.f54600a);
                    if (!file5.exists()) {
                        throw new C14911al(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                    }
                    arrayList.add(file5);
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        C15034ay.m9577a(th, th2);
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
