package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.qd2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r02.class */
public abstract class r02<KeyFormatProtoT extends qd2, KeyT> {

    /* renamed from: a */
    private final Class<KeyFormatProtoT> f8287a;

    public r02(Class<KeyFormatProtoT> cls) {
        this.f8287a = cls;
    }

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m6029a() {
        return this.f8287a;
    }

    /* renamed from: b */
    public abstract void m6028b(KeyFormatProtoT keyformatprotot);

    /* renamed from: c */
    public abstract KeyFormatProtoT m6027c(zzesf zzesfVar);

    /* renamed from: d */
    public abstract KeyT m6026d(KeyFormatProtoT keyformatprotot);
}
