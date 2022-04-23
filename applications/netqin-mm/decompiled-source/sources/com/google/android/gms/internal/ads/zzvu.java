package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.C7216R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvu.class */
public final class zzvu {

    /* renamed from: a */
    public final AdSize[] f29059a;

    /* renamed from: b */
    public final String f29060b;

    public zzvu(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C7216R.styleable.AdsAttrs);
        String string = obtainAttributes.getString(C7216R.styleable.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(C7216R.styleable.AdsAttrs_adSizes);
        boolean z = !TextUtils.isEmpty(string);
        boolean z2 = !TextUtils.isEmpty(string2);
        if (z && !z2) {
            this.f29059a = m11188a(string);
        } else if (!z && z2) {
            this.f29059a = m11188a(string2);
        } else if (z) {
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else {
            throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        }
        String string3 = obtainAttributes.getString(C7216R.styleable.AdsAttrs_adUnitId);
        this.f29060b = string3;
        if (TextUtils.isEmpty(string3)) {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        }
    }

    /* renamed from: a */
    public static AdSize[] m11188a(String str) {
        String[] split = str.split("\\s*,\\s*");
        int length = split.length;
        AdSize[] adSizeArr = new AdSize[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    adSizeArr[i] = new AdSize("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.f22648g;
            } else if ("LARGE_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.f22650i;
            } else if ("FULL_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.f22649h;
            } else if ("LEADERBOARD".equals(trim)) {
                adSizeArr[i] = AdSize.f22651j;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                adSizeArr[i] = AdSize.f22652k;
            } else if ("SMART_BANNER".equals(trim)) {
                adSizeArr[i] = AdSize.f22654m;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                adSizeArr[i] = AdSize.f22653l;
            } else if ("FLUID".equals(trim)) {
                adSizeArr[i] = AdSize.f22655n;
            } else if ("ICON".equals(trim)) {
                adSizeArr[i] = AdSize.f22657p;
            } else {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            }
        }
        if (length != 0) {
            return adSizeArr;
        }
        String valueOf3 = String.valueOf(str);
        throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
    }

    /* renamed from: a */
    public final String m11189a() {
        return this.f29060b;
    }

    /* renamed from: a */
    public final AdSize[] m11187a(boolean z) {
        if (z || this.f29059a.length == 1) {
            return this.f29059a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
}
