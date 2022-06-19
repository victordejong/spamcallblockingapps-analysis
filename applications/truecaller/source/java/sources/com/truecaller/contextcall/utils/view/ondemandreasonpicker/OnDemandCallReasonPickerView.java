package com.truecaller.contextcall.utils.view.ondemandreasonpicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.MessageType;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18671e;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18675f;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18676g;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18684n;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18665a;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18670d;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18678i;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18681l;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18683m;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18685o;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18689r;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.View$OnClickListenerC18679j;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.View$OnClickListenerC18680k;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1102o.C18797j;
import p193e.p194a.p1080o.p1110q.AbstractC18889b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.i;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u000fJ\u0019\u0010\u0018\u001a\u00020\u00062\b\b\u0001\u0010\u0017\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u000fJ\u001d\u0010\u001c\u001a\u00020\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u000fJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010\u000fJ\u0019\u0010&\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010*\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010%\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0006H\u0014¢\u0006\u0004\b/\u0010\u000fR\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R*\u0010;\u001a\u00020(2\u0006\u00104\u001a\u00020(8\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u001d\u0010E\u001a\u00020@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR$\u0010M\u001a\u0004\u0018\u00010F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010U\u001a\u00020N8��@��X\u0080.¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0016\u0010Y\u001a\u00020V8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bW\u0010XR\"\u0010a\u001a\u00020Z8��@��X\u0080.¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u0016\u0010e\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR$\u0010k\u001a\u0004\u0018\u00010$8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010'¨\u0006l"}, d2 = {"Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/o/b/a/a/h;", "Le/a/o/b/a/a/p;", "Le/a/o/b/a/a/r;", "theme", "Ls1/s;", "setupViewTheme", "(Le/a/o/b/a/a/r;)V", "", "Le/a/o/b/a/a/e;", "getDebugCallReason", "()Ljava/util/List;", "setupReasonList", "onAttachedToWindow", "()V", "Landroid/view/View;", "changedView", "", RemoteMessageConst.Notification.VISIBILITY, "onVisibilityChanged", "(Landroid/view/View;I)V", "t0", "title", "setTitle", "(I)V", "R", "list", "p0", "(Ljava/util/List;)V", "S", "Le/a/o/n/a;", "reason", "p1", "(Le/a/o/n/a;)V", "V", "", "message", "O", "(Ljava/lang/String;)V", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "onDemandMessageSource", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "Lcom/truecaller/data/entity/CallContextMessage;", "f0", "(Lcom/truecaller/data/entity/CallContextMessage;)V", "onDetachedFromWindow", "Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;", "x", "Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;", "viewTheme", "value", "C", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "getSource", "()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "setSource", "(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V", "source", "Landroid/view/ViewPropertyAnimator;", "z", "Landroid/view/ViewPropertyAnimator;", "animator", "Le/a/o/o/j;", "v", "Ls1/g;", "getBinding", "()Le/a/o/o/j;", "binding", "Le/a/o/b/a/a/f;", "A", "Le/a/o/b/a/a/f;", "getOnDemandReasonPickerCallback", "()Le/a/o/b/a/a/f;", "setOnDemandReasonPickerCallback", "(Le/a/o/b/a/a/f;)V", "onDemandReasonPickerCallback", "Le/a/o/b/a/a/g;", "t", "Le/a/o/b/a/a/g;", "getPresenter$context_call_release", "()Le/a/o/b/a/a/g;", "setPresenter$context_call_release", "(Le/a/o/b/a/a/g;)V", "presenter", "Le/a/o/b/a/a/d;", "w", "Le/a/o/b/a/a/d;", "reasonsAdapter", "Le/a/o/b/a/a/n;", "u", "Le/a/o/b/a/a/n;", "getOnDemandCallReasonThemeProvider$context_call_release", "()Le/a/o/b/a/a/n;", "setOnDemandCallReasonThemeProvider$context_call_release", "(Le/a/o/b/a/a/n;)V", "onDemandCallReasonThemeProvider", "", "y", "Z", "playDismissAnimation", "B", "Ljava/lang/String;", "getCallNameOrNumberToDisplay", "()Ljava/lang/String;", "setCallNameOrNumberToDisplay", "callNameOrNumberToDisplay", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView.class */
public final class OnDemandCallReasonPickerView extends ConstraintLayout implements AbstractC18677h, AbstractC18686p {

    /* renamed from: A */
    public AbstractC18675f f11457A;

    /* renamed from: B */
    public String f11458B;

    /* renamed from: C */
    public OnDemandMessageSource f11459C = new OnDemandMessageSource.DetailsScreen(null, 1, null);

    /* renamed from: t */
    public AbstractC18676g f11460t;

    /* renamed from: u */
    public AbstractC18684n f11461u;

    /* renamed from: v */
    public final g f11462v;

    /* renamed from: w */
    public C18670d f11463w;

    /* renamed from: x */
    public OnDemandCallReasonPickerThemesConfig f11464x;

    /* renamed from: y */
    public boolean f11465y;

    /* renamed from: z */
    public ViewPropertyAnimator f11466z;

    /* renamed from: com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$a.class */
    public static final class C3793a extends AnimatorListenerAdapter {
        public C3793a() {
            OnDemandCallReasonPickerView.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (OnDemandCallReasonPickerView.this.isAttachedToWindow()) {
                C19286f.m13689O(OnDemandCallReasonPickerView.this);
            }
        }
    }

    /* renamed from: com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView$b.class */
    public static final class C3794b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ OnDemandMessageSource f11469c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3794b(OnDemandMessageSource onDemandMessageSource) {
            super(0);
            OnDemandCallReasonPickerView.this = r4;
            this.f11469c = onDemandMessageSource;
        }

        public Object invoke() {
            int i;
            OnDemandCallReasonPickerView onDemandCallReasonPickerView = OnDemandCallReasonPickerView.this;
            onDemandCallReasonPickerView.f11459C = this.f11469c;
            AbstractC18676g presenter$context_call_release = onDemandCallReasonPickerView.getPresenter$context_call_release();
            OnDemandMessageSource source = OnDemandCallReasonPickerView.this.getSource();
            C18681l c18681l = (C18681l) presenter$context_call_release;
            Objects.requireNonNull(c18681l);
            l.e(source, "source");
            if (source instanceof OnDemandMessageSource.SecondCall) {
                i = ((OnDemandMessageSource.SecondCall) source).getType() == OnDemandMessageSource.SecondCall.Type.MissedCall ? C3771R.string.context_call_back_with_call_reason : C3771R.string.context_call_again_with_call_reason;
            } else if (source instanceof OnDemandMessageSource.MidCall) {
                i = C3771R.string.context_call_add_call_reason;
            } else if (!(source instanceof OnDemandMessageSource.DetailsScreen)) {
                throw new i();
            } else {
                i = C3771R.string.context_call_back_with_call_reason;
            }
            AbstractC18677h abstractC18677h = (AbstractC18677h) c18681l.f57683a;
            if (abstractC18677h != null) {
                abstractC18677h.setTitle(i);
            }
            c18681l.m14637Ij();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnDemandCallReasonPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        OnDemandCallReasonPickerThemesConfig onDemandCallReasonPickerThemesConfig;
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11462v = C25225a.m3982O1(h.c, new C18678i(this, context));
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        Object m3820x0 = C25225a.m3820x0(context2.getApplicationContext(), AbstractC18889b.class);
        l.d(m3820x0, "EntryPointAccessors.from…llEntryPoint::class.java)");
        AbstractC18889b abstractC18889b = (AbstractC18889b) m3820x0;
        this.f11460t = abstractC18889b.mo12327j7();
        this.f11461u = abstractC18889b.mo12519V6();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3771R.styleable.OnDemandCallReasonPickerView);
        int i = obtainStyledAttributes.getInt(C3771R.styleable.OnDemandCallReasonPickerView_theme_config, OnDemandCallReasonPickerThemesConfig.Unknown.getValue());
        OnDemandCallReasonPickerThemesConfig[] values = OnDemandCallReasonPickerThemesConfig.values();
        int i2 = 0;
        while (true) {
            if (i2 >= 5) {
                onDemandCallReasonPickerThemesConfig = OnDemandCallReasonPickerThemesConfig.Unknown;
                break;
            }
            onDemandCallReasonPickerThemesConfig = values[i2];
            if (onDemandCallReasonPickerThemesConfig.getValue() == i) {
                break;
            }
            i2++;
        }
        this.f11464x = onDemandCallReasonPickerThemesConfig;
        this.f11465y = obtainStyledAttributes.getBoolean(C3771R.styleable.OnDemandCallReasonPickerView_play_dismiss_animation, false);
        obtainStyledAttributes.recycle();
        C18797j binding = getBinding();
        l.d(binding, "binding");
        binding.f52809a.setBackgroundResource(C3771R.C3772drawable.context_call_on_demand_reason_picker_bg);
        C18797j binding2 = getBinding();
        l.d(binding2, "binding");
        binding2.f52809a.setPadding(0, 0, 0, (int) getResources().getDimension(C3771R.dimen.context_call_double_spacing));
    }

    private final C18797j getBinding() {
        return (C18797j) this.f11462v.getValue();
    }

    private final List<AbstractC18671e> getDebugCallReason() {
        List T = s1.u.i.T(new String[]{"It's important ��", "Hello ���� I have a question", "Lorium liqsum"});
        ArrayList arrayList = new ArrayList(C25225a.m4004J(T, 10));
        int i = 0;
        for (Object obj : T) {
            if (i < 0) {
                s1.u.i.N0();
                throw null;
            }
            arrayList.add(new AbstractC18671e.C18673b(new C18787a(i, i, (String) obj, PredefinedCallReasonType.Predefined)));
            i++;
        }
        return arrayList;
    }

    private final void setupReasonList(C18689r c18689r) {
        this.f11463w = new C18670d(c18689r, this);
        RecyclerView recyclerView = getBinding().f52812d;
        Context context = recyclerView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        recyclerView.addItemDecoration(new C18665a(context));
        C18670d c18670d = this.f11463w;
        if (c18670d != null) {
            recyclerView.setAdapter(c18670d);
        } else {
            l.l("reasonsAdapter");
            throw null;
        }
    }

    private final void setupViewTheme(C18689r c18689r) {
        C18797j binding = getBinding();
        binding.f52810b.setColorFilter(c18689r.f52537b, PorterDuff.Mode.MULTIPLY);
        binding.f52814f.setColorFilter(c18689r.f52536a, PorterDuff.Mode.MULTIPLY);
        binding.f52813e.setTextColor(c18689r.f52536a);
        binding.f52811c.setColorFilter(c18689r.f52537b, PorterDuff.Mode.MULTIPLY);
        View view = binding.f52809a;
        l.d(view, "root");
        Drawable background = view.getBackground();
        Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
        ((GradientDrawable) background).setColor(c18689r.f52538c);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p
    /* renamed from: O */
    public void mo14629O(String str) {
        AbstractC18676g abstractC18676g = this.f11460t;
        if (abstractC18676g == null) {
            l.l("presenter");
            throw null;
        }
        OnDemandMessageSource source = getSource();
        C18681l c18681l = (C18681l) abstractC18676g;
        Objects.requireNonNull(c18681l);
        l.e(source, "source");
        AbstractC18677h abstractC18677h = (AbstractC18677h) c18681l.f57683a;
        if (abstractC18677h == null) {
            return;
        }
        abstractC18677h.mo14642T(str, source);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: R */
    public void mo14644R() {
        C19286f.m13689O(this);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: S */
    public void mo14643S() {
        AbstractC18675f abstractC18675f = this.f11457A;
        if (abstractC18675f != null) {
            abstractC18675f.mo14645e();
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: T */
    public void mo14642T(String str, OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "onDemandMessageSource");
        AbstractC18675f abstractC18675f = this.f11457A;
        if (abstractC18675f != null) {
            abstractC18675f.mo14649a(str, onDemandMessageSource);
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: V */
    public void mo14641V() {
        AbstractC18675f abstractC18675f = this.f11457A;
        if (abstractC18675f != null) {
            abstractC18675f.mo14647c();
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: f0 */
    public void mo14640f0(CallContextMessage callContextMessage) {
        l.e(callContextMessage, "message");
        AbstractC18675f abstractC18675f = this.f11457A;
        if (abstractC18675f != null) {
            abstractC18675f.mo14648b(callContextMessage);
        }
    }

    public String getCallNameOrNumberToDisplay() {
        return this.f11458B;
    }

    public final AbstractC18684n getOnDemandCallReasonThemeProvider$context_call_release() {
        AbstractC18684n abstractC18684n = this.f11461u;
        if (abstractC18684n != null) {
            return abstractC18684n;
        }
        l.l("onDemandCallReasonThemeProvider");
        throw null;
    }

    public final AbstractC18675f getOnDemandReasonPickerCallback() {
        return this.f11457A;
    }

    public final AbstractC18676g getPresenter$context_call_release() {
        AbstractC18676g abstractC18676g = this.f11460t;
        if (abstractC18676g != null) {
            return abstractC18676g;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    public OnDemandMessageSource getSource() {
        return this.f11459C;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            C18685o c18685o = new C18685o();
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            setupReasonList(c18685o.m14630a(context, this.f11464x));
            mo14639p0(getDebugCallReason());
            return;
        }
        AbstractC18684n abstractC18684n = this.f11461u;
        if (abstractC18684n == null) {
            l.l("onDemandCallReasonThemeProvider");
            throw null;
        }
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        C18689r m14630a = ((C18685o) abstractC18684n).m14630a(context2, this.f11464x);
        setupReasonList(m14630a);
        setupViewTheme(m14630a);
        AbstractC18676g abstractC18676g = this.f11460t;
        if (abstractC18676g == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC18676g).f57683a = this;
        getBinding().f52810b.setOnClickListener(new View$OnClickListenerC18679j(this));
        getBinding().f52811c.setOnClickListener(new View$OnClickListenerC18680k(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPropertyAnimator viewPropertyAnimator = this.f11466z;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        AbstractC18676g abstractC18676g = this.f11460t;
        if (abstractC18676g != null) {
            ((AbstractC20574a) abstractC18676g).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        l.e(view, "changedView");
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            AbstractC18676g abstractC18676g = this.f11460t;
            if (abstractC18676g != null) {
                ((C18681l) abstractC18676g).m14637Ij();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: p0 */
    public void mo14639p0(List<? extends AbstractC18671e> list) {
        l.e(list, "list");
        C18670d c18670d = this.f11463w;
        if (c18670d == null) {
            l.l("reasonsAdapter");
            throw null;
        }
        Objects.requireNonNull(c18670d);
        l.e(list, "list");
        List<AbstractC18671e> list2 = c18670d.f52511a;
        list2.clear();
        list2.addAll(list);
        c18670d.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18686p
    /* renamed from: p1 */
    public void mo14628p1(C18787a c18787a) {
        String str;
        OnDemandMessageSource source;
        l.e(c18787a, "reason");
        AbstractC18676g abstractC18676g = this.f11460t;
        if (abstractC18676g == null) {
            l.l("presenter");
            throw null;
        }
        C18681l c18681l = (C18681l) abstractC18676g;
        Objects.requireNonNull(c18681l);
        l.e(c18787a, "reason");
        AbstractC18677h abstractC18677h = (AbstractC18677h) c18681l.f57683a;
        OnDemandMessageSource.MidCall source2 = abstractC18677h != null ? abstractC18677h.getSource() : null;
        if (source2 instanceof OnDemandMessageSource.SecondCall) {
            str = source2.getNormalizedNumber();
        } else if (!(source2 instanceof OnDemandMessageSource.MidCall)) {
            if (!(source2 instanceof OnDemandMessageSource.DetailsScreen)) {
                throw new Exception("number not provided");
            }
            return;
        } else {
            str = source2.getNormalizedNumber();
        }
        AbstractC18677h abstractC18677h2 = (AbstractC18677h) c18681l.f57683a;
        CallContextMessage m15579r = (abstractC18677h2 == null || (source = abstractC18677h2.getSource()) == null) ? null : C17891a1.C17902k.m15579r(c18681l.f52524g, null, str, c18787a.f52776c, C17891a1.C17902k.m15640V(source), new MessageType.Preset(c18787a.f52774a), source.getAnalyticsContext(), 1, null);
        if (m15579r == null) {
            return;
        }
        AbstractC18677h abstractC18677h3 = (AbstractC18677h) c18681l.f57683a;
        if ((abstractC18677h3 != null ? abstractC18677h3.getSource() : null) instanceof OnDemandMessageSource.MidCall) {
            d.w2(c18681l, (f) null, (j0) null, new C18683m(c18681l, m15579r, null), 3, (Object) null);
            return;
        }
        AbstractC18677h abstractC18677h4 = (AbstractC18677h) c18681l.f57683a;
        if (abstractC18677h4 == null) {
            return;
        }
        abstractC18677h4.mo14640f0(m15579r);
    }

    public void setCallNameOrNumberToDisplay(String str) {
        this.f11458B = str;
    }

    public final void setOnDemandCallReasonThemeProvider$context_call_release(AbstractC18684n abstractC18684n) {
        l.e(abstractC18684n, "<set-?>");
        this.f11461u = abstractC18684n;
    }

    public final void setOnDemandReasonPickerCallback(AbstractC18675f abstractC18675f) {
        this.f11457A = abstractC18675f;
    }

    public final void setPresenter$context_call_release(AbstractC18676g abstractC18676g) {
        l.e(abstractC18676g, "<set-?>");
        this.f11460t = abstractC18676g;
    }

    public void setSource(OnDemandMessageSource onDemandMessageSource) {
        l.e(onDemandMessageSource, "value");
        C19286f.m13656w(this, new C3794b(onDemandMessageSource));
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    public void setTitle(int i) {
        getBinding().f52813e.setText(i);
    }

    @Override // p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18677h
    /* renamed from: t0 */
    public void mo14638t0() {
        ViewPropertyAnimator animate = animate();
        animate.translationY(getHeight());
        animate.alpha(0.0f);
        animate.setDuration(300L);
        animate.setListener(new C3793a());
        animate.start();
        this.f11466z = animate;
    }
}
