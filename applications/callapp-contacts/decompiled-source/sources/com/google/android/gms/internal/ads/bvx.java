package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvx.class */
public final class bvx {

    /* renamed from: a  reason: collision with root package name */
    final f f25235a;

    /* renamed from: b  reason: collision with root package name */
    final bvz f25236b;

    /* renamed from: d  reason: collision with root package name */
    final bso f25238d;
    private final List<String> e = Collections.synchronizedList(new ArrayList());

    /* renamed from: c  reason: collision with root package name */
    final boolean f25237c = ((Boolean) ekb.e().a(aq.eo)).booleanValue();

    public bvx(f fVar, bvz bvzVar, bso bsoVar) {
        this.f25235a = fVar;
        this.f25236b = bvzVar;
        this.f25238d = bsoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bvx bvxVar, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        bvxVar.e.add(str3);
    }

    public final String a() {
        return TextUtils.join("_", this.e);
    }
}
