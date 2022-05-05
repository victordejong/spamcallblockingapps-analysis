package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.k;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cr.class */
final class cr {
    private static be<k.a> a(be<k.a> beVar) {
        try {
            beVar = new be<>(cn.a((Object) a(cn.a(beVar.f4293a))), beVar.f4294b);
        } catch (UnsupportedEncodingException e) {
            an.a("Escape URI: unsupported encoding", e);
        }
        return beVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static be<k.a> a(be<k.a> beVar, int... iArr) {
        for (int i : iArr) {
            if (!(cn.e(beVar.f4293a) instanceof String)) {
                an.a("Escaping can only be applied to strings.");
            } else {
                switch (i) {
                    case 12:
                        beVar = a(beVar);
                        continue;
                    default:
                        an.a(new StringBuilder(39).append("Unsupported Value Escaping: ").append(i).toString());
                        continue;
                }
            }
        }
        return beVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }
}
