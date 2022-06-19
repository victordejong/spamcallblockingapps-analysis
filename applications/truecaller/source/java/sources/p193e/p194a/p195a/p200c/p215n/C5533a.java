package p193e.p194a.p195a.p200c.p215n;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18144a0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.C5475l;
import p193e.p194a.p195a.p200c.C5587n7;
import p193e.p194a.p195a.p200c.p221r8.C5700b;
import p193e.p194a.p195a.p200c.p221r8.C5703e;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� \u008f\u00012\u00020\u00012\u00020\u0002:\u0001gB\b¢\u0006\u0005\b\u008e\u0001\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0013J#\u0010\u001c\u001a\u00020\u00052\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0018H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u001f\u0010$\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b&\u0010%J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00052\u0006\u0010)\u001a\u00020 H\u0016¢\u0006\u0004\b*\u0010(J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010)\u001a\u00020 H\u0016¢\u0006\u0004\b+\u0010(J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010)\u001a\u00020 H\u0016¢\u0006\u0004\b,\u0010(J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0013R\"\u00105\u001a\u00020.8��@��X\u0081.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010E\u001a\u00020>8��@��X\u0081.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010K\u001a\u00020F8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010HR\"\u0010S\u001a\u00020L8��@��X\u0081.¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020F8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bT\u0010HR\"\u0010]\u001a\u00020V8��@��X\u0081.¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010e\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\"\u0010m\u001a\u00020f8��@��X\u0081.¢\u0006\u0012\n\u0004\bg\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\"\u0010u\u001a\u00020n8��@��X\u0081.¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\u001d\u0010{\u001a\u00020v8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010x\u001a\u0004\by\u0010zR&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0087.¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0085\u0001\u001a\u00020F8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010HR*\u0010\u008d\u0001\u001a\u00030\u0086\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001¨\u0006\u0090\u0001"}, d2 = {"Le/a/a/c/n/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/n/v;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "onStop", "onDetach", "Mz", "Ed", "", "Lcom/truecaller/messaging/data/types/Reaction;", "Lcom/truecaller/data/entity/messaging/Participant;", "reactions", "qc", "(Ljava/util/Map;)V", "A", "jb", "", "visible", "", "count", "gA", "(ZI)V", "ym", "Je", "(Z)V", AnalyticsConstants.SHOW, "io", "rb", "ds", "finish", "Le/a/a/c/r8/b;", "m", "Le/a/a/c/r8/b;", "getViewCacher$truecaller_googlePlayRelease", "()Le/a/a/c/r8/b;", "setViewCacher$truecaller_googlePlayRelease", "(Le/a/a/c/r8/b;)V", "viewCacher", "Le/a/p5/h0;", C22021b.f61237c, "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Le/a/a/c/n/b0;", "f", "Le/a/a/c/n/b0;", "getReportsItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/n/b0;", "setReportsItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/n/b0;)V", "reportsItemPresenter", "Le/a/o2/f;", "g", "Le/a/o2/f;", "groupReadReportsAdapter", "i", "reportsAdapter", "Le/a/c/a/c/h/j;", "n", "Le/a/c/a/c/h/j;", "getToolTipController$truecaller_googlePlayRelease", "()Le/a/c/a/c/h/j;", "setToolTipController$truecaller_googlePlayRelease", "(Le/a/c/a/c/h/j;)V", "toolTipController", "j", "messagesAdapter", "Le/a/a/c/n/f;", "l", "Le/a/a/c/n/f;", "getOutgoingMessageItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/n/f;", "setOutgoingMessageItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/n/f;)V", "outgoingMessageItemPresenter", "Le/a/a/i0;", AbstractC2405c.f7629a, "Le/a/a/i0;", "getMessageSettings", "()Le/a/a/i0;", "setMessageSettings", "(Le/a/a/i0;)V", "messageSettings", "Le/a/a/c/n/i;", "e", "Le/a/a/c/n/i;", "getDeliveredReportsItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/n/i;", "setDeliveredReportsItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/n/i;)V", "deliveredReportsItemPresenter", "Le/a/a/c/n/d;", "k", "Le/a/a/c/n/d;", "getIncomingMessageItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/n/d;", "setIncomingMessageItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/n/d;)V", "incomingMessageItemPresenter", "Le/a/m3/a0;", "o", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/a0;", "binding", "Le/a/a/c/n/u;", "a", "Le/a/a/c/n/u;", "getPresenter", "()Le/a/a/c/n/u;", "setPresenter", "(Le/a/a/c/n/u;)V", "presenter", "h", "groupDeliveredReportsAdapter", "Le/a/a/c/n/l;", "d", "Le/a/a/c/n/l;", "getReadReportsItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/n/l;", "setReadReportsItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/n/l;)V", "readReportsItemPresenter", "<init>", "q", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.n.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a.class */
public final class C5533a extends Fragment implements AbstractC5568v {

