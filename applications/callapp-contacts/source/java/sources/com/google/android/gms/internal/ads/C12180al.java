package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.al */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/al.class */
public final class C12180al {

    /* renamed from: a */
    final Collection<AbstractC12172af<?>> f42338a = new ArrayList();

    /* renamed from: b */
    final Collection<AbstractC12172af<String>> f42339b = new ArrayList();

    /* renamed from: c */
    final Collection<AbstractC12172af<String>> f42340c = new ArrayList();

    /* renamed from: a */
    public final List<String> m18598a() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC12172af<String> abstractC12172af : this.f42339b) {
            String str = (String) ekb.m14831e().m18571a(abstractC12172af);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        C12198av.m18385a(arrayList2, C12259bz.m17554a("gad:dynamite_module:experiment_id", ""));
        C12198av.m18385a(arrayList2, C12278cn.f46110a);
        C12198av.m18385a(arrayList2, C12278cn.f46111b);
        C12198av.m18385a(arrayList2, C12278cn.f46112c);
        C12198av.m18385a(arrayList2, C12278cn.f46113d);
        C12198av.m18385a(arrayList2, C12278cn.f46114e);
        C12198av.m18385a(arrayList2, C12278cn.f46120k);
        C12198av.m18385a(arrayList2, C12278cn.f46115f);
        C12198av.m18385a(arrayList2, C12278cn.f46116g);
        C12198av.m18385a(arrayList2, C12278cn.f46117h);
        C12198av.m18385a(arrayList2, C12278cn.f46118i);
        C12198av.m18385a(arrayList2, C12278cn.f46119j);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* renamed from: a */
    public final void m18597a(SharedPreferences.Editor editor, JSONObject jSONObject) {
        for (AbstractC12172af<?> abstractC12172af : this.f42338a) {
            if (abstractC12172af.f40143a == 1) {
                abstractC12172af.mo18647a(editor, (SharedPreferences.Editor) abstractC12172af.mo18644a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            C13088za.zzex("Flag Json is null.");
        }
    }
}
