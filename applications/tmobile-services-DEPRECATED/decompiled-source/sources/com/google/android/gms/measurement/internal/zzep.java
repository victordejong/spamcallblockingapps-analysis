package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzep.class */
public final class zzep extends zzgr {

    /* renamed from: c */
    private static final AtomicReference<String[]> f9099c = new AtomicReference<>();

    /* renamed from: d */
    private static final AtomicReference<String[]> f9100d = new AtomicReference<>();

    /* renamed from: e */
    private static final AtomicReference<String[]> f9101e = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzep(zzfv zzfvVar) {
        super(zzfvVar);
    }

    @Nullable
    /* renamed from: v */
    private static String m11568v(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.m14523k(strArr);
        Preconditions.m14523k(strArr2);
        Preconditions.m14523k(atomicReference);
        Preconditions.m14533a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzkw.m10930z0(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    if (strArr4[i] == null) {
                        strArr4[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr4[i];
                }
                return str2;
            }
        }
        return str;
    }

    @Nullable
    /* renamed from: w */
    private final String m11567w(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String s = obj instanceof Bundle ? m11571s((Bundle) obj) : String.valueOf(obj);
            if (s != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(s);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: z */
    private final boolean m11564z() {
        return this.f9354a.m11378J() && this.f9354a.mo11081c().m11563A(3);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: s */
    public final String m11571s(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!m11564z()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m11566x(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? m11567w(new Object[]{obj}) : obj instanceof Object[] ? m11567w((Object[]) obj) : obj instanceof ArrayList ? m11567w(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: t */
    public final String m11570t(zzar zzarVar) {
        String str = null;
        if (zzarVar == null) {
            return null;
        }
        if (!m11564z()) {
            return zzarVar.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(zzarVar.f8884h);
        sb.append(",name=");
        sb.append(m11569u(zzarVar.f8882f));
        sb.append(",params=");
        zzam zzamVar = zzarVar.f8883g;
        if (zzamVar != null) {
            str = !m11564z() ? zzamVar.toString() : m11571s(zzamVar.m11701Y());
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: u */
    public final String m11569u(String str) {
        if (str == null) {
            return null;
        }
        return !m11564z() ? str : m11568v(str, zzgs.f9363c, zzgs.f9361a, f9099c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: x */
    public final String m11566x(String str) {
        if (str == null) {
            return null;
        }
        return !m11564z() ? str : m11568v(str, zzgv.f9368b, zzgv.f9367a, f9100d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: y */
    public final String m11565y(String str) {
        if (str == null) {
            return null;
        }
        if (!m11564z()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m11568v(str, zzgu.f9366b, zzgu.f9365a, f9101e);
        }
        return "experiment_id(" + str + ")";
    }
}
