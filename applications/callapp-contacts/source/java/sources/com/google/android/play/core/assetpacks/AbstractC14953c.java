package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/c.class */
public abstract class AbstractC14953c {
    /* renamed from: a */
    public static AbstractC14953c m9716a(Bundle bundle, C14915ap c14915ap, List<String> list, AbstractC14994u abstractC14994u) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            hashMap.put(str, AbstractC14926b.m9773a(bundle, str, c14915ap, abstractC14994u));
        }
        for (String str2 : list) {
            hashMap.put(str2, AbstractC14926b.m9772a(str2, 4, 0, 0L, 0L, 0.0d, 1, ""));
        }
        return new C14902ac(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    /* renamed from: a */
    public abstract long mo9717a();

    /* renamed from: b */
    public abstract Map<String, AbstractC14926b> mo9715b();
}
