package com.amazonaws.util;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/StringInputStream.class */
public class StringInputStream extends ByteArrayInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final String f6919a;

    public StringInputStream(String str) throws UnsupportedEncodingException {
        super(str.getBytes(StringUtils.f6920a));
        this.f6919a = str;
    }
}
