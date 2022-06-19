package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.internal.ads.AbstractC1960tl;
import com.google.android.gms.internal.ads.zzavq;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/b.class */
public final class C1379b {

    /* renamed from: a */
    private final Context f5493a;

    /* renamed from: b */
    private boolean f5494b;

    /* renamed from: c */
    private final AbstractC1960tl f5495c;

    /* renamed from: d */
    private final zzavq f5496d = new zzavq(false, Collections.emptyList());

    public C1379b(Context context, AbstractC1960tl abstractC1960tl, zzavq zzavqVar) {
        this.f5493a = context;
        this.f5495c = abstractC1960tl;
    }

    /* renamed from: d */
    private final boolean m8953d() {
        AbstractC1960tl abstractC1960tl = this.f5495c;
        return (abstractC1960tl != null && abstractC1960tl.zza().g) || this.f5496d.b;
    }

    /* renamed from: a */
    public final void m8956a() {
        this.f5494b = true;
    }

    /* renamed from: b */
    public final boolean m8955b() {
        return !m8953d() || this.f5494b;
    }

    /* renamed from: c */
    public final void m8954c(String str) {
        List<String> list;
        if (!m8953d()) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        AbstractC1960tl abstractC1960tl = this.f5495c;
        if (abstractC1960tl != null) {
            abstractC1960tl.m5514a(str2, null, 3);
            return;
        }
        zzavq zzavqVar = this.f5496d;
        if (!zzavqVar.b || (list = zzavqVar.c) == null) {
            return;
        }
        for (String str3 : list) {
            if (!TextUtils.isEmpty(str3)) {
                String replace = str3.replace("{NAVIGATION_URL}", Uri.encode(str2));
                C1407r.m8920d();
                C1433l1.m8755l(this.f5493a, "", replace);
            }
        }
    }
}
