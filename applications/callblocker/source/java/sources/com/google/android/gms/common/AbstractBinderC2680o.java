package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC2613ap;
import com.google.android.gms.common.internal.AbstractC2611an;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/o.class */
public abstract class AbstractBinderC2680o extends AbstractBinderC2613ap {

    /* renamed from: a */
    private int f7443a;

    public AbstractBinderC2680o(byte[] bArr) {
        C2662s.m13973b(bArr.length == 25);
        this.f7443a = Arrays.hashCode(bArr);
    }

    /* renamed from: a */
    public static byte[] m13900a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2611an
    /* renamed from: a */
    public final AbstractC2731a mo13901a() {
        return BinderC2734b.m13794a(mo13898c());
    }

    @Override // com.google.android.gms.common.internal.AbstractC2611an
    /* renamed from: b */
    public final int mo13899b() {
        return hashCode();
    }

    /* renamed from: c */
    public abstract byte[] mo13898c();

    public boolean equals(Object obj) {
        boolean z;
        if (obj == null || !(obj instanceof AbstractC2611an)) {
            z = false;
        } else {
            try {
                AbstractC2611an abstractC2611an = (AbstractC2611an) obj;
                if (abstractC2611an.mo13899b() != hashCode()) {
                    z = false;
                } else {
                    AbstractC2731a mo13901a = abstractC2611an.mo13901a();
                    if (mo13901a == null) {
                        z = false;
                    } else {
                        z = Arrays.equals(mo13898c(), (byte[]) BinderC2734b.m13795a(mo13901a));
                    }
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f7443a;
    }
}
