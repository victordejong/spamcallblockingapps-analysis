package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cho.class */
public final class cho {

    /* renamed from: a */
    private final Pattern f13069a;

    public cho() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) dyx.m8158e().m7876a(edi.f16505dE));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f13069a = pattern;
    }

    /* renamed from: a */
    public final String m11300a(String str) {
        String str2 = null;
        if (this.f13069a != null) {
            if (str == null) {
                str2 = null;
            } else {
                Matcher matcher = this.f13069a.matcher(str);
                str2 = null;
                if (matcher.find()) {
                    str2 = matcher.group();
                }
            }
        }
        return str2;
    }
}
