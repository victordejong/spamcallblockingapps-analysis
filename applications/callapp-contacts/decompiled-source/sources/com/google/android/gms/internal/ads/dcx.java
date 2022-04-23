package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcx.class */
public abstract class dcx<KeyFormatProtoT extends dot, KeyT> {

    /* renamed from: a  reason: collision with root package name */
    final Class<KeyFormatProtoT> f26733a;

    public dcx(Class<KeyFormatProtoT> cls) {
        this.f26733a = cls;
    }

    public abstract KeyFormatProtoT a(dlw dlwVar) throws zzenn;

    public abstract void a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyT b(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
}
