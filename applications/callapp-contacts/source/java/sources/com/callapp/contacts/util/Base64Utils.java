package com.callapp.contacts.util;

import com.callapp.common.util.AESUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/Base64Utils.class */
public class Base64Utils implements AESUtils.IBase64 {

    /* renamed from: a */
    private static final Base64Utils f27686a = new Base64Utils();

    public static Base64Utils getInstance() {
        return f27686a;
    }

    @Override // com.callapp.common.util.AESUtils.IBase64
    /* renamed from: a */
    public final String mo27613a(byte[] bArr) {
        return Base64.m26005a(bArr);
    }

    @Override // com.callapp.common.util.AESUtils.IBase64
    /* renamed from: a */
    public final byte[] mo27614a(String str) {
        return Base64.m26006a(str);
    }
}
