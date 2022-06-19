package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcx.class */
public abstract class dcx<KeyFormatProtoT extends dot, KeyT> {

    /* renamed from: a */
    final Class<KeyFormatProtoT> f46952a;

    public dcx(Class<KeyFormatProtoT> cls) {
        this.f46952a = cls;
    }

    /* renamed from: a */
    public abstract KeyFormatProtoT mo16799a(dlw dlwVar) throws zzenn;

    /* renamed from: a */
    public abstract void mo16798a(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    /* renamed from: b */
    public abstract KeyT mo16797b(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
}
