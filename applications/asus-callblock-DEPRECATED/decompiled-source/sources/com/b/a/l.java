package com.b.a;

import b.b;
import b.f;
import com.android.vcard.VCardConfig;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/b/a/l.class */
public final class l {
    public static String a(String str, String str2) {
        try {
            return "Basic " + b.a(f.a((str + ":" + str2).getBytes(VCardConfig.DEFAULT_INTERMEDIATE_CHARSET)).c);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }
}
