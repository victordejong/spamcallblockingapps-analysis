package com.google.android.exoplayer2.text.p257q;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.text.q.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/d.class */
final class C5370d {
    /* renamed from: a */
    public static void m19488a(SpannableStringBuilder spannableStringBuilder, int i, int i2, C5371e c5371e) {
        if (c5371e.m19477h() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(c5371e.m19477h()), i, i2, 33);
        }
        if (c5371e.m19472m()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c5371e.m19471n()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c5371e.m19474k()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(c5371e.m19482c()), i, i2, 33);
        }
        if (c5371e.m19475j()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(c5371e.m19483b()), i, i2, 33);
        }
        if (c5371e.m19481d() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(c5371e.m19481d()), i, i2, 33);
        }
        if (c5371e.m19476i() != null) {
            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(c5371e.m19476i()), i, i2, 33);
        }
        int m19479f = c5371e.m19479f();
        if (m19479f == 1) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) c5371e.m19480e(), true), i, i2, 33);
        } else if (m19479f == 2) {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(c5371e.m19480e()), i, i2, 33);
        } else if (m19479f != 3) {
        } else {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(c5371e.m19480e() / 100.0f), i, i2, 33);
        }
    }

    /* renamed from: b */
    public static String m19487b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    /* renamed from: c */
    public static void m19486c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    /* renamed from: d */
    public static C5371e m19485d(C5371e c5371e, String[] strArr, Map<String, C5371e> map) {
        if (c5371e == null && strArr == null) {
            return null;
        }
        if (c5371e == null && strArr.length == 1) {
            return map.get(strArr[0]);
        }
        if (c5371e == null && strArr.length > 1) {
            C5371e c5371e2 = new C5371e();
            for (String str : strArr) {
                c5371e2.m19484a(map.get(str));
            }
            return c5371e2;
        } else if (c5371e != null && strArr != null && strArr.length == 1) {
            return c5371e.m19484a(map.get(strArr[0]));
        } else {
            if (c5371e != null && strArr != null && strArr.length > 1) {
                for (String str2 : strArr) {
                    c5371e.m19484a(map.get(str2));
                }
            }
            return c5371e;
        }
    }
}
