package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdh.class */
public final class zzdh extends zzdf {

    /* renamed from: a */
    private int f7967a;

    /* renamed from: b */
    private int f7968b;

    /* renamed from: c */
    private int f7969c;

    /* renamed from: d */
    private int f7970d;

    /* renamed from: e */
    private int f7971e;

    private zzdh(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f7971e = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f7967a = i2 + i;
        this.f7969c = i;
        this.f7970d = i;
    }

    /* renamed from: b */
    public final int m13957b() {
        return this.f7969c - this.f7970d;
    }

    /* renamed from: c */
    public final int m13956c(int i) throws zzeh {
        if (i >= 0) {
            int b = i + m13957b();
            int i2 = this.f7971e;
            if (b <= i2) {
                this.f7971e = b;
                int i3 = this.f7967a + this.f7968b;
                this.f7967a = i3;
                int i4 = i3 - this.f7970d;
                if (i4 > b) {
                    int i5 = i4 - b;
                    this.f7968b = i5;
                    this.f7967a = i3 - i5;
                } else {
                    this.f7968b = 0;
                }
                return i2;
            }
            throw new zzeh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzeh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
