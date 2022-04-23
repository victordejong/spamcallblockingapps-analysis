package com.callapp.contacts.util;

import com.callapp.common.util.AESUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/Base64Utils.class */
public class Base64Utils implements AESUtils.IBase64 {

    /* renamed from: a  reason: collision with root package name */
    private static final Base64Utils f15849a = new Base64Utils();

    public static Base64Utils getInstance() {
        return f15849a;
    }

    @Override // com.callapp.common.util.AESUtils.IBase64
    public final String a(byte[] bArr) {
        return Base64.a(bArr);
    }

    @Override // com.callapp.common.util.AESUtils.IBase64
    public final byte[] a(String str) {
        return Base64.a(str);
    }
}
