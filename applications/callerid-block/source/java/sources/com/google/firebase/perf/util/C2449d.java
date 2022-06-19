package com.google.firebase.perf.util;

import android.content.Context;
import android.content.res.Resources;
import com.google.firebase.perf.f.a;
import java.net.URI;
/* renamed from: com.google.firebase.perf.util.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/d.class */
public class C2449d {

    /* renamed from: a */
    private static String[] f10708a;

    /* renamed from: a */
    public static boolean m3570a(URI uri, Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("firebase_performance_whitelisted_domains", "array", context.getPackageName());
        if (identifier == 0) {
            return true;
        }
        a.e().f("Detected domain allowlist, only allowlisted domains will be measured.");
        if (f10708a == null) {
            f10708a = resources.getStringArray(identifier);
        }
        String host = uri.getHost();
        if (host == null) {
            return true;
        }
        for (String str : f10708a) {
            if (host.contains(str)) {
                return true;
            }
        }
        return false;
    }
}
