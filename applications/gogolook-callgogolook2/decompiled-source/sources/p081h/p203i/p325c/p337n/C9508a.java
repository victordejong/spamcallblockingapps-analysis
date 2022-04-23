package p081h.p203i.p325c.p337n;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9523b;
/* renamed from: h.i.c.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/a.class */
public class C9508a implements AbstractC9452a.AbstractC9454b {

    /* renamed from: a */
    public AbstractC9523b f21661a;

    /* renamed from: b */
    public AbstractC9523b f21662b;

    /* renamed from: a */
    public static void m15027a(@Nullable AbstractC9523b bVar, @NonNull String str, @NonNull Bundle bundle) {
        if (bVar != null) {
            bVar.onEvent(str, bundle);
        }
    }

    @Override // p081h.p203i.p325c.p331k.p332a.AbstractC9452a.AbstractC9454b
    /* renamed from: a */
    public void mo15029a(int i, @Nullable Bundle bundle) {
        String string;
        C9513b a = C9513b.m15015a();
        a.m15013a("Received Analytics message: " + i + " " + bundle);
        if (bundle != null && (string = bundle.getString("name")) != null) {
            Bundle bundle2 = bundle.getBundle("params");
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            m15026a(string, bundle3);
        }
    }

    /* renamed from: a */
    public void m15028a(@Nullable AbstractC9523b bVar) {
        this.f21662b = bVar;
    }

    /* renamed from: a */
    public final void m15026a(@NonNull String str, @NonNull Bundle bundle) {
        m15027a("clx".equals(bundle.getString("_o")) ? this.f21661a : this.f21662b, str, bundle);
    }

    /* renamed from: b */
    public void m15025b(@Nullable AbstractC9523b bVar) {
        this.f21661a = bVar;
    }
}
