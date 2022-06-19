package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.deg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csw.class */
public abstract class csw<KeyFormatProtoT extends deg, KeyT> {

    /* renamed from: a */
    private final Class<KeyFormatProtoT> f13647a;

    public csw(Class<KeyFormatProtoT> cls) {
        this.f13647a = cls;
    }

    /* renamed from: a */
    public abstract KeyFormatProtoT mo10632a(dbi dbiVar);

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m10725a() {
        return this.f13647a;
    }

    /* renamed from: a */
    public abstract void mo10631a(KeyFormatProtoT keyformatprotot);

    /* renamed from: b */
    public abstract KeyT mo10630b(KeyFormatProtoT keyformatprotot);
}
