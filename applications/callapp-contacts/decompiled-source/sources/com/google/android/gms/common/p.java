package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.bu;
import com.google.android.gms.common.internal.bv;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/p.class */
public abstract class p extends bu {

    /* renamed from: a  reason: collision with root package name */
    private final int f22917a;

    /* JADX INFO: Access modifiers changed from: protected */
    public p(byte[] bArr) {
        o.b(bArr.length == 25);
        this.f22917a = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.common.internal.bv
    public final b a() {
        return d.a(d());
    }

    @Override // com.google.android.gms.common.internal.bv
    public final int b() {
        return this.f22917a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] d();

    public final boolean equals(Object obj) {
        b a2;
        if (obj == null || !(obj instanceof bv)) {
            return false;
        }
        try {
            bv bvVar = (bv) obj;
            if (bvVar.b() == this.f22917a && (a2 = bvVar.a()) != null) {
                return Arrays.equals(d(), (byte[]) d.a(a2));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.f22917a;
    }
}
