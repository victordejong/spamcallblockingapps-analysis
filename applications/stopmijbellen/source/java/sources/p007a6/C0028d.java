package p007a6;

import android.util.Log;
import androidx.fragment.app.Fragment;
import ba.C0748b;
import com.google.android.gms.internal.measurement.zzbl;
import com.google.android.gms.internal.measurement.zzh;
import com.google.firebase.abt.component.AbtRegistrar;
import java.util.List;
import p068d2.C2227e4;
import p068d2.C2267f4;
import p068d2.C2410t0;
import p149k8.C3401q;
import p237t.C4350g;
import p263v4.C4642a;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
/* renamed from: a6.d */
/* loaded from: classes-dex2jar.jar:a6/d.class */
public final /* synthetic */ class C0028d implements AbstractC5082f {

    /* renamed from: a */
    public static final /* synthetic */ C0028d f43a = new C0028d();

    /* renamed from: a */
    public static int[] m8918a() {
        return C4350g.m1020d(6);
    }

    /* renamed from: c */
    public static /* synthetic */ String m8917c(int i) {
        if (i == 1) {
            return "_fstec";
        }
        if (i == 2) {
            return "_fsntc";
        }
        if (i == 3) {
            return "_tsns";
        }
        if (i == 4) {
            return "_fr_tot";
        }
        if (i == 5) {
            return "_fr_slo";
        }
        if (i != 6) {
            throw null;
        }
        return "_fr_fzn";
    }

    /* renamed from: d */
    public static Object m8916d(zzbl zzblVar, int i, List list, int i2) {
        zzh.zza(zzblVar.name(), i, list);
        return list.get(i2);
    }

    /* renamed from: e */
    public static String m8915e(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* renamed from: f */
    public static void m8914f(int i, C0748b c0748b) {
        c0748b.m7404g(new C3401q(i));
    }

    /* renamed from: g */
    public static void m8913g(int i, String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        Log.w(str2, sb.toString());
    }

    /* renamed from: h */
    public static void m8912h(C2267f4 c2267f4, String str, boolean z, C2410t0 c2410t0, C2267f4 c2267f42) {
        C2227e4.m3739n(c2267f4, str, z);
        c2410t0.m3587a(c2267f42).m3586b();
    }

    /* renamed from: i */
    public static void m8911i(StringBuilder sb, String str, long j, String str2) {
        sb.append(str);
        sb.append(j);
        sb.append(str2);
    }

    /* renamed from: j */
    public static /* synthetic */ String m8910j(int i) {
        return i == 1 ? "OK" : i == 2 ? "BAD_CONFIG" : "null";
    }

    @Override // p305z4.AbstractC5082f
    /* renamed from: b */
    public Object mo49b(AbstractC5080d abstractC5080d) {
        C4642a lambda$getComponents$0;
        lambda$getComponents$0 = AbtRegistrar.lambda$getComponents$0(abstractC5080d);
        return lambda$getComponents$0;
    }
}
