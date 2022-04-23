package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcv.class */
final class dcv<KeyFormatProtoT extends dot, KeyProtoT extends dot> {

    /* renamed from: a  reason: collision with root package name */
    private final dcx<KeyFormatProtoT, KeyProtoT> f26731a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dcv(dcx<KeyFormatProtoT, KeyProtoT> dcxVar) {
        this.f26731a = dcxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final KeyProtoT a(dlw dlwVar) throws GeneralSecurityException, zzenn {
        KeyFormatProtoT a2 = this.f26731a.a(dlwVar);
        this.f26731a.a((dcx<KeyFormatProtoT, KeyProtoT>) a2);
        return this.f26731a.b(a2);
    }
}
