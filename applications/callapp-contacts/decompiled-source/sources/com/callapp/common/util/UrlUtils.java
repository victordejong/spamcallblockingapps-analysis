package com.callapp.common.util;

import com.callapp.framework.util.StringUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/UrlUtils.class */
public class UrlUtils {
    public static String a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return str;
        }
        try {
            str = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
        }
        return str;
    }
}
