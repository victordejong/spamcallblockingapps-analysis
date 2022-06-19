package p193e.p194a.p1164r.p1168b;

import android.view.View;
import com.truecaller.wizard.adschoices.AdsChoice;
/* renamed from: e.a.r.b.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/r/b/a$a.class */
public final class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f54763a;

    /* renamed from: b */
    public final /* synthetic */ Object f54764b;

    /* renamed from: c */
    public final /* synthetic */ Object f54765c;

    /* renamed from: d */
    public final /* synthetic */ Object f54766d;

    /* renamed from: e */
    public final /* synthetic */ Object f54767e;

    /* renamed from: f */
    public final /* synthetic */ Object f54768f;

    /* renamed from: g */
    public final /* synthetic */ Object f54769g;

    public a$a(int i, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        this.f54763a = i;
        this.f54764b = obj;
        this.f54765c = obj2;
        this.f54766d = obj3;
        this.f54767e = obj4;
        this.f54768f = obj5;
        this.f54769g = obj6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f54763a;
        if (i == 0) {
            ((a) this.f54765c).f.Lj((AdsChoice) this.f54764b, false);
        } else if (i != 1) {
            throw null;
        } else {
            ((a) this.f54765c).f.Lj((AdsChoice) this.f54764b, true);
        }
    }
}
