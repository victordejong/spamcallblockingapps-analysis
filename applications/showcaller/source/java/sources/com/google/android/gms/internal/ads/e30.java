package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e30.class */
public final class e30 implements n20<Object> {

    /* renamed from: a */
    private final d30 f21991a;

    public e30(d30 d30Var) {
        this.f21991a = d30Var;
    }

    /* renamed from: b */
    public static void m15592b(wn0 wn0Var, d30 d30Var) {
        wn0Var.mo7899l0("/reward", new e30(d30Var));
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        zzccl zzcclVar;
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.f21991a.zza();
                return;
            } else if (!"video_complete".equals(str)) {
                return;
            } else {
                this.f21991a.mo8473c();
                return;
            }
        }
        try {
            int parseInt = Integer.parseInt(map.get("amount"));
            String str2 = map.get("type");
            zzcclVar = null;
            if (!TextUtils.isEmpty(str2)) {
                zzcclVar = new zzccl(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            ei0.m15463g("Unable to parse reward amount.", e);
            zzcclVar = null;
        }
        this.f21991a.mo8472v(zzcclVar);
    }
}
