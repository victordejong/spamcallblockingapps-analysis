package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
/* renamed from: com.google.android.gms.measurement.internal.dj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dj.class */
public final class C13942dj extends AbstractC14001fn {

    /* renamed from: a */
    protected static final AtomicReference<String[]> f51379a = new AtomicReference<>();

    /* renamed from: b */
    protected static final AtomicReference<String[]> f51380b = new AtomicReference<>();

    /* renamed from: c */
    protected static final AtomicReference<String[]> f51381c = new AtomicReference<>();

    public C13942dj(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    private static final String m12096a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        C12045o.m19162a(strArr);
        C12045o.m19162a(strArr2);
        C12045o.m19162a(atomicReference);
        C12045o.m19154b(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (C14116ju.m11564c(str, strArr[i])) {
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

    /* renamed from: a */
    private String m12095a(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String m12098a = obj instanceof Bundle ? m12098a((Bundle) obj) : String.valueOf(obj);
            if (m12098a != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(m12098a);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m12098a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!af_()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m12094b(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? m12095a(new Object[]{obj}) : obj instanceof Object[] ? m12095a((Object[]) obj) : obj instanceof ArrayList ? m12095a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m12097a(String str) {
        if (str == null) {
            return null;
        }
        return !af_() ? str : m12096a(str, C14004fq.f51641c, C14004fq.f51639a, f51379a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return false;
    }

    public final boolean af_() {
        return TextUtils.isEmpty(this.f51637t.f51524b) && Log.isLoggable(this.f51637t.mo11661c().ag_(), 3);
    }

    /* renamed from: b */
    public final String m12094b(String str) {
        if (str == null) {
            return null;
        }
        return !af_() ? str : m12096a(str, C14005fr.f51644b, C14005fr.f51643a, f51380b);
    }

    /* renamed from: c */
    public final String m12093c(String str) {
        if (str == null) {
            return null;
        }
        if (!af_()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m12096a(str, C14006fs.f51648b, C14006fs.f51647a, f51381c);
        }
        return "experiment_id(" + str + ")";
    }
}
