package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.C1359f;
import com.google.android.gms.ads.C1494o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzf.class */
public final class zzzf {

    /* renamed from: a */
    private final C1359f[] f9719a;

    /* renamed from: b */
    private final String f9720b;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.CharSequence, java.lang.String, android.content.res.TypedArray] */
    public zzzf(Context context, AttributeSet attributeSet) {
        IllegalArgumentException illegalArgumentException;
        ?? r0 = !TextUtils.isEmpty(!TextUtils.isEmpty(context.getResources().obtainAttributes(attributeSet, C1494o.AdsAttrs).getString(C1494o.AdsAttrs_adSize).getString(C1494o.AdsAttrs_adSizes)) ? 1 : 0) ? 1 : 0;
        if (r0 != 0 && r0 == 0) {
            this.f9719a = m4467c(r0);
        } else if (r0 != 0 || r0 == 0) {
            r0.recycle();
            if (illegalArgumentException == null) {
                throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
            }
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else {
            this.f9719a = m4467c(r0);
        }
        ?? string = r0.getString(C1494o.AdsAttrs_adUnitId);
        this.f9720b = string;
        string.recycle();
        if (!TextUtils.isEmpty(string)) {
            return;
        }
        throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
    }

    /* renamed from: c */
    private static C1359f[] m4467c(String str) {
        String[] split = str.split("\\s*,\\s*");
        int length = split.length;
        C1359f[] c1359fArr = new C1359f[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    c1359fArr[i] = new C1359f("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(trim);
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf) : new String("Could not parse XML attribute \"adSize\": "));
                }
            } else if ("BANNER".equals(trim)) {
                c1359fArr[i] = C1359f.f5453i;
            } else if ("LARGE_BANNER".equals(trim)) {
                c1359fArr[i] = C1359f.f5455k;
            } else if ("FULL_BANNER".equals(trim)) {
                c1359fArr[i] = C1359f.f5454j;
            } else if ("LEADERBOARD".equals(trim)) {
                c1359fArr[i] = C1359f.f5456l;
            } else if ("MEDIUM_RECTANGLE".equals(trim)) {
                c1359fArr[i] = C1359f.f5457m;
            } else if ("SMART_BANNER".equals(trim)) {
                c1359fArr[i] = C1359f.f5459o;
            } else if ("WIDE_SKYSCRAPER".equals(trim)) {
                c1359fArr[i] = C1359f.f5458n;
            } else if ("FLUID".equals(trim)) {
                c1359fArr[i] = C1359f.f5460p;
            } else if (!"ICON".equals(trim)) {
                String valueOf2 = String.valueOf(trim);
                throw new IllegalArgumentException(valueOf2.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf2) : new String("Could not parse XML attribute \"adSize\": "));
            } else {
                c1359fArr[i] = C1359f.f5462r;
            }
        }
        if (length == 0) {
            String valueOf3 = String.valueOf(str);
            throw new IllegalArgumentException(valueOf3.length() != 0 ? "Could not parse XML attribute \"adSize\": ".concat(valueOf3) : new String("Could not parse XML attribute \"adSize\": "));
        }
        return c1359fArr;
    }

    /* renamed from: a */
    public final C1359f[] m4469a(boolean z) {
        if (z || this.f9719a.length == 1) {
            return this.f9719a;
        }
        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }

    /* renamed from: b */
    public final String m4468b() {
        return this.f9720b;
    }
}
