package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecz.class */
public final class ecz {

    /* renamed from: a */
    private final Collection<ect<?>> f16296a = new ArrayList();

    /* renamed from: b */
    private final Collection<ect<String>> f16297b = new ArrayList();

    /* renamed from: c */
    private final Collection<ect<String>> f16298c = new ArrayList();

    /* renamed from: a */
    public final List<String> m7889a() {
        ArrayList arrayList = new ArrayList();
        for (ect<String> ectVar : this.f16297b) {
            String str = (String) dyx.m8158e().m7876a(ectVar);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(C2851c.m11526a());
        return arrayList;
    }

    /* renamed from: a */
    public final void m7888a(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (ect<?> ectVar : this.f16296a) {
            if (ectVar.m7891c() == 1) {
                ectVar.mo7882a(editor, (SharedPreferences.Editor) ectVar.mo7879a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            C3645yb.m6749c("Flag Json is null.");
        }
    }

    /* renamed from: a */
    public final void m7887a(ect ectVar) {
        this.f16296a.add(ectVar);
    }

    /* renamed from: b */
    public final List<String> m7886b() {
        List<String> m7889a = m7889a();
        for (ect<String> ectVar : this.f16298c) {
            String str = (String) dyx.m8158e().m7876a(ectVar);
            if (!TextUtils.isEmpty(str)) {
                m7889a.add(str);
            }
        }
        m7889a.addAll(C2851c.m11524b());
        return m7889a;
    }

    /* renamed from: b */
    public final void m7885b(ect<String> ectVar) {
        this.f16297b.add(ectVar);
    }

    /* renamed from: c */
    public final void m7884c(ect<String> ectVar) {
        this.f16298c.add(ectVar);
    }
}
