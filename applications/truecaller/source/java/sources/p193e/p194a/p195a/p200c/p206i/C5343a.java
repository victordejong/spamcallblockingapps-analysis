package p193e.p194a.p195a.p200c.p206i;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18178p;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� U2\u00020\u00012\u00020\u0002:\u0001+B\u0007¢\u0006\u0004\bT\u0010\u0015J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0015J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001e\u0010\u0019J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b'\u0010\"J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b(\u0010\"J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0015R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104R\u001d\u0010;\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010K\u001a\u00020D8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010S\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006V"}, d2 = {"Le/a/a/c/i/a;", "Le/m/a/g/e/e;", "Le/a/a/c/i/l;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "()V", "", "date", "o0", "(Ljava/lang/String;)V", "text", "Fa", "Ve", "number", "Co", "", AnalyticsConstants.SHOW, "Xb", "(Z)V", "Lcom/truecaller/flashsdk/models/FlashContact;", "flashContact", "K1", "(Lcom/truecaller/flashsdk/models/FlashContact;)V", "ug", "zv", "s", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;", AbstractC2405c.f7629a, "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;", "getInitiateCallHelper", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;", "setInitiateCallHelper", "(Lcom/truecaller/calling/initiate_call/InitiateCallHelper;)V", "initiateCallHelper", "Le/a/o2/f;", "e", "Le/a/o2/f;", "callsHistoryAdapter", "Le/a/m3/p;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/p;", "binding", "Le/a/a/c/i/j;", "a", "Le/a/a/c/i/j;", "PA", "()Le/a/a/c/i/j;", "setPresenter", "(Le/a/a/c/i/j;)V", "presenter", "Le/a/y/c/b;", "d", "Le/a/y/c/b;", "getFlashManager", "()Le/a/y/c/b;", "setFlashManager", "(Le/a/y/c/b;)V", "flashManager", "Le/a/a/c/i/g;", C22021b.f61237c, "Le/a/a/c/i/g;", "getCallsHistoryItemPresenter", "()Le/a/a/c/i/g;", "setCallsHistoryItemPresenter", "(Le/a/a/c/i/g;)V", "callsHistoryItemPresenter", "<init>", "h", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.i.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/a.class */
public final class C5343a extends e implements AbstractC5363l {

    /* renamed from: g */
    public static final /* synthetic */ l[] f18276g = {C22128a.m8621g0(C5343a.class, "binding", "getBinding()Lcom/truecaller/databinding/CallsHistoryBottomSheetBinding;", 0)};

    /* renamed from: h */
    public static final C5346c f18277h = new C5346c(null);
    @Inject

    /* renamed from: a */
    public AbstractC5360j f18278a;
    @Inject

    /* renamed from: b */
    public AbstractC5357g f18279b;
    @Inject

    /* renamed from: c */
    public InitiateCallHelper f18280c;
    @Inject

    /* renamed from: d */
    public AbstractC21631b f18281d;

    /* renamed from: e */
    public C18898f f18282e;

    /* renamed from: f */
    public final ViewBindingProperty f18283f = new C19350a(new C5345b());

    /* renamed from: e.a.a.c.i.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/i/a$a.class */
    public static final class View$OnClickListenerC5344a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f18284a;

        /* renamed from: b */
        public final /* synthetic */ Object f18285b;

