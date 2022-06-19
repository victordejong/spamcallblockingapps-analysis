package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzec.class */
public final class zzec {

    /* renamed from: b */
    public static final AtomicReference f6358b = new AtomicReference();

    /* renamed from: c */
    public static final AtomicReference f6359c = new AtomicReference();

    /* renamed from: d */
    public static final AtomicReference f6360d = new AtomicReference();

    /* renamed from: a */
    public final zzeb f6361a;

    public zzec(zzeb zzebVar) {
        this.f6361a = zzebVar;
    }

    /* renamed from: g */
    public static final String m38591g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        Objects.requireNonNull(atomicReference, "null reference");
        Preconditions.m38907a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzkw.U(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = (String[]) atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    String str3 = strArr4[i];
                    str2 = str3;
                    if (str3 == null) {
                        str2 = strArr2[i] + "(" + strArr[i] + ")";
                        strArr4[i] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    /* renamed from: a */
    public final String m38597a(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder m8728C = C22128a.m8728C("[");
        for (Object obj : objArr) {
            String m38596b = obj instanceof Bundle ? m38596b((Bundle) obj) : String.valueOf(obj);
            if (m38596b != null) {
                if (m8728C.length() != 1) {
                    m8728C.append(", ");
                }
                m8728C.append(m38596b);
            }
        }
        m8728C.append("]");
        return m8728C.toString();
    }

    /* renamed from: b */
    public final String m38596b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f6361a.zza()) {
            return bundle.toString();
        }
        StringBuilder m8728C = C22128a.m8728C("Bundle[{");
        for (String str : bundle.keySet()) {
            if (m8728C.length() != 8) {
                m8728C.append(", ");
            }
            m8728C.append(m38593e(str));
            m8728C.append(ContainerUtils.KEY_VALUE_DELIMITER);
            Object obj = bundle.get(str);
            m8728C.append(obj instanceof Bundle ? m38597a(new Object[]{obj}) : obj instanceof Object[] ? m38597a((Object[]) obj) : obj instanceof ArrayList ? m38597a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        m8728C.append("}]");
        return m8728C.toString();
    }

    /* renamed from: c */
    public final String m38595c(zzau zzauVar) {
        if (!this.f6361a.zza()) {
            return zzauVar.toString();
        }
        StringBuilder m8728C = C22128a.m8728C("origin=");
        m8728C.append(zzauVar.c);
        m8728C.append(",name=");
        m8728C.append(m38594d(zzauVar.a));
        m8728C.append(",params=");
        zzas zzasVar = zzauVar.b;
        m8728C.append(zzasVar == null ? null : !this.f6361a.zza() ? zzasVar.toString() : m38596b(zzasVar.o2()));
        return m8728C.toString();
    }

    /* renamed from: d */
    public final String m38594d(String str) {
        if (str == null) {
            return null;
        }
        return !this.f6361a.zza() ? str : m38591g(str, zzgo.f6410c, zzgo.f6408a, f6358b);
    }

    /* renamed from: e */
    public final String m38593e(String str) {
        if (str == null) {
            return null;
        }
        return !this.f6361a.zza() ? str : m38591g(str, zzgp.f6413b, zzgp.f6412a, f6359c);
    }

    /* renamed from: f */
    public final String m38592f(String str) {
        if (str == null) {
            return null;
        }
        return !this.f6361a.zza() ? str : str.startsWith("_exp_") ? C22128a.m8725C2("experiment_id(", str, ")") : m38591g(str, zzgq.f6417b, zzgq.f6416a, f6360d);
    }
}
