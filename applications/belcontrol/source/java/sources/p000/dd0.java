package p000;

import android.view.View;
/* renamed from: dd0 */
/* loaded from: classes-dex2jar.jar:dd0.class */
public final /* synthetic */ class dd0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ld0 f5833a;

    /* renamed from: b */
    public final /* synthetic */ ta0 f5834b;

    /* renamed from: c */
    public final /* synthetic */ md0 f5835c;

    public /* synthetic */ dd0(ld0 ld0Var, ta0 ta0Var, md0 md0Var) {
        this.f5833a = ld0Var;
        this.f5834b = ta0Var;
        this.f5835c = md0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f5833a.k(this.f5834b, this.f5835c, view);
    }
}
