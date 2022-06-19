package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC12022bu;
import com.google.android.gms.common.internal.AbstractC12023bv;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/p.class */
public abstract class AbstractBinderC12066p extends AbstractBinderC12022bu {

    /* renamed from: a */
    private final int f39583a;

    public AbstractBinderC12066p(byte[] bArr) {
        C12045o.m19154b(bArr.length == 25);
        this.f39583a = Arrays.hashCode(bArr);
    }

    /* renamed from: a */
    public static byte[] m19076a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12023bv
    /* renamed from: a */
    public final AbstractC12126b mo19077a() {
        return BinderC12129d.m18979a(mo19073d());
    }

    @Override // com.google.android.gms.common.internal.AbstractC12023bv
    /* renamed from: b */
    public final int mo19075b() {
        return this.f39583a;
    }

    /* renamed from: d */
    public abstract byte[] mo19073d();

    public final boolean equals(Object obj) {
        AbstractC12126b mo19077a;
        if (obj == null || !(obj instanceof AbstractC12023bv)) {
            return false;
        }
        try {
            AbstractC12023bv abstractC12023bv = (AbstractC12023bv) obj;
            if (abstractC12023bv.mo19075b() != this.f39583a || (mo19077a = abstractC12023bv.mo19077a()) == null) {
                return false;
            }
            return Arrays.equals(mo19073d(), (byte[]) BinderC12129d.m18980a(mo19077a));
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.f39583a;
    }
}
