package com.amazonaws.services.p101s3.internal.crypto;

import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.SecuredCEK */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/SecuredCEK.class */
class SecuredCEK {

    /* renamed from: a */
    final byte[] f12447a;

    /* renamed from: b */
    final String f12448b;

    /* renamed from: c */
    final Map<String, String> f12449c;

    public SecuredCEK(byte[] bArr, String str, Map<String, String> map) {
        this.f12447a = bArr;
        this.f12448b = str;
        this.f12449c = Collections.unmodifiableMap(new TreeMap(map));
    }
}
