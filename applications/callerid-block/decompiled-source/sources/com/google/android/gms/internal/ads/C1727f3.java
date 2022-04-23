package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.f3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f3.class */
public final class C1727f3 {

    /* renamed from: a */
    private final Collection<AbstractC1714e3<?>> f6471a = new ArrayList();

    /* renamed from: b */
    private final Collection<AbstractC1714e3<String>> f6472b = new ArrayList();

    /* renamed from: c */
    private final Collection<AbstractC1714e3<String>> f6473c = new ArrayList();

    /* renamed from: a */
    public final void m7577a(AbstractC1714e3 e3Var) {
        this.f6471a.add(e3Var);
    }

    /* renamed from: b */
    public final void m7576b(AbstractC1714e3<String> e3Var) {
        this.f6472b.add(e3Var);
    }

    /* renamed from: c */
    public final void m7575c(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (AbstractC1714e3<?> e3Var : this.f6471a) {
            if (e3Var.m7663m() == 1) {
                e3Var.m7674b(editor, e3Var.m7673c(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            C1894po.m6183c("Flag Json is null.");
        }
    }

    /* renamed from: d */
    public final List<String> m7574d() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC1714e3<String> e3Var : this.f6472b) {
            String str = (String) C1674c.m7906c().m6878b(e3Var);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(C1855n3.m6471a());
        return arrayList;
    }

    /* renamed from: e */
    public final List<String> m7573e() {
        List<String> d = m7574d();
        for (AbstractC1714e3<String> e3Var : this.f6473c) {
            String str = (String) C1674c.m7906c().m6878b(e3Var);
            if (!TextUtils.isEmpty(str)) {
                d.add(str);
            }
        }
        d.addAll(C1855n3.m6470b());
        return d;
    }
}
