package p193e.p194a.p1195s.p1207q.p1210g;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import e.m.d.y.n;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.s.q.g.l */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/l.class */
public final class C20161l extends RecyclerView.AbstractC0313c0 implements AbstractC20153e {

    /* renamed from: a */
    public final ImageView f56819a;

    /* renamed from: b */
    public final TextView f56820b;

    /* renamed from: c */
    public final TextView f56821c;

    /* renamed from: d */
    public final View f56822d;

    /* renamed from: e */
    public final ImageView f56823e;

    /* renamed from: f */
    public final View f56824f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20161l(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        View findViewById = view.findViewById(C3605R.C3606id.imageView);
        l.d(findViewById, "view.findViewById(R.id.imageView)");
        this.f56819a = (ImageView) findViewById;
        View findViewById2 = view.findViewById(C3605R.C3606id.nameText);
        l.d(findViewById2, "view.findViewById(R.id.nameText)");
        this.f56820b = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C3605R.C3606id.descriptionText);
        l.d(findViewById3, "view.findViewById(R.id.descriptionText)");
        this.f56821c = (TextView) findViewById3;
        View findViewById4 = view.findViewById(C3605R.C3606id.selectedView);
        l.d(findViewById4, "view.findViewById(R.id.selectedView)");
        this.f56822d = findViewById4;
        View findViewById5 = view.findViewById(C3605R.C3606id.playbackIconView);
        l.d(findViewById5, "view.findViewById(R.id.playbackIconView)");
        this.f56823e = (ImageView) findViewById5;
        View findViewById6 = view.findViewById(C3605R.C3606id.progressBar);
        l.d(findViewById6, "view.findViewById(R.id.progressBar)");
        this.f56824f = findViewById6;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    /* renamed from: d */
    public void mo11463d(String str) {
        l.e(str, "description");
        this.f56821c.setText(str);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    /* renamed from: h */
    public void mo11462h(boolean z) {
        C19286f.m13683U(this.f56824f, z);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    /* renamed from: l */
    public void mo11461l(boolean z) {
        C19286f.m13683U(this.f56822d, z);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    /* renamed from: r */
    public void mo11460r(String str) {
        l.e(str, "url");
        ComponentCallbacks2C22222c.m8445f(this.f56819a).mo8407r(str).m8427O(this.f56819a);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        this.f56820b.setText(str);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20153e
    /* renamed from: w */
    public void mo11459w(int i) {
        this.f56823e.setImageResource(i);
    }
}
