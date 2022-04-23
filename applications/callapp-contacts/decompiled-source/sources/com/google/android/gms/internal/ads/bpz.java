package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpz.class */
public final class bpz implements css<bqc, bqb> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24860a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24861b;

    /* renamed from: c  reason: collision with root package name */
    private final th f24862c;

    /* renamed from: d  reason: collision with root package name */
    private final String f24863d;
    private final int e;

    public bpz(Context context, String str, th thVar, String str2, int i) {
        this.f24860a = context;
        this.f24861b = str;
        this.f24862c = thVar;
        this.f24863d = str2;
        this.e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x039f, code lost:
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
        com.google.android.gms.ads.internal.util.zzd.zzez(r0.toString());
        r0 = com.google.android.gms.internal.ads.cqj.INTERNAL_ERROR;
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x03e7, code lost:
        throw new com.google.android.gms.internal.ads.zzcnp(r0, r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.bqb a(java.lang.String r9, com.google.android.gms.internal.ads.ta r10, org.json.JSONObject r11, java.lang.String r12) throws com.google.android.gms.internal.ads.zzcnp {
        /*
            Method dump skipped, instructions count: 1118
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bpz.a(java.lang.String, com.google.android.gms.internal.ads.ta, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.bqb");
    }

    @Override // com.google.android.gms.internal.ads.css
    public final /* synthetic */ bqb a(bqc bqcVar) throws Exception {
        bqc bqcVar2 = bqcVar;
        return a(bqcVar2.f24873b.f, bqcVar2.f24873b, bqcVar2.f24872a, this.f24863d);
    }
}
