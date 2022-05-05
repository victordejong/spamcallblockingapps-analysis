package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzad;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/m.class */
public final class C9015m extends AbstractC9035p1 {

    /* renamed from: c */
    public static final AtomicReference<String[]> f20485c = new AtomicReference<>();

    /* renamed from: d */
    public static final AtomicReference<String[]> f20486d = new AtomicReference<>();

    /* renamed from: e */
    public static final AtomicReference<String[]> f20487e = new AtomicReference<>();

    public C9015m(C9052s0 s0Var) {
        super(s0Var);
    }

    @Nullable
    /* renamed from: a */
    public static String m16472a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        C7021t.m21290a(strArr);
        C7021t.m21290a(strArr2);
        C7021t.m21290a(atomicReference);
        C7021t.m21286a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (C8959c4.m16705e(str, strArr[i])) {
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
    /* renamed from: a */
    public final String m16477a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!m16469s()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            } else {
                sb.append("Bundle[{");
            }
            sb.append(m16471b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    @Nullable
    /* renamed from: a */
    public final String m16476a(zzaa zzaaVar) {
        if (zzaaVar == null) {
            return null;
        }
        return !m16469s() ? zzaaVar.toString() : m16477a(zzaaVar.m31660c());
    }

    @Nullable
    /* renamed from: a */
    public final String m16475a(zzad zzadVar) {
        if (zzadVar == null) {
            return null;
        }
        if (!m16469s()) {
            return zzadVar.toString();
        }
        return "origin=" + zzadVar.f7149c + ",name=" + m16473a(zzadVar.f7147a) + ",params=" + m16476a(zzadVar.f7148b);
    }

    @Nullable
    /* renamed from: a */
    public final String m16474a(C9075v4 v4Var) {
        if (v4Var == null) {
            return null;
        }
        if (!m16469s()) {
            return v4Var.toString();
        }
        return "Event{appId='" + v4Var.f20720a + "', name='" + m16473a(v4Var.f20721b) + "', params=" + m16476a(v4Var.f20725f) + CssParser.BLOCK_END;
    }

    @Nullable
    /* renamed from: a */
    public final String m16473a(String str) {
        if (str == null) {
            return null;
        }
        return !m16469s() ? str : m16472a(str, AppMeasurement.C3583a.f7137b, AppMeasurement.C3583a.f7136a, f20485c);
    }

    @Nullable
    /* renamed from: b */
    public final String m16471b(String str) {
        if (str == null) {
            return null;
        }
        return !m16469s() ? str : m16472a(str, AppMeasurement.C3586d.f7139b, AppMeasurement.C3586d.f7138a, f20486d);
    }

    @Nullable
    /* renamed from: c */
    public final String m16470c(String str) {
        if (str == null) {
            return null;
        }
        if (!m16469s()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m16472a(str, AppMeasurement.C3587e.f7141b, AppMeasurement.C3587e.f7140a, f20487e);
        }
        return "experiment_id(" + str + ")";
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        return false;
    }

    /* renamed from: s */
    public final boolean m16469s() {
        mo16187b();
        return this.f20541a.m16267z() && this.f20541a.mo16178c().m16386a(3);
    }
}
