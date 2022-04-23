package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/c.class */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(Bundle bundle, ap apVar, List<String> list, u uVar) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            hashMap.put(str, b.a(bundle, str, apVar, uVar));
        }
        for (String str2 : list) {
            hashMap.put(str2, b.a(str2, 4, 0, 0L, 0L, 0.0d, 1, ""));
        }
        return new ac(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    public abstract long a();

    public abstract Map<String, b> b();
}
