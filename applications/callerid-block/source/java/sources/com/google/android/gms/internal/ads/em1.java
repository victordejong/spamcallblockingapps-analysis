package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/em1.class */
public final class em1 {

    /* renamed from: a */
    private final Pattern f6422a;

    public em1() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) C1674c.m7906c().m6878b(C1842m3.f7494r4));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f6422a = pattern;
    }

    /* renamed from: a */
    public final String m7608a(String str) {
        Pattern pattern = this.f6422a;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group();
    }
}
