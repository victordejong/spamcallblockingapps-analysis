package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ean.class */
final class ean {

    /* renamed from: a */
    dxv f48513a;

    /* renamed from: b */
    private final dxv[] f48514b;

    /* renamed from: c */
    private final dxx f48515c;

    public ean(dxv[] dxvVarArr, dxx dxxVar) {
        this.f48514b = dxvVarArr;
        this.f48515c = dxxVar;
    }

    /* renamed from: a */
    public final dxv m15366a(dxt dxtVar, Uri uri) throws IOException, InterruptedException {
        dxv dxvVar = this.f48513a;
        if (dxvVar != null) {
            return dxvVar;
        }
        dxv[] dxvVarArr = this.f48514b;
        int length = dxvVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            dxv dxvVar2 = dxvVarArr[i];
            try {
            } catch (EOFException e) {
            } finally {
                dxtVar.mo15499a();
            }
            if (dxvVar2.mo15420a(dxtVar)) {
                this.f48513a = dxvVar2;
                break;
            }
            i++;
        }
        dxv dxvVar3 = this.f48513a;
        if (dxvVar3 != null) {
            dxvVar3.mo15418a(this.f48515c);
            return this.f48513a;
        }
        String m15189a = ede.m15189a(this.f48514b);
        StringBuilder sb = new StringBuilder(String.valueOf(m15189a).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(m15189a);
        sb.append(") could read the stream.");
        throw new zznt(sb.toString(), uri);
    }
}
