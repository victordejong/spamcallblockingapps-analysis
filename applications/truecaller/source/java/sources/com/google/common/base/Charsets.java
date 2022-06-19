package com.google.common.base;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/Charsets.class */
public final class Charsets {
    public static final Charset US_ASCII = Charset.forName("US-ASCII");
    public static final Charset UTF_8 = Charset.forName(StringConstant.UTF8);

    static {
        Charset.forName("ISO-8859-1");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-16");
    }
}
