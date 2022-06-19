package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.mf3;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u13.class */
public abstract class u13<KeyFormatProtoT extends mf3, KeyT> {

    /* renamed from: a */
    private final Class<KeyFormatProtoT> f30476a;

    public u13(Class<KeyFormatProtoT> cls) {
        this.f30476a = cls;
    }

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m10427a() {
        return this.f30476a;
    }

    /* renamed from: b */
    public abstract void mo8543b(KeyFormatProtoT keyformatprotot);

    /* renamed from: c */
    public abstract KeyFormatProtoT mo8542c(zzgex zzgexVar);

    /* renamed from: d */
    public abstract KeyT mo8541d(KeyFormatProtoT keyformatprotot);

    /* renamed from: e */
    public Map<String, t13<KeyFormatProtoT>> mo8952e() {
        return Collections.emptyMap();
    }
}
