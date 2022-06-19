package p193e.p194a.p1188r3;

import android.app.Activity;
import android.widget.ProgressBar;
import p193e.p194a.p1188r3.AbstractC19898b;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.z.c.y;
/* renamed from: e.a.r3.c */
/* loaded from: classes8-dex2jar.jar:e/a/r3/c.class */
public final class C19905c implements g<AbstractC19898b> {

    /* renamed from: a */
    public final /* synthetic */ ProgressBar f56335a;

    /* renamed from: b */
    public final /* synthetic */ n3.b.a.g f56336b;

    /* renamed from: c */
    public final /* synthetic */ y f56337c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC19909g f56338d;

    /* renamed from: e */
    public final /* synthetic */ Activity f56339e;

    public C19905c(ProgressBar progressBar, n3.b.a.g gVar, y yVar, AbstractC19909g abstractC19909g, Activity activity) {
        this.f56335a = progressBar;
        this.f56336b = gVar;
        this.f56337c = yVar;
        this.f56338d = abstractC19909g;
        this.f56339e = activity;
    }

    /* renamed from: a */
    public Object m11827a(Object obj, d dVar) {
        ProgressBar progressBar;
        AbstractC19898b abstractC19898b = (AbstractC19898b) obj;
        if (abstractC19898b instanceof AbstractC19898b.C19901c) {
            ProgressBar progressBar2 = this.f56335a;
            if (progressBar2 != null) {
                progressBar2.setIndeterminate(false);
                progressBar2.setProgress(((AbstractC19898b.C19901c) abstractC19898b).f56332a);
            }
        } else if (abstractC19898b instanceof AbstractC19898b.C19902d) {
            this.f56336b.dismiss();
            this.f56337c.a = true;
        } else if (abstractC19898b instanceof AbstractC19898b.C19900b) {
            this.f56336b.dismiss();
        } else if (abstractC19898b instanceof AbstractC19898b.C19899a) {
            this.f56336b.dismiss();
        } else if (abstractC19898b instanceof AbstractC19898b.C19904f) {
            this.f56336b.dismiss();
            this.f56338d.mo11822a((AbstractC19898b.C19904f) abstractC19898b, this.f56339e, 666);
        } else if ((abstractC19898b instanceof AbstractC19898b.C19903e) && (progressBar = this.f56335a) != null) {
            progressBar.setIndeterminate(true);
        }
        return s.a;
    }
}
