package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC6181u1;
import com.google.android.gms.common.internal.AbstractC6184v1;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/t.class */
public abstract class AbstractBinderC6221t extends AbstractBinderC6181u1 {

    /* renamed from: d */
    private final int f19706d;

    public AbstractBinderC6221t(byte[] bArr) {
        C6155o.m17027a(bArr.length == 25);
        this.f19706d = Arrays.hashCode(bArr);
    }

    /* renamed from: m2 */
    public static byte[] m16834m2(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: J0 */
    public abstract byte[] mo16759J0();

    @Override // com.google.android.gms.common.internal.AbstractC6184v1
    /* renamed from: a */
    public final int mo16836a() {
        return this.f19706d;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6184v1
    /* renamed from: e */
    public final AbstractC6253a mo16835e() {
        return BinderC6255b.m16744m2(mo16759J0());
    }

    public final boolean equals(Object obj) {
        AbstractC6253a mo16835e;
        if (obj == null || !(obj instanceof AbstractC6184v1)) {
            return false;
        }
        try {
            AbstractC6184v1 abstractC6184v1 = (AbstractC6184v1) obj;
            if (abstractC6184v1.mo16836a() != this.f19706d || (mo16835e = abstractC6184v1.mo16835e()) == null) {
                return false;
            }
            return Arrays.equals(mo16759J0(), (byte[]) BinderC6255b.m16745J0(mo16835e));
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.f19706d;
    }
}
