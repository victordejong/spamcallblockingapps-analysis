package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqa.class */
final class dqa {

    /* renamed from: a */
    private final dnh[] f15355a;

    /* renamed from: b */
    private final dnj f15356b;

    /* renamed from: c */
    private dnh f15357c;

    public dqa(dnh[] dnhVarArr, dnj dnjVar) {
        this.f15355a = dnhVarArr;
        this.f15356b = dnjVar;
    }

    /* renamed from: a */
    public final dnh m8902a(dng dngVar, Uri uri) {
        dnh dnhVar;
        if (this.f15357c != null) {
            dnhVar = this.f15357c;
        } else {
            dnh[] dnhVarArr = this.f15355a;
            int length = dnhVarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                dnh dnhVar2 = dnhVarArr[i];
                try {
                } catch (EOFException e) {
                } finally {
                    dngVar.mo9064a();
                }
                if (dnhVar2.mo8986a(dngVar)) {
                    this.f15357c = dnhVar2;
                    break;
                }
                i++;
            }
            if (this.f15357c == null) {
                String m8700a = dsn.m8700a(this.f15355a);
                throw new zzmz(new StringBuilder(String.valueOf(m8700a).length() + 58).append("None of the available extractors (").append(m8700a).append(") could read the stream.").toString(), uri);
            }
            this.f15357c.mo8984a(this.f15356b);
            dnhVar = this.f15357c;
        }
        return dnhVar;
    }

    /* renamed from: a */
    public final void m8903a() {
        if (this.f15357c != null) {
            this.f15357c.mo8981c();
            this.f15357c = null;
        }
    }
}
