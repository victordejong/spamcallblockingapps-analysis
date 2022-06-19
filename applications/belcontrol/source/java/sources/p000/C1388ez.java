package p000;

import android.annotation.SuppressLint;
import android.content.IntentFilter;
import android.media.RouteDiscoveryPreference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;
@SuppressLint({"NewApi"})
/* renamed from: ez */
/* loaded from: classes-dex2jar.jar:ez.class */
public class C1388ez {
    /* renamed from: a */
    public static RouteDiscoveryPreference m2014a(yy yyVar) {
        if (yyVar == null || !yyVar.f()) {
            return new RouteDiscoveryPreference.Builder(new ArrayList(), false).build();
        }
        return new RouteDiscoveryPreference.Builder((List) yyVar.d().m2928e().stream().map(ry.a).collect(Collectors.toList()), yyVar.e()).build();
    }

    /* renamed from: b */
    public static Collection<String> m2013b(List<IntentFilter> list) {
        HashSet hashSet = new HashSet();
        for (IntentFilter intentFilter : list) {
            int countCategories = intentFilter.countCategories();
            for (int i = 0; i < countCategories; i++) {
                hashSet.add(m2011d(intentFilter.getCategory(i)));
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0056, code lost:
        if (r0 != 2) goto L11;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.MediaRoute2Info m2012c(xy r6) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C1388ez.m2012c(xy):android.media.MediaRoute2Info");
    }

    /* renamed from: d */
    public static String m2011d(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2065577523:
                if (str.equals("android.media.intent.category.REMOTE_PLAYBACK")) {
                    z = false;
                    break;
                }
                break;
            case 956939050:
                if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
                    z = true;
                    break;
                }
                break;
            case 975975375:
                if (str.equals("android.media.intent.category.LIVE_VIDEO")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return "android.media.route.feature.REMOTE_PLAYBACK";
            case true:
                return "android.media.route.feature.LIVE_AUDIO";
            case true:
                return "android.media.route.feature.LIVE_VIDEO";
            default:
                return str;
        }
    }
}
