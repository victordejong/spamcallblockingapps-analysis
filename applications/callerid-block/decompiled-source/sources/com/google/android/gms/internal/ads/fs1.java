package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fs1.class */
public final class fs1 {
    /* renamed from: a */
    public static void m7449a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: b */
    public static void m7448b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: c */
    public static void m7447c(zzdww zzdwwVar, zzdwt zzdwtVar, zzdwv zzdwvVar) {
        if (zzdwwVar == zzdww.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        } else if (zzdwtVar == zzdwt.DEFINED_BY_JAVASCRIPT && zzdwwVar == zzdww.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        } else if (zzdwvVar == zzdwv.DEFINED_BY_JAVASCRIPT && zzdwwVar == zzdww.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }
}
