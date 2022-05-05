package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/al.class */
public final class al extends zzg<al> {

    /* renamed from: a  reason: collision with root package name */
    public String f4113a;

    /* renamed from: b  reason: collision with root package name */
    public int f4114b;
    public String c;
    private int d;
    private String e;
    private boolean f;
    private boolean g;

    public al() {
        this((byte) 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private al(byte r6) {
        /*
            r5 = this;
            java.util.UUID r0 = java.util.UUID.randomUUID()
            r7 = r0
            r0 = r7
            long r0 = r0.getLeastSignificantBits()
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r1
            int r0 = (int) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0018
        L_0x0012:
            r0 = r5
            r1 = r6
            r0.<init>(r1)
            return
        L_0x0018:
            r0 = r7
            long r0 = r0.getMostSignificantBits()
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r1
            int r0 = (int) r0
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0012
            java.lang.String r0 = "GAv4"
            java.lang.String r1 = "UUID.randomUUID() returned 0."
            int r0 = android.util.Log.e(r0, r1)
            r0 = 2147483647(0x7fffffff, float:NaN)
            r6 = r0
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.al.<init>(byte):void");
    }

    private al(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        this.f4114b = i;
        this.g = false;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.f4113a);
        hashMap.put("interstitial", Boolean.valueOf(this.f));
        hashMap.put("automatic", Boolean.valueOf(this.g));
        hashMap.put("screenId", Integer.valueOf(this.f4114b));
        hashMap.put("referrerScreenId", Integer.valueOf(this.d));
        hashMap.put("referrerScreenName", this.e);
        hashMap.put("referrerUri", this.c);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(al alVar) {
        al alVar2 = alVar;
        if (!TextUtils.isEmpty(this.f4113a)) {
            alVar2.f4113a = this.f4113a;
        }
        if (this.f4114b != 0) {
            alVar2.f4114b = this.f4114b;
        }
        if (this.d != 0) {
            alVar2.d = this.d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            alVar2.e = this.e;
        }
        if (!TextUtils.isEmpty(this.c)) {
            String str = this.c;
            if (TextUtils.isEmpty(str)) {
                alVar2.c = null;
            } else {
                alVar2.c = str;
            }
        }
        if (this.f) {
            alVar2.f = this.f;
        }
        if (this.g) {
            alVar2.g = this.g;
        }
    }
}
