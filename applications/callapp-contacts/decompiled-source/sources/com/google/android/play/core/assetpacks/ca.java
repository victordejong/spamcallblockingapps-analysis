package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ay;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ca.class */
final class ca {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f31222a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<File> a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(bz.f31221a);
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            fileArr = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split(VerificationLanguage.REGION_PREFIX)[0]);
                if (parseInt > listFiles.length || fileArr[parseInt] != null) {
                    throw new al("Metadata folder ordering corrupt.");
                }
                fileArr[parseInt] = file3;
            }
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    cd a2 = new ae(fileInputStream).a();
                    if (a2.f31229a != null) {
                        File file5 = new File(file, a2.f31229a);
                        if (file5.exists()) {
                            arrayList.add(file5);
                            fileInputStream.close();
                        } else {
                            throw new al(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                        }
                    } else {
                        throw new al("Metadata files corrupt. Could not read local file header.");
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        ay.a(th, th2);
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
