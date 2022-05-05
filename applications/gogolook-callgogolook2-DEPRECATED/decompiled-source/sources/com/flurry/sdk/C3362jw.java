package com.flurry.sdk;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.jw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jw.class */
public class C3362jw {

    /* renamed from: a */
    public final Pattern f5750a = Pattern.compile(".*?(%\\{\\w+\\}).*?");

    /* renamed from: a */
    public static boolean m32593a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("%{" + str + CssParser.BLOCK_END);
    }

    /* renamed from: a */
    public final String m32594a(String str) {
        Matcher matcher = this.f5750a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }
}
