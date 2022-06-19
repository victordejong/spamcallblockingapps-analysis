package p160l8;

import android.view.View;
import java.util.Objects;
import p117h8.C3047u;
/* renamed from: l8.t */
/* loaded from: classes2-dex2jar.jar:l8/t.class */
public final /* synthetic */ class View$OnClickListenerC3537t implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f11694a;

    /* renamed from: b */
    public final /* synthetic */ C3540w f11695b;

    /* renamed from: c */
    public final /* synthetic */ Object f11696c;

    public /* synthetic */ View$OnClickListenerC3537t(C3540w c3540w, Object obj, int i) {
        this.f11694a = i;
        this.f11695b = c3540w;
        this.f11696c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11694a) {
            case 0:
                C3540w c3540w = this.f11695b;
                c3540w.m2208j(1, !c3540w.m2215c(1));
                c3540w.m2203o((View) this.f11696c);
                return;
            case 1:
                C3540w c3540w2 = this.f11695b;
                c3540w2.m2208j(5, true ^ c3540w2.m2215c(5));
                c3540w2.m2203o((View) this.f11696c);
                return;
            default:
                C3540w c3540w3 = this.f11695b;
                Objects.requireNonNull(c3540w3);
                int i = ((C3047u) this.f11696c).f10325e;
                if (i == c3540w3.f11703b.size()) {
                    return;
                }
                c3540w3.m2202p(i, i + 1);
                c3540w3.f11704c++;
                return;
        }
    }
}
