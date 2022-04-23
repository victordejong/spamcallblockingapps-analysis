package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxy.class */
public final class cxy {

    /* renamed from: a  reason: collision with root package name */
    cyb f26552a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26553b;

    /* renamed from: c  reason: collision with root package name */
    private final cyb f26554c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f26555d;

    private cxy(String str) {
        cyb cybVar = new cyb();
        this.f26554c = cybVar;
        this.f26552a = cybVar;
        this.f26555d = false;
        this.f26553b = (String) cyg.a(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f26553b);
        sb.append('{');
        cyb cybVar = this.f26554c.f26560b;
        String str = "";
        while (cybVar != null) {
            Object obj = cybVar.f26559a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            cybVar = cybVar.f26560b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
