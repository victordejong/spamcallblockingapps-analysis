package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.C5841p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdt.class */
public final class zzbdt {

    /* renamed from: a */
    private final C5605f[] f33706a;

    /* renamed from: b */
    private final String f33707b;

    public zzbdt(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C5841p.AdsAttrs);
        String string = obtainAttributes.getString(C5841p.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(C5841p.AdsAttrs_adSizes);
        boolean z = !TextUtils.isEmpty(string);
        boolean z2 = !TextUtils.isEmpty(string2);
        if (z && !z2) {
            this.f33706a = m8074c(string);
        } else if (z || !z2) {
            if (z) {
                obtainAttributes.recycle();
                throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
            } else {
                obtainAttributes.recycle();
                throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
            }
        } else {
            this.f33706a = m8074c(string2);
        }
        String string3 = obtainAttributes.getString(C5841p.AdsAttrs_adUnitId);
        this.f33707b = string3;
        obtainAttributes.recycle();
        if (!TextUtils.isEmpty(string3)) {
            return;
        }
        throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
    }

    /* renamed from: c */
    private static C5605f[] m8074c(String str) {
        String[] split = str.split("\\s*,\\s*");
        int length = split.length;
        C5605f[] c5605fArr = new C5605f[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    c5605fArr[i] = new C5605f("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException(trim.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(trim) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                c5605fArr[i] = C5605f.f18227a;
            } else if ("LARGE_BANNER".equals(trim)) {
                c5605fArr[i] = C5605f.f18229c;
            } else if ("FULL_BANNER".equals(trim)) {
                c5605fArr[i] = C5605f.f18228b;
            } else if ("LEADERBOARD".equals(trim)) {
                c5605fArr[i] = C5605f.f18230d;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                c5605fArr[i] = C5605f.f18231e;
            } else if ("SMART_BANNER".equals(trim)) {
                c5605fArr[i] = C5605f.f18233g;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                c5605fArr[i] = C5605f.f18232f;
            } else if ("FLUID".equals(trim)) {
                c5605fArr[i] = C5605f.f18234h;
            } else if (!"ICON".equals(trim)) {
                throw new IllegalArgumentException(trim.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(trim) : new String("Could not parse XML attribute \"adSize\": "));
            } else {
                c5605fArr[i] = C5605f.f18237k;
            }
        }
        if (length == 0) {
            throw new IllegalArgumentException(str.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(str) : new String("Could not parse XML attribute \"adSize\": "));
        }
        return c5605fArr;
    }

    /* renamed from: a */
    public final C5605f[] m8076a(boolean z) {
        if (z || this.f33706a.length == 1) {
            return this.f33706a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }

    /* renamed from: b */
    public final String m8075b() {
        return this.f33707b;
    }
}
