package com.truecaller.insights.p168ui.smartfeed.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p477g.C9013b;
import p193e.p194a.p437c.p438a.p507p.p513e.AbstractC9503b;
import p193e.p194a.p437c.p438a.p507p.p513e.C9507f;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\f\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/c/a/g/b;", "d", "Ls1/g;", "getBinding", "()Le/a/c/a/g/b;", "binding", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity.class */
public final class InsightsSmartFeedActivity extends AbstractC9503b {

    /* renamed from: d */
    public final g f12929d = C25225a.m3982O1(h.c, new C4126a(this));

    /* renamed from: com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity$a.class */
    public static final class C4126a extends m implements a<C9013b> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f12930b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4126a(n3.b.a.h hVar) {
            super(0);
            this.f12930b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12930b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4078R.layout.activity_insights_smart_feed, (ViewGroup) null, false);
            int i = C4078R.C4080id.container;
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
            if (frameLayout != null) {
                return new C9013b((ConstraintLayout) inflate, frameLayout);
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        InsightsSmartFeedActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9013b c9013b = (C9013b) this.f12929d.getValue();
        l.d(c9013b, "binding");
        setContentView(c9013b.f27376a);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            FrameLayout frameLayout = ((C9013b) this.f12929d.getValue()).f27377b;
            l.d(frameLayout, "binding.container");
            int id = frameLayout.getId();
            Objects.requireNonNull(C9507f.f28830n);
            c26907a.m1131b(id, new C9507f());
            c26907a.mo1127f();
        }
    }
}
