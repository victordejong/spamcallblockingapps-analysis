package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.dw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dw.class */
public final class C6418dw {

    /* renamed from: a */
    private final Collection<AbstractC6381cw<?>> f21889a = new ArrayList();

    /* renamed from: b */
    private final Collection<AbstractC6381cw<String>> f21890b = new ArrayList();

    /* renamed from: c */
    private final Collection<AbstractC6381cw<String>> f21891c = new ArrayList();

    /* renamed from: a */
    public final void m15679a(AbstractC6381cw abstractC6381cw) {
        this.f21889a.add(abstractC6381cw);
    }

    /* renamed from: b */
    public final void m15678b(AbstractC6381cw<String> abstractC6381cw) {
        this.f21890b.add(abstractC6381cw);
    }

    /* renamed from: c */
    public final void m15677c(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (AbstractC6381cw<?> abstractC6381cw : this.f21889a) {
            if (abstractC6381cw.m15985m() == 1) {
                abstractC6381cw.mo8166b(editor, abstractC6381cw.mo8165c(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            ei0.m15467c("Flag Json is null.");
        }
    }

    /* renamed from: d */
    public final List<String> m15676d() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC6381cw<String> abstractC6381cw : this.f21890b) {
            String str = (String) C7192yr.m8714c().m14263c(abstractC6381cw);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(C6716lw.m13414a());
        return arrayList;
    }

    /* renamed from: e */
    public final List<String> m15675e() {
        List<String> m15676d = m15676d();
        for (AbstractC6381cw<String> abstractC6381cw : this.f21891c) {
            String str = (String) C7192yr.m8714c().m14263c(abstractC6381cw);
            if (!TextUtils.isEmpty(str)) {
                m15676d.add(str);
            }
        }
        m15676d.addAll(C6716lw.m13413b());
        return m15676d;
    }
}