    /* renamed from: p */
    public static final /* synthetic */ l[] f18714p = {C22128a.m8621g0(C5533a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentGroupMessageDetailsBinding;", 0)};

    /* renamed from: q */
    public static final C5536e f18715q = new C5536e(null);
    @Inject

    /* renamed from: a */
    public AbstractC5567u f18716a;
    @Inject

    /* renamed from: b */
    public AbstractC19233h0 f18717b;
    @Inject

    /* renamed from: c */
    public AbstractC6392i0 f18718c;
    @Inject

    /* renamed from: d */
    public AbstractC5558l f18719d;
    @Inject

    /* renamed from: e */
    public AbstractC5555i f18720e;
    @Inject

    /* renamed from: f */
    public AbstractC5544b0 f18721f;

    /* renamed from: g */
    public C18898f f18722g;

    /* renamed from: h */
    public C18898f f18723h;

    /* renamed from: i */
    public C18898f f18724i;

    /* renamed from: j */
    public C18898f f18725j;
    @Inject

    /* renamed from: k */
    public AbstractC5547d f18726k;
    @Inject

    /* renamed from: l */
    public AbstractC5551f f18727l;
    @Inject

    /* renamed from: m */
    public C5700b f18728m;
    @Inject

    /* renamed from: n */
    public AbstractC8852j f18729n;

    /* renamed from: o */
    public final ViewBindingProperty f18730o = new C19350a(new C5535d());

    /* renamed from: e.a.a.c.n.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/c/n/a$c.class */
    public static final class C5534c extends m implements s1.z.b.l<View, C5560n> {

        /* renamed from: c */
        public static final C5534c f18731c = new C5534c(0);

        /* renamed from: d */
        public static final C5534c f18732d = new C5534c(1);

        /* renamed from: b */
        public final /* synthetic */ int f18733b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5534c(int i) {
            super(1);
            this.f18733b = i;
        }

        /* renamed from: d */
        public final Object m32985d(Object obj) {
            int i = this.f18733b;
            if (i == 0) {
                View view = (View) obj;
                s1.z.c.l.e(view, ViewAction.VIEW);
                return new C5560n(view);
            } else if (i != 1) {
                throw null;
            } else {
                View view2 = (View) obj;
                s1.z.c.l.e(view2, ViewAction.VIEW);
                return new C5560n(view2);
            }
        }
    }

    /* renamed from: e.a.a.c.n.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a$d.class */
    public static final class C5535d extends m implements s1.z.b.l<C5533a, C18144a0> {
        public C5535d() {
            super(1);
        }

        /* renamed from: d */
        public Object m32984d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = 2131363504;
            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.emptyViewDeliveredTo);
            if (textView != null) {
                i = 2131363505;
                TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.emptyViewReactions);
                if (textView2 != null) {
                    i = 2131363506;
                    TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.emptyViewReadBy);
                    if (textView3 != null) {
                        i = 2131365511;
                        RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvDeliveredTo);
                        if (recyclerView != null) {
                            i = 2131365515;
                            RecyclerView recyclerView2 = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvMessages);
                            if (recyclerView2 != null) {
                                i = 2131365516;
                                RecyclerView recyclerView3 = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvReactions);
                                if (recyclerView3 != null) {
                                    i = 2131365517;
                                    RecyclerView recyclerView4 = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvReadBy);
                                    if (recyclerView4 != null) {
                                        i = 2131365518;
                                        RecyclerView recyclerView5 = (RecyclerView) requireView.findViewById(C2752R.C2754id.rvReports);
                                        if (recyclerView5 != null) {
                                            i = 2131365627;
                                            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.sectionDeliveredTo);
                                            if (linearLayout != null) {
                                                i = 2131365628;
                                                LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C2752R.C2754id.sectionReactions);
                                                if (linearLayout2 != null) {
                                                    i = 2131365629;
                                                    LinearLayout linearLayout3 = (LinearLayout) requireView.findViewById(C2752R.C2754id.sectionReadBy);
                                                    if (linearLayout3 != null) {
                                                        i = 2131366512;
                                                        MaterialToolbar findViewById = requireView.findViewById(2131366512);
                                                        if (findViewById != null) {
                                                            return new C18144a0(requireView, textView, textView2, textView3, recyclerView, recyclerView2, recyclerView3, recyclerView4, recyclerView5, linearLayout, linearLayout2, linearLayout3, findViewById);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.n.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a$e.class */
    public static final class C5536e {
        public C5536e(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.n.a$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a$f.class */
    public static final class C5537f extends m implements s1.z.b.l<View, C5578z> {

        /* renamed from: b */
        public static final C5537f f18734b = new C5537f();

        public C5537f() {
            super(1);
        }

        /* renamed from: d */
        public Object m32983d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            return new C5578z(view);
        }
    }

    /* renamed from: e.a.a.c.n.a$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a$g.class */
    public static final class C5538g extends m implements s1.z.b.l<C5578z, C5578z> {

        /* renamed from: b */
        public static final C5538g f18735b = new C5538g();

        public C5538g() {
            super(1);
        }

        /* renamed from: d */
        public Object m32982d(Object obj) {
            C5578z c5578z = (C5578z) obj;
            s1.z.c.l.e(c5578z, "it");
            return c5578z;
        }
    }

    /* renamed from: e.a.a.c.n.a$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n/a$h.class */
    public static final class View$OnClickListenerC5539h implements View.OnClickListener {
        public View$OnClickListenerC5539h() {
            C5533a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5567u abstractC5567u = C5533a.this.f18716a;
            if (abstractC5567u != null) {
                abstractC5567u.mo32950r0();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: A */
    public void mo32965A() {
        C18898f c18898f = this.f18725j;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("messagesAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: Ed */
    public void mo32964Ed() {
        C18898f c18898f = this.f18723h;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("groupDeliveredReportsAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: Je */
    public void mo32963Je(boolean z) {
        RecyclerView recyclerView = m32986OA().f51093f;
        s1.z.c.l.d(recyclerView, "binding.rvReactions");
        C19286f.m13683U(recyclerView, !z);
        TextView textView = m32986OA().f51089b;
        s1.z.c.l.d(textView, "binding.emptyViewReactions");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: Mz */
    public void mo32962Mz() {
        C18898f c18898f = this.f18722g;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("groupReadReportsAdapter");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C18144a0 m32986OA() {
        return (C18144a0) this.f18730o.m34468b(this, f18714p[0]);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: ds */
    public void mo32961ds(boolean z) {
        LinearLayout linearLayout = m32986OA().f51097j;
        s1.z.c.l.d(linearLayout, "binding.sectionReactions");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: gA */
    public void mo32960gA(boolean z, int i) {
        RecyclerView recyclerView = m32986OA().f51094g;
        s1.z.c.l.d(recyclerView, "binding.rvReadBy");
        C19286f.m13683U(recyclerView, !z);
        TextView textView = m32986OA().f51090c;
        s1.z.c.l.d(textView, "binding.emptyViewReadBy");
        C19286f.m13683U(textView, z);
        TextView textView2 = m32986OA().f51090c;
        s1.z.c.l.d(textView2, "binding.emptyViewReadBy");
        textView2.setText(getString((int) C2752R.string.MessageDetailsReportsRemaining, new Object[]{Integer.valueOf(i)}));
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: io */
    public void mo32959io(boolean z) {
        LinearLayout linearLayout = m32986OA().f51098k;
        s1.z.c.l.d(linearLayout, "binding.sectionReadBy");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: jb */
    public void mo32958jb() {
        C18898f c18898f = this.f18724i;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("reportsAdapter");
            throw null;
        }
    }

    public void onCreate(Bundle bundle) {
        C5533a.super.onCreate(bundle);
        setHasOptionsMenu(true);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        Bundle arguments = getArguments();
        Message message = arguments != null ? (Message) arguments.getParcelable("message") : null;
        s1.z.c.l.c(message);
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("im_group_id") : null;
        Bundle arguments3 = getArguments();
        Participant[] parcelableArray = arguments3 != null ? arguments3.getParcelableArray("participants") : null;
        Participant[] participantArr = parcelableArray;
        if (!(parcelableArray instanceof Participant[])) {
            participantArr = null;
        }
        C5566t c5566t = new C5566t(requireContext2, message, string, participantArr);
        C25225a.m3846s(c5566t, C5566t.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5541b c5541b = new C5541b(c5566t, mo10154s, null);
        this.f18716a = (AbstractC5567u) c5541b.f18745g.get();
        C5566t c5566t2 = c5541b.f18739a;
        AbstractC19233h0 m25928m2 = C10480a.m25928m2(c5566t2);
        Objects.requireNonNull(c5566t2);
        s1.z.c.l.e(m25928m2, "themedResourceProvider");
        new C8243a(m25928m2);
        this.f18717b = C10480a.m25928m2(c5541b.f18739a);
        AbstractC6392i0 mo12565S = c5541b.f18740b.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        this.f18718c = mo12565S;
        this.f18719d = (AbstractC5558l) c5541b.f18746h.get();
        this.f18720e = (AbstractC5555i) c5541b.f18747i.get();
        this.f18721f = (AbstractC5544b0) c5541b.f18748j.get();
        this.f18726k = (AbstractC5547d) c5541b.f18762x.get();
        this.f18727l = (AbstractC5551f) c5541b.f18764z.get();
        this.f18728m = (C5700b) c5541b.f18756r.get();
        this.f18729n = (AbstractC8852j) c5541b.f18760v.get();
        AbstractC27028u lifecycle = getLifecycle();
        AbstractC8852j abstractC8852j = this.f18729n;
        if (abstractC8852j == null) {
            s1.z.c.l.l("toolTipController");
            throw null;
        }
        lifecycle.mo988a(abstractC8852j);
        AbstractC5558l abstractC5558l = this.f18719d;
        if (abstractC5558l == null) {
            s1.z.c.l.l("readReportsItemPresenter");
            throw null;
        }
        C18910r c18910r = new C18910r(abstractC5558l, C2752R.layout.item_group_message_details, C5534c.f18732d, b.d);
        AbstractC5555i abstractC5555i = this.f18720e;
        if (abstractC5555i == null) {
            s1.z.c.l.l("deliveredReportsItemPresenter");
            throw null;
        }
        C18910r c18910r2 = new C18910r(abstractC5555i, C2752R.layout.item_group_message_details, C5534c.f18731c, b.c);
        AbstractC5544b0 abstractC5544b0 = this.f18721f;
        if (abstractC5544b0 == null) {
            s1.z.c.l.l("reportsItemPresenter");
            throw null;
        }
        C18910r c18910r3 = new C18910r(abstractC5544b0, C2752R.layout.item_message_details, C5537f.f18734b, C5538g.f18735b);
        AbstractC5551f abstractC5551f = this.f18727l;
        if (abstractC5551f == null) {
            s1.z.c.l.l("outgoingMessageItemPresenter");
            throw null;
        }
        C18906n c18906n = new C18906n(abstractC5551f, C2752R.C2754id.view_type_message_outgoing, new a(0, this));
        AbstractC5547d abstractC5547d = this.f18726k;
        if (abstractC5547d == null) {
            s1.z.c.l.l("incomingMessageItemPresenter");
            throw null;
        }
        C18907o c18907o = new C18907o(c18906n, new C18906n(abstractC5547d, C2752R.C2754id.view_type_message_incoming, new a(1, this)));
        this.f18722g = new C18898f(c18910r);
        this.f18723h = new C18898f(c18910r2);
        this.f18724i = new C18898f(c18910r3);
        C18898f c18898f = new C18898f(c18907o);
        this.f18725j = c18898f;
        c18898f.setHasStableIds(true);
        C5703e c5703e = new C5703e();
        Context requireContext3 = requireContext();
        s1.z.c.l.d(requireContext3, "requireContext()");
        C5700b c5700b = this.f18728m;
        if (c5700b != null) {
            c5703e.m32773d(requireContext3, c5700b, null);
        } else {
            s1.z.c.l.l("viewCacher");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_group_message_details, viewGroup, false);
    }

    public void onDetach() {
        C5533a.super.onDetach();
        AbstractC5567u abstractC5567u = this.f18716a;
        if (abstractC5567u != null) {
            abstractC5567u.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStart() {
        C5533a.super.onStart();
        AbstractC5567u abstractC5567u = this.f18716a;
        if (abstractC5567u != null) {
            abstractC5567u.onStart();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C5533a.super.onStop();
        AbstractC5567u abstractC5567u = this.f18716a;
        if (abstractC5567u != null) {
            abstractC5567u.onStop();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5533a.super.onViewCreated(view, bundle);
        AbstractC5567u abstractC5567u = this.f18716a;
        if (abstractC5567u == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5567u.mo9029Y0(this);
        m32986OA().f51099l.setNavigationOnClickListener(new View$OnClickListenerC5539h());
        RecyclerView recyclerView = m32986OA().f51094g;
        s1.z.c.l.d(recyclerView, "binding.rvReadBy");
        C18898f c18898f = this.f18722g;
        if (c18898f == null) {
            s1.z.c.l.l("groupReadReportsAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        RecyclerView recyclerView2 = m32986OA().f51091d;
        s1.z.c.l.d(recyclerView2, "binding.rvDeliveredTo");
        C18898f c18898f2 = this.f18723h;
        if (c18898f2 == null) {
            s1.z.c.l.l("groupDeliveredReportsAdapter");
            throw null;
        }
        recyclerView2.setAdapter(c18898f2);
        RecyclerView recyclerView3 = m32986OA().f51092e;
        C18898f c18898f3 = this.f18725j;
        if (c18898f3 == null) {
            s1.z.c.l.l("messagesAdapter");
            throw null;
        }
        recyclerView3.setAdapter(c18898f3);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        recyclerView3.addItemDecoration(new C5475l(requireContext));
        RecyclerView recyclerView4 = m32986OA().f51095h;
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        recyclerView4.addItemDecoration(new C5540a0(context));
        RecyclerView recyclerView5 = m32986OA().f51095h;
        s1.z.c.l.d(recyclerView5, "binding.rvReports");
        C18898f c18898f4 = this.f18724i;
        if (c18898f4 != null) {
            recyclerView5.setAdapter(c18898f4);
        } else {
            s1.z.c.l.l("reportsAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: qc */
    public void mo32957qc(Map<Reaction, ? extends Participant> map) {
        s1.z.c.l.e(map, "reactions");
        RecyclerView recyclerView = m32986OA().f51093f;
        s1.z.c.l.d(recyclerView, "binding.rvReactions");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        AbstractC19233h0 abstractC19233h0 = this.f18717b;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        AbstractC6392i0 abstractC6392i0 = this.f18718c;
        if (abstractC6392i0 != null) {
            recyclerView.setAdapter(new C5587n7(requireContext, abstractC19233h0, abstractC6392i0, map));
        } else {
            s1.z.c.l.l("messageSettings");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: rb */
    public void mo32956rb(boolean z) {
        LinearLayout linearLayout = m32986OA().f51096i;
        s1.z.c.l.d(linearLayout, "binding.sectionDeliveredTo");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5568v
    /* renamed from: ym */
    public void mo32955ym(boolean z, int i) {
        RecyclerView recyclerView = m32986OA().f51091d;
        s1.z.c.l.d(recyclerView, "binding.rvDeliveredTo");
        C19286f.m13683U(recyclerView, !z);
        TextView textView = m32986OA().f51088a;
        s1.z.c.l.d(textView, "binding.emptyViewDeliveredTo");
        C19286f.m13683U(textView, z);
        TextView textView2 = m32986OA().f51088a;
        s1.z.c.l.d(textView2, "binding.emptyViewDeliveredTo");
        textView2.setText(getString((int) C2752R.string.MessageDetailsReportsRemaining, new Object[]{Integer.valueOf(i)}));
    }
}
