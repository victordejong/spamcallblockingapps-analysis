package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/b.class */
public abstract class AbstractC8365b {
    /* renamed from: a */
    public static AbstractC8365b m3786a(long j, Map<String, AssetPackState> map) {
        return new C8366b0(j, map);
    }

    /* renamed from: b */
    public static AbstractC8365b m3785b(Bundle bundle, C8415n0 c8415n0) {
        return m3784c(bundle, c8415n0, new ArrayList());
    }

    /* renamed from: c */
    public static AbstractC8365b m3784c(Bundle bundle, C8415n0 c8415n0, List<String> list) {
        return m3783d(bundle, c8415n0, list, C8442u.f37940a);
    }

    /* renamed from: d */
    private static AbstractC8365b m3783d(Bundle bundle, C8415n0 c8415n0, List<String> list, AbstractC8438t abstractC8438t) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            hashMap.put(str, AssetPackState.m3794e(bundle, str, c8415n0, abstractC8438t));
        }
        for (String str2 : list) {
            hashMap.put(str2, AssetPackState.m3795d(str2, 4, 0, 0L, 0L, 0.0d, 1, ""));
        }
        return m3786a(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    /* renamed from: e */
    public abstract Map<String, AssetPackState> mo3782e();

    /* renamed from: f */
    public abstract long mo3781f();
}
