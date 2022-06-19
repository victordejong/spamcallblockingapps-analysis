package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ac3.class */
public final class ac3 extends ThreadLocal<Mac> {

    /* renamed from: a */
    final /* synthetic */ bc3 f19874a;

    public ac3(bc3 bc3Var) {
        this.f19874a = bc3Var;
    }

    /* renamed from: a */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            nb3<sb3, Mac> nb3Var = nb3.f27066e;
            str = this.f19874a.f20342b;
            Mac m12953b = nb3Var.m12953b(str);
            key = this.f19874a.f20343c;
            m12953b.init(key);
            return m12953b;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
