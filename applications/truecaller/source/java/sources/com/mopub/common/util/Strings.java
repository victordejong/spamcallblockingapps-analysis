package com.mopub.common.util;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Strings.class */
public class Strings {
    public static String fromStream(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 == -1) {
                inputStream.close();
                return sb.toString();
            }
            sb.append(new String(bArr, 0, i2));
            i = inputStream.read(bArr);
        }
    }

    public static String getDelimitedString(Object obj, String str) {
        if (!(obj instanceof List)) {
            return "";
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            return "";
        }
        if (str == null) {
            str = ", ";
        }
        return TextUtils.join(str, list);
    }
}