        public View$OnClickListenerC5344a(int i, Object obj) {
            this.f18284a = i;
            this.f18285b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f18284a;
            if (i == 0) {
                ((C5343a) this.f18285b).m33275PA().mo33263i6();
            } else if (i == 1) {
                ((C5343a) this.f18285b).m33275PA().mo33262zh();
            } else if (i != 2) {
                throw null;
            } else {
                ((C5343a) this.f18285b).m33275PA().mo33264O6();
            }
        }
    }

    /* renamed from: e.a.a.c.i.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/a$b.class */
    public static final class C5345b extends m implements s1.z.b.l<C5343a, C18178p> {
        public C5345b() {
            super(1);
        }

        /* renamed from: d */
        public Object m33274d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362599;
            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.callButton);
            if (appCompatImageView != null) {
                i = 2131362976;
                TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.count);
                if (textView != null) {
                    i = 2131363033;
                    TextView textView2 = (TextView) requireView.findViewById(2131363033);
                    if (textView2 != null) {
                        i = 2131363364;
                        View findViewById = requireView.findViewById(2131363364);
                        if (findViewById != null) {
                            i = 2131363754;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.flashButton);
                            if (appCompatImageView2 != null) {
                                i = 2131365378;
                                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(2131365378);
                                if (recyclerView != null) {
                                    i = 2131366907;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.voipButton);
                                    if (appCompatImageView3 != null) {
                                        return new C18178p((RelativeLayout) requireView, appCompatImageView, textView, textView2, findViewById, appCompatImageView2, recyclerView, appCompatImageView3);
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

    /* renamed from: e.a.a.c.i.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/a$c.class */
    public static final class C5346c {
        public C5346c(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.i.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/a$d.class */
    public static final class C5347d extends m implements s1.z.b.l<View, C5364m> {

        /* renamed from: b */
        public static final C5347d f18286b = new C5347d();

        public C5347d() {
            super(1);
        }

        /* renamed from: d */
        public Object m33273d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "itemView");
            return new C5364m(view);
        }
    }

    /* renamed from: e.a.a.c.i.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/a$e.class */
    public static final class C5348e extends m implements s1.z.b.l<C5364m, AbstractC5359i> {

        /* renamed from: b */
        public static final C5348e f18287b = new C5348e();

        public C5348e() {
            super(1);
        }

        /* renamed from: d */
        public Object m33272d(Object obj) {
            C5364m c5364m = (C5364m) obj;
            s1.z.c.l.e(c5364m, "callHistoryViewHolder");
            return c5364m;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: Co */
    public void mo33261Co(String str) {
        s1.z.c.l.e(str, "number");
        InitiateCallHelper initiateCallHelper = this.f18280c;
        if (initiateCallHelper == null) {
            s1.z.c.l.l("initiateCallHelper");
            throw null;
        }
        s1.z.c.l.e("conversation", "analyticsContext");
        initiateCallHelper.m35744b(new InitiateCallHelper.CallOptions(str, "conversation", null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: Fa */
    public void mo33260Fa(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m33276OA().f51385b;
        s1.z.c.l.d(textView, "binding.count");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: K1 */
    public void mo33259K1(FlashContact flashContact) {
        s1.z.c.l.e(flashContact, "flashContact");
        AbstractC21631b abstractC21631b = this.f18281d;
        if (abstractC21631b == null) {
            s1.z.c.l.l("flashManager");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC21631b.mo9297u(requireContext, Long.parseLong(flashContact.f11999a), flashContact.f12000b, "conversation");
    }

    /* renamed from: OA */
    public final C18178p m33276OA() {
        return (C18178p) this.f18283f.m34468b(this, f18276g[0]);
    }

    /* renamed from: PA */
    public final AbstractC5360j m33275PA() {
        AbstractC5360j abstractC5360j = this.f18278a;
        if (abstractC5360j != null) {
            return abstractC5360j;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: Ve */
    public void mo33258Ve() {
        C18898f c18898f = this.f18282e;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("callsHistoryAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: Xb */
    public void mo33257Xb(boolean z) {
        AppCompatImageView appCompatImageView = m33276OA().f51384a;
        s1.z.c.l.d(appCompatImageView, "binding.callButton");
        C19286f.m13683U(appCompatImageView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: o0 */
    public void mo33256o0(String str) {
        s1.z.c.l.e(str, "date");
        TextView textView = m33276OA().f51386c;
        s1.z.c.l.d(textView, "binding.date");
        textView.setText(str);
    }

    public void onAttach(Context context) {
        Participant participant;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C5343a.super.onAttach(context);
        Bundle arguments = getArguments();
        if (arguments == null || (participant = (Participant) arguments.getParcelable("ArgumentParticipant")) == null) {
            throw new IllegalStateException();
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null) {
            throw new IllegalStateException();
        }
        long j = arguments2.getLong("ArgumentStartDate");
        Bundle arguments3 = getArguments();
        if (arguments3 == null) {
            throw new IllegalStateException();
        }
        long j2 = arguments3.getLong("ArgumentEndDate");
        Bundle arguments4 = getArguments();
        boolean z = arguments4 != null ? arguments4.getBoolean("ArgumentVoipCapable") : false;
        Bundle arguments5 = getArguments();
        boolean z2 = arguments5 != null ? arguments5.getBoolean("ArgumentIsFlash") : false;
        Bundle arguments6 = getArguments();
        FlashContact flashContact = arguments6 != null ? (FlashContact) arguments6.getParcelable("ArgumentFlashContact") : null;
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C5351c c5351c = new C5351c(context, participant, j, j2, z, z2, flashContact);
        C25225a.m3846s(c5351c, C5351c.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5367n c5367n = new C5367n(c5351c, mo10154s, null);
        this.f18278a = (AbstractC5360j) c5367n.f18348i.get();
        this.f18279b = (AbstractC5357g) c5367n.f18350k.get();
        InitiateCallHelper mo12389f3 = c5367n.f18341b.mo12389f3();
        Objects.requireNonNull(mo12389f3, "Cannot return null from a non-@Nullable component method");
        this.f18280c = mo12389f3;
        AbstractC21631b mo12805A3 = c5367n.f18341b.mo12805A3();
        Objects.requireNonNull(mo12805A3, "Cannot return null from a non-@Nullable component method");
        this.f18281d = mo12805A3;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.calls_history_bottom_sheet, viewGroup, false);
    }

    public void onDestroy() {
        C5343a.super.onDestroy();
        AbstractC5360j abstractC5360j = this.f18278a;
        if (abstractC5360j != null) {
            abstractC5360j.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5343a.super.onViewCreated(view, bundle);
        AbstractC5360j abstractC5360j = this.f18278a;
        if (abstractC5360j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5360j.mo9029Y0(this);
        AbstractC5357g abstractC5357g = this.f18279b;
        if (abstractC5357g == null) {
            s1.z.c.l.l("callsHistoryItemPresenter");
            throw null;
        }
        this.f18282e = new C18898f(new C18910r(abstractC5357g, C2752R.layout.calls_history_bottom_sheet_item, C5347d.f18286b, C5348e.f18287b));
        RecyclerView recyclerView = m33276OA().f51389f;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        C18898f c18898f = this.f18282e;
        if (c18898f == null) {
            s1.z.c.l.l("callsHistoryAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        m33276OA().f51384a.setOnClickListener(new View$OnClickListenerC5344a(0, this));
        m33276OA().f51390g.setOnClickListener(new View$OnClickListenerC5344a(1, this));
        m33276OA().f51388e.setOnClickListener(new View$OnClickListenerC5344a(2, this));
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: s */
    public void mo33255s() {
        dismiss();
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: ug */
    public void mo33254ug(boolean z) {
        AppCompatImageView appCompatImageView = m33276OA().f51390g;
        s1.z.c.l.d(appCompatImageView, "binding.voipButton");
        C19286f.m13683U(appCompatImageView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5363l
    /* renamed from: zv */
    public void mo33253zv(boolean z) {
        AppCompatImageView appCompatImageView = m33276OA().f51388e;
        s1.z.c.l.d(appCompatImageView, "binding.flashButton");
        C19286f.m13683U(appCompatImageView, z);
    }
}
