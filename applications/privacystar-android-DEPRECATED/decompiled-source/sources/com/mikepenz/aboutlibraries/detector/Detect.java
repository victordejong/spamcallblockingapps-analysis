package com.mikepenz.aboutlibraries.detector;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.mikepenz.aboutlibraries.entity.Library;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/detector/Detect.class */
public class Detect {
    public static List<Library> detect(Context context, List<Library> list) {
        ArrayList arrayList = new ArrayList();
        for (Library library : list) {
            if (!TextUtils.isEmpty(library.getClassPath())) {
                try {
                    if (Class.forName(library.getClassPath(), false, context.createPackageContext(context.getPackageName(), 3).getClassLoader()) != null) {
                        arrayList.add(library);
                    }
                } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
                }
            }
        }
        return arrayList;
    }
}
