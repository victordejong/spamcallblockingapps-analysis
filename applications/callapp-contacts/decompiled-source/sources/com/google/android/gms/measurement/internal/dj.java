package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dj.class */
public final class dj extends fn {

    /* renamed from: a  reason: collision with root package name */
    protected static final AtomicReference<String[]> f29492a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    protected static final AtomicReference<String[]> f29493b = new AtomicReference<>();

    /* renamed from: c  reason: collision with root package name */
    protected static final AtomicReference<String[]> f29494c = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(es esVar) {
        super(esVar);
    }

    private static final String a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        o.a(strArr);
        o.a(strArr2);
        o.a(atomicReference);
        o.b(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (ju.c(str, strArr[i])) {
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

    private String a(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String a2 = obj instanceof Bundle ? a((Bundle) obj) : String.valueOf(obj);
            if (a2 != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(a2);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(Bundle bundle) {
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
            sb.append(b(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? a(new Object[]{obj}) : obj instanceof Object[] ? a((Object[]) obj) : obj instanceof ArrayList ? a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return !af_() ? str : a(str, fq.f29650c, fq.f29648a, f29492a);
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean af_() {
        return TextUtils.isEmpty(this.t.f29584b) && Log.isLoggable(this.t.c().ag_(), 3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(String str) {
        if (str == null) {
            return null;
        }
        return !af_() ? str : a(str, fr.f29653b, fr.f29652a, f29493b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!af_()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return a(str, fs.f29657b, fs.f29656a, f29494c);
        }
        return "experiment_id(" + str + ")";
    }
}
