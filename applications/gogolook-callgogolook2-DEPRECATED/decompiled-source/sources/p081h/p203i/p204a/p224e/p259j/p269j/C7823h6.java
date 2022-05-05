package p081h.p203i.p204a.p224e.p259j.p269j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.internal.firebase-perf.zzr;
import p081h.p203i.p325c.C9435c;
/* renamed from: h.i.a.e.j.j.h6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h6.class */
public final class C7823h6 extends C7771b4 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g */
    public static C7823h6 f18341g = new C7823h6();

    /* renamed from: f */
    public zzr f18343f = com.google.android.gms.internal.firebase_perf.zzr.m31837c();

    /* renamed from: e */
    public Context f18342e = C9435c.m15163j().m15173b();

    public C7823h6() {
        m19512b();
    }

    /* renamed from: r */
    public static C7823h6 m19351r() {
        return f18341g;
    }

    /* renamed from: s */
    public static Context m19350s() {
        return C9435c.m15163j().m15173b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7771b4, p081h.p203i.p204a.p224e.p259j.p269j.C7761a3.AbstractC7762a
    /* renamed from: a */
    public final void mo19353a(int i) {
        super.mo19353a(i);
        if (i == 1) {
            this.f18343f = com.google.android.gms.internal.firebase_perf.zzr.m31837c();
            LocalBroadcastManager.getInstance(this.f18342e).sendBroadcast(new Intent("SessionIdUpdate"));
        }
    }

    /* renamed from: q */
    public final zzr m19352q() {
        return this.f18343f;
    }
}
