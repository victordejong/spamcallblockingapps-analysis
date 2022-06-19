package com.allinone.callerid.util;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.allinone.callerid.R$attr;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.allinone.callerid.util.b0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/b0.class */
public class C3713b0 {
    /* renamed from: a */
    public static SpannableString m24458a(Context context, String str, String str2) {
        SpannableString spannableString = new SpannableString(str);
        if (str2 != null) {
            try {
                if (!"".equals(str2)) {
                    int m24432a = C3719c1.m24432a(context, R$attr.color_action, 2131099706);
                    Matcher matcher = Pattern.compile(str2.replaceAll("\\+", "")).matcher(spannableString);
                    while (matcher.find()) {
                        spannableString.setSpan(new ForegroundColorSpan(m24432a), matcher.start(), matcher.end(), 33);
                    }
                    return spannableString;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return spannableString;
    }
}
