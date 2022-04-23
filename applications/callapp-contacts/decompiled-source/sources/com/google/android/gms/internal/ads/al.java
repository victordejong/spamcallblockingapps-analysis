package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/al.class */
public final class al {

    /* renamed from: a  reason: collision with root package name */
    final Collection<af<?>> f23514a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final Collection<af<String>> f23515b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    final Collection<af<String>> f23516c = new ArrayList();

    public final List<String> a() {
        ArrayList arrayList = new ArrayList();
        for (af<String> afVar : this.f23515b) {
            String str = (String) ekb.e().a(afVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        av.a(arrayList2, bz.a("gad:dynamite_module:experiment_id", ""));
        av.a(arrayList2, cn.f26098a);
        av.a(arrayList2, cn.f26099b);
        av.a(arrayList2, cn.f26100c);
        av.a(arrayList2, cn.f26101d);
        av.a(arrayList2, cn.e);
        av.a(arrayList2, cn.k);
        av.a(arrayList2, cn.f);
        av.a(arrayList2, cn.g);
        av.a(arrayList2, cn.h);
        av.a(arrayList2, cn.i);
        av.a(arrayList2, cn.j);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public final void a(SharedPreferences.Editor editor, JSONObject jSONObject) {
        for (af<?> afVar : this.f23514a) {
            if (afVar.f23213a == 1) {
                afVar.a(editor, (SharedPreferences.Editor) afVar.a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            za.zzex("Flag Json is null.");
        }
    }
}
