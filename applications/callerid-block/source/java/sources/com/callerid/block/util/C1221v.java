package com.callerid.block.util;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.callerid.block.util.v */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/v.class */
public class C1221v {
    /* renamed from: a */
    public static SpannableString m9540a(Context context, String str, String str2) {
        SpannableString spannableString = new SpannableString(str);
        if (str2 != null) {
            try {
                if (!"".equals(str2)) {
                    int m9636a = C1205p0.m9636a(context, R$attr.color_action, R$color.colorPrimary);
                    Matcher matcher = Pattern.compile(str2.replaceAll("\\+", "")).matcher(spannableString);
                    while (matcher.find()) {
                        spannableString.setSpan(new ForegroundColorSpan(m9636a), matcher.start(), matcher.end(), 33);
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
