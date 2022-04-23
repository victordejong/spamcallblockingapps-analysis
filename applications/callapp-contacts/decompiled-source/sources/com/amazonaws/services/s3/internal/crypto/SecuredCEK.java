package com.amazonaws.services.s3.internal.crypto;

import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/SecuredCEK.class */
class SecuredCEK {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f6878a;

    /* renamed from: b  reason: collision with root package name */
    final String f6879b;

    /* renamed from: c  reason: collision with root package name */
    final Map<String, String> f6880c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecuredCEK(byte[] bArr, String str, Map<String, String> map) {
        this.f6878a = bArr;
        this.f6879b = str;
        this.f6880c = Collections.unmodifiableMap(new TreeMap(map));
    }
}
