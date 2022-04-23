package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpz.class */
public final class cpz {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f26245a;

    public cpz() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) ekb.e().a(aq.ep));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f26245a = pattern;
    }

    public final String a(String str) {
        Pattern pattern = this.f26245a;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }
}
