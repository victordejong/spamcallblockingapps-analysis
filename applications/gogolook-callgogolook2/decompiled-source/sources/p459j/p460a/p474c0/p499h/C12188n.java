package p459j.p460a.p474c0.p499h;

import android.app.Activity;
import android.app.Fragment;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14080m2;
/* renamed from: j.a.c0.h.n */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/n.class */
public class C12188n {

    /* renamed from: a */
    public Runnable f27341a;

    /* renamed from: b */
    public int f27342b;

    public C12188n(int i) {
        this.f27342b = i;
    }

    /* renamed from: a */
    public void m6859a(int i, int i2) {
        Runnable runnable;
        if (i == this.f27342b) {
            if (i2 == -1 && (runnable = this.f27341a) != null) {
                runnable.run();
            }
            this.f27341a = null;
        }
    }

    /* renamed from: a */
    public void m6858a(Runnable runnable, Activity activity, Fragment fragment) {
        AbstractC12181l0 t = AbstractC12181l0.m6886t();
        boolean p = t.m6890p();
        boolean g = t.mo6874g();
        boolean m = t.m6891m();
        if (!p) {
            C12212s0.m6796a((int) R$string.sms_disabled);
        } else if (!g) {
            C12212s0.m6796a((int) R$string.no_preferred_sim_selected);
        } else if (!m) {
            this.f27341a = runnable;
            C12810o.m5261a(activity, fragment, Integer.valueOf(this.f27342b), (Integer) null).show();
        }
        C14080m2.m2615a("MessagingApp", "Unsatisfied action condition: isSmsCapable=" + p + ", hasPreferredSmsSim=" + g + ", isDefaultSmsApp=" + m);
    }
}
