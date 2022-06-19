package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kk2.class */
public final class kk2 {

    /* renamed from: a */
    private final Pattern f25240a;

    public kk2() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) C7192yr.m8714c().m14263c(C6679kw.f25684e5));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f25240a = pattern;
    }

    /* renamed from: a */
    public final String m13870a(String str) {
        Pattern pattern = this.f25240a;
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
