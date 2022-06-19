package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jp2.class */
final class jp2 {

    /* renamed from: a */
    private final ym2[] f6925a;

    /* renamed from: b */
    private final zm2 f6926b;

    /* renamed from: c */
    private ym2 f6927c;

    public jp2(ym2[] ym2VarArr, zm2 zm2Var) {
        this.f6925a = ym2VarArr;
        this.f6926b = zm2Var;
    }

    /* renamed from: a */
    public final void m6937a() {
        if (this.f6927c != null) {
            this.f6927c = null;
        }
    }

    /* renamed from: b */
    public final ym2 m6936b(xm2 xm2Var, Uri uri) {
        ym2 ym2Var = this.f6927c;
        if (ym2Var != null) {
            return ym2Var;
        }
        ym2[] ym2VarArr = this.f6925a;
        int length = ym2VarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            ym2 ym2Var2 = ym2VarArr[i];
            try {
            } catch (EOFException e) {
            } catch (Throwable th) {
                xm2Var.m4889g();
                throw th;
            }
            if (ym2Var2.m4732d(xm2Var)) {
                this.f6927c = ym2Var2;
                xm2Var.m4889g();
                break;
            }
            continue;
            xm2Var.m4889g();
            i++;
        }
        ym2 ym2Var3 = this.f6927c;
        if (ym2Var3 != null) {
            ym2Var3.m4730f(this.f6926b);
            return this.f6927c;
        }
        String m4521n = zr2.m4521n(this.f6925a);
        StringBuilder sb = new StringBuilder(String.valueOf(m4521n).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(m4521n);
        sb.append(") could read the stream.");
        throw new zzom(sb.toString(), uri);
    }
}
