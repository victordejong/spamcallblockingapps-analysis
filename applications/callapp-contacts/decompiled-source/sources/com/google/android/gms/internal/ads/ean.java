package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ean.class */
final class ean {

    /* renamed from: a  reason: collision with root package name */
    dxv f27531a;

    /* renamed from: b  reason: collision with root package name */
    private final dxv[] f27532b;

    /* renamed from: c  reason: collision with root package name */
    private final dxx f27533c;

    public ean(dxv[] dxvVarArr, dxx dxxVar) {
        this.f27532b = dxvVarArr;
        this.f27533c = dxxVar;
    }

    public final dxv a(dxt dxtVar, Uri uri) throws IOException, InterruptedException {
        dxv dxvVar = this.f27531a;
        if (dxvVar != null) {
            return dxvVar;
        }
        dxv[] dxvVarArr = this.f27532b;
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
                dxtVar.a();
            }
            if (dxvVar2.a(dxtVar)) {
                this.f27531a = dxvVar2;
                break;
            }
            i++;
        }
        dxv dxvVar3 = this.f27531a;
        if (dxvVar3 != null) {
            dxvVar3.a(this.f27533c);
            return this.f27531a;
        }
        String a2 = ede.a(this.f27532b);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(a2);
        sb.append(") could read the stream.");
        throw new zznt(sb.toString(), uri);
    }
}
