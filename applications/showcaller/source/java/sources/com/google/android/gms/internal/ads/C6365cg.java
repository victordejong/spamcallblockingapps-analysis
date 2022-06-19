package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
/* renamed from: com.google.android.gms.internal.ads.cg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cg.class */
final class C6365cg {

    /* renamed from: a */
    private final AbstractC6771nd[] f21229a;

    /* renamed from: b */
    private final AbstractC6808od f21230b;

    /* renamed from: c */
    private AbstractC6771nd f21231c;

    public C6365cg(AbstractC6771nd[] abstractC6771ndArr, AbstractC6808od abstractC6808od) {
        this.f21229a = abstractC6771ndArr;
        this.f21230b = abstractC6808od;
    }

    /* renamed from: a */
    public final void m16057a() {
        if (this.f21231c != null) {
            this.f21231c = null;
        }
    }

    /* renamed from: b */
    public final AbstractC6771nd m16056b(C6734md c6734md, Uri uri) {
        AbstractC6771nd abstractC6771nd = this.f21231c;
        if (abstractC6771nd != null) {
            return abstractC6771nd;
        }
        AbstractC6771nd[] abstractC6771ndArr = this.f21229a;
        int length = abstractC6771ndArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            AbstractC6771nd abstractC6771nd2 = abstractC6771ndArr[i];
            try {
            } catch (EOFException e) {
            } catch (Throwable th) {
                c6734md.m13290g();
                throw th;
            }
            if (abstractC6771nd2.mo9613f(c6734md)) {
                this.f21231c = abstractC6771nd2;
                c6734md.m13290g();
                break;
            }
            continue;
            c6734md.m13290g();
            i++;
        }
        AbstractC6771nd abstractC6771nd3 = this.f21231c;
        if (abstractC6771nd3 != null) {
            abstractC6771nd3.mo9612g(this.f21230b);
            return this.f21231c;
        }
        String m11008n = C6961si.m11008n(this.f21229a);
        StringBuilder sb = new StringBuilder(m11008n.length() + 58);
        sb.append("None of the available extractors (");
        sb.append(m11008n);
        sb.append(") could read the stream.");
        throw new zzath(sb.toString(), uri);
    }
}
