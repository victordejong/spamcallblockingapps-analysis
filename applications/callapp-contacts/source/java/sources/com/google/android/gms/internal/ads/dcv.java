package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcv.class */
public final class dcv<KeyFormatProtoT extends dot, KeyProtoT extends dot> {

    /* renamed from: a */
    private final dcx<KeyFormatProtoT, KeyProtoT> f46950a;

    public dcv(dcx<KeyFormatProtoT, KeyProtoT> dcxVar) {
        this.f46950a = dcxVar;
    }

    /* renamed from: a */
    public final KeyProtoT m16856a(dlw dlwVar) throws GeneralSecurityException, zzenn {
        KeyFormatProtoT mo16799a = this.f46950a.mo16799a(dlwVar);
        this.f46950a.mo16798a((dcx<KeyFormatProtoT, KeyProtoT>) mo16799a);
        return this.f46950a.mo16797b(mo16799a);
    }
}
