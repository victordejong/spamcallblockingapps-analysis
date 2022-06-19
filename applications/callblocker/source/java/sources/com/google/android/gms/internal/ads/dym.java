package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.ads.C2346m;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dym.class */
public final class dym {

    /* renamed from: a */
    private final C2286e[] f16119a;

    /* renamed from: b */
    private final String f16120b;

    public dym(Context context, AttributeSet attributeSet) {
        boolean z = true;
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C2346m.C2347a.AdsAttrs);
        String string = obtainAttributes.getString(C2346m.C2347a.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(C2346m.C2347a.AdsAttrs_adSizes);
        boolean z2 = !TextUtils.isEmpty(string);
        z = TextUtils.isEmpty(string2) ? false : z;
        if (z2 && !z) {
            this.f16119a = m8174a(string);
        } else if (z2 || !z) {
            if (!z2) {
                throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
            }
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else {
            this.f16119a = m8174a(string2);
        }
        this.f16120b = obtainAttributes.getString(C2346m.C2347a.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(this.f16120b)) {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        }
    }

    /* renamed from: a */
    private static C2286e[] m8174a(String str) {
        String[] split = str.split("\\s*,\\s*");
        C2286e[] c2286eArr = new C2286e[split.length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    c2286eArr[i] = new C2286e("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                c2286eArr[i] = C2286e.f6599a;
            } else if ("LARGE_BANNER".equals(trim)) {
                c2286eArr[i] = C2286e.f6601c;
            } else if ("FULL_BANNER".equals(trim)) {
                c2286eArr[i] = C2286e.f6600b;
            } else if ("LEADERBOARD".equals(trim)) {
                c2286eArr[i] = C2286e.f6602d;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                c2286eArr[i] = C2286e.f6603e;
            } else if ("SMART_BANNER".equals(trim)) {
                c2286eArr[i] = C2286e.f6605g;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                c2286eArr[i] = C2286e.f6604f;
            } else if ("FLUID".equals(trim)) {
                c2286eArr[i] = C2286e.f6606h;
            } else if (!"ICON".equals(trim)) {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            } else {
                c2286eArr[i] = C2286e.f6608j;
            }
        }
        if (c2286eArr.length == 0) {
            String valueOf3 = String.valueOf(str);
            throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
        }
        return c2286eArr;
    }

    /* renamed from: a */
    public final String m8175a() {
        return this.f16120b;
    }

    /* renamed from: a */
    public final C2286e[] m8173a(boolean z) {
        if (z || this.f16119a.length == 1) {
            return this.f16119a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
}
