package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.j3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j3.class */
public final class C7756j3 extends AbstractC7804n5 {

    /* renamed from: c */
    protected static final AtomicReference<String[]> f35351c = new AtomicReference<>();

    /* renamed from: d */
    protected static final AtomicReference<String[]> f35352d = new AtomicReference<>();

    /* renamed from: e */
    protected static final AtomicReference<String[]> f35353e = new AtomicReference<>();

    public C7756j3(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: s */
    private static final String m6340s(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        C6155o.m17018j(strArr);
        C6155o.m17018j(strArr2);
        C6155o.m17018j(atomicReference);
        C6155o.m17027a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (C7885u9.m5995G(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
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

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return false;
    }

    /* renamed from: m */
    public final boolean m6346m() {
        this.f35460a.mo6028c();
        return this.f35460a.m6039K() && Log.isLoggable(this.f35460a.mo6047C().m6184y(), 3);
    }

    /* renamed from: n */
    public final String m6345n(String str) {
        if (str == null) {
            return null;
        }
        return !m6346m() ? str : m6340s(str, C7837q5.f35595c, C7837q5.f35593a, f35351c);
    }

    /* renamed from: o */
    public final String m6344o(String str) {
        if (str == null) {
            return null;
        }
        return !m6346m() ? str : m6340s(str, C7848r5.f35612b, C7848r5.f35611a, f35352d);
    }

    /* renamed from: p */
    public final String m6343p(String str) {
        if (str == null) {
            return null;
        }
        if (!m6346m()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m6340s(str, C7859s5.f35670b, C7859s5.f35669a, f35353e);
        }
        return "experiment_id(" + str + ")";
    }

    /* renamed from: q */
    public final String m6342q(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!m6346m()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m6344o(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? m6341r(new Object[]{obj}) : obj instanceof Object[] ? m6341r((Object[]) obj) : obj instanceof ArrayList ? m6341r(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* renamed from: r */
    protected final String m6341r(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String m6342q = obj instanceof Bundle ? m6342q((Bundle) obj) : String.valueOf(obj);
            if (m6342q != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(m6342q);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
