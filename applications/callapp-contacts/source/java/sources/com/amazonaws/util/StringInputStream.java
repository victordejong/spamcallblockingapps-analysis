package com.amazonaws.util;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/StringInputStream.class */
public class StringInputStream extends ByteArrayInputStream {

    /* renamed from: a */
    private final String f12512a;

    public StringInputStream(String str) throws UnsupportedEncodingException {
        super(str.getBytes(StringUtils.f12513a));
        this.f12512a = str;
    }
}
