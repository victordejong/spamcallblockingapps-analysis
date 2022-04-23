package com.callapp.contacts.util;

import android.os.Build;
import android.text.Html;
import android.text.Spannable;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import com.callapp.framework.util.StringUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/HtmlUtils.class */
public class HtmlUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f15887a = Pattern.compile("\\r|\\n|\\xA0");

    private HtmlUtils() {
    }

    public static String a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        String obj = Html.fromHtml(str).toString();
        String str2 = obj;
        if (StringUtils.b((CharSequence) obj)) {
            Matcher matcher = f15887a.matcher(obj);
            if (matcher != null) {
                obj = matcher.replaceAll(org.apache.commons.lang3.StringUtils.SPACE);
            }
            str2 = obj.trim();
        }
        return str2;
    }

    public static Spannable b(String str) {
        URLSpan[] uRLSpanArr;
        if (!StringUtils.b((CharSequence) str)) {
            str = "";
        }
        Spannable spannable = (Spannable) Html.fromHtml(str);
        for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
            spannable.setSpan(new UnderlineSpan() { // from class: com.callapp.contacts.util.HtmlUtils.1
                @Override // android.text.style.UnderlineSpan, android.text.style.CharacterStyle
                public final void updateDrawState(TextPaint textPaint) {
                    textPaint.setUnderlineText(false);
                }
            }, spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 0);
        }
        return spannable;
    }

    public static Spanned c(String str) {
        if (!StringUtils.b((CharSequence) str)) {
            str = "";
        }
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 63) : Html.fromHtml(str);
    }
}
