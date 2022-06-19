package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.firebase-perf.zzds;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdr.class */
public final class zzdr extends zzdp {
    private final byte[] buffer;
    private final boolean immutable;
    private int limit;
    private int pos;
    private int zzms;
    private int zzmt;
    private int zzmu;

    private zzdr(byte[] bArr, int i, int i2, boolean z) {
        super(null);
        this.zzmu = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzmt = this.pos;
        this.immutable = z;
    }

    public /* synthetic */ zzdr(byte[] bArr, int i, int i2, boolean z, zzds zzdsVar) {
        this(bArr, i, i2, z);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdp
    public final int zzfs() {
        return this.pos - this.zzmt;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdp
    public final int zzt(int i) {
        if (i >= 0) {
            int zzfs = i + zzfs();
            int i2 = this.zzmu;
            if (zzfs > i2) {
                throw new zzer("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            this.zzmu = zzfs;
            this.limit += this.zzms;
            int i3 = this.limit;
            int i4 = i3 - this.zzmt;
            int i5 = this.zzmu;
            if (i4 > i5) {
                this.zzms = i4 - i5;
                this.limit = i3 - this.zzms;
            } else {
                this.zzms = 0;
            }
            return i2;
        }
        throw new zzer("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
