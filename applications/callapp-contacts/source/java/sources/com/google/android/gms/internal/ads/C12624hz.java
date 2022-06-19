package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hz.class */
public final class C12624hz implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final AbstractC12623hy f49366a;

    private C12624hz(AbstractC12623hy abstractC12623hy) {
        this.f49366a = abstractC12623hy;
    }

    /* renamed from: a */
    public static void m14601a(adt adtVar, AbstractC12623hy abstractC12623hy) {
        adtVar.mo13772a("/reward", new C12624hz(abstractC12623hy));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        zzavy zzavyVar;
        String str = map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.f49366a.mo14604a();
                return;
            } else if (!"video_complete".equals(str)) {
                return;
            } else {
                this.f49366a.mo14602b();
                return;
            }
        }
        try {
            int parseInt = Integer.parseInt(map.get("amount"));
            String str2 = map.get("type");
            zzavyVar = null;
            if (!TextUtils.isEmpty(str2)) {
                zzavyVar = new zzavy(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            zzd.zzd("Unable to parse reward amount.", e);
            zzavyVar = null;
        }
        this.f49366a.mo14603a(zzavyVar);
    }
}
