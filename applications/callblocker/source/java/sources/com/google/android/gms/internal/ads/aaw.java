package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.C2714k;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaw.class */
public final class aaw implements drp {

    /* renamed from: a */
    private InputStream f7703a;

    /* renamed from: b */
    private boolean f7704b;

    /* renamed from: c */
    private final Context f7705c;

    /* renamed from: d */
    private final drp f7706d;

    /* renamed from: e */
    private final dsa<drp> f7707e;

    /* renamed from: f */
    private final aaz f7708f;

    /* renamed from: g */
    private Uri f7709g;

    public aaw(Context context, drp drpVar, dsa<drp> dsaVar, aaz aazVar) {
        this.f7705c = context;
        this.f7706d = drpVar;
        this.f7707e = dsaVar;
        this.f7708f = aazVar;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final int mo8808a(byte[] bArr, int i, int i2) {
        if (!this.f7704b) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        int read = this.f7703a != null ? this.f7703a.read(bArr, i, i2) : this.f7706d.mo8808a(bArr, i, i2);
        if (this.f7707e != null) {
            this.f7707e.mo8766a((dsa<drp>) this, read);
        }
        return read;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0133  */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8811a(com.google.android.gms.internal.ads.drq r14) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aaw.mo8811a(com.google.android.gms.internal.ads.drq):long");
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final Uri mo8812a() {
        return this.f7709g;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: b */
    public final void mo8807b() {
        if (!this.f7704b) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.f7704b = false;
        this.f7709g = null;
        if (this.f7703a != null) {
            C2714k.m13848a(this.f7703a);
            this.f7703a = null;
        } else {
            this.f7706d.mo8807b();
        }
        if (this.f7707e == null) {
            return;
        }
        this.f7707e.mo8767a(this);
    }
}
