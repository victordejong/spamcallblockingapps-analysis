package p193e.p194a.p294b.p331b.p334c;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import java.util.Objects;
import p193e.p194a.p294b.p355m.C8106v;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/j.class */
public final class View$OnClickListenerC7886j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8106v f24470a;

    /* renamed from: b */
    public final /* synthetic */ CreateBusinessProfileActivity f24471b;

    public View$OnClickListenerC7886j(C8106v c8106v, CreateBusinessProfileActivity createBusinessProfileActivity) {
        this.f24470a = c8106v;
        this.f24471b = createBusinessProfileActivity;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        LinearLayout linearLayout = this.f24470a.f25121c;
        l.d(linearLayout, "addMoreInfoLinear");
        if (linearLayout.getHeight() != 0) {
            ?? r0 = this.f24471b;
            LinearLayout linearLayout2 = this.f24470a.f25121c;
            l.d(linearLayout2, "addMoreInfoLinear");
            CreateBusinessProfileActivity.C3532b c3532b = CreateBusinessProfileActivity.f10399r;
            Objects.requireNonNull(r0);
            r0.m35826ta(linearLayout2, linearLayout2.getHeight(), 0);
            C8106v c8106v = r0.f10416q;
            if (c8106v != null) {
                c8106v.f25142x.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, C8605o.m28234f(r0, C3478R.C3479drawable.business_profile_ic_expand, C3478R.attr.theme_accentColor), (Drawable) null);
                return;
            } else {
                l.l("binding");
                throw null;
            }
        }
        ?? r02 = this.f24471b;
        LinearLayout linearLayout3 = this.f24470a.f25121c;
        l.d(linearLayout3, "addMoreInfoLinear");
        CreateBusinessProfileActivity.C3532b c3532b2 = CreateBusinessProfileActivity.f10399r;
        Objects.requireNonNull(r02);
        linearLayout3.measure(-1, -2);
        r02.m35826ta(linearLayout3, linearLayout3.getHeight(), linearLayout3.getMeasuredHeight());
        C8106v c8106v2 = r02.f10416q;
        if (c8106v2 != null) {
            c8106v2.f25142x.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, C8605o.m28234f(r02, C3478R.C3479drawable.business_profile_ic_collapse, C3478R.attr.theme_accentColor), (Drawable) null);
        } else {
            l.l("binding");
            throw null;
        }
    }
}
