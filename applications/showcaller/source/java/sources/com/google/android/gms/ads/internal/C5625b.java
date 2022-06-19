package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.internal.ads.hf0;
import com.google.android.gms.internal.ads.zzcax;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.ads.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/b.class */
public final class C5625b {

    /* renamed from: a */
    private final Context f18282a;

    /* renamed from: b */
    private boolean f18283b;

    /* renamed from: c */
    private final hf0 f18284c;

    /* renamed from: d */
    private final zzcax f18285d = new zzcax(false, Collections.emptyList());

    public C5625b(Context context, hf0 hf0Var, zzcax zzcaxVar) {
        this.f18282a = context;
        this.f18284c = hf0Var;
    }

    /* renamed from: d */
    private final boolean m18220d() {
        hf0 hf0Var = this.f18284c;
        return (hf0Var != null && hf0Var.mo14676b().f33847i) || this.f18285d.f33821d;
    }

    /* renamed from: a */
    public final void m18223a() {
        this.f18283b = true;
    }

    /* renamed from: b */
    public final boolean m18222b() {
        return !m18220d() || this.f18283b;
    }

    /* renamed from: c */
    public final void m18221c(String str) {
        List<String> list;
        if (!m18220d()) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        hf0 hf0Var = this.f18284c;
        if (hf0Var != null) {
            hf0Var.mo14675c(str2, null, 3);
            return;
        }
        zzcax zzcaxVar = this.f18285d;
        if (!zzcaxVar.f33821d || (list = zzcaxVar.f33822e) == null) {
            return;
        }
        for (String str3 : list) {
            if (!TextUtils.isEmpty(str3)) {
                String replace = str3.replace("{NAVIGATION_URL}", Uri.encode(str2));
                C5667s.m18160d();
                C5679c2.m18061n(this.f18282a, "", replace);
            }
        }
    }
}
