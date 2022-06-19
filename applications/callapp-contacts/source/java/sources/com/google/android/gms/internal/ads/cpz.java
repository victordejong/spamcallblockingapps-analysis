package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpz.class */
public final class cpz {

    /* renamed from: a */
    private final Pattern f46367a;

    public cpz() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) ekb.m14831e().m18571a(C12187aq.f42891ep));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f46367a = pattern;
    }

    /* renamed from: a */
    public final String m17344a(String str) {
        Pattern pattern = this.f46367a;
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
