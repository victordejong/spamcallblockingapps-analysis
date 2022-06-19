package com.truecaller.premium.p173ui.embedded;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.premium.C4334R;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.p173ui.friendpromo.PremiumFriendUpgradedPromoView;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import e.f.a.n.q.d.y;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.AbstractC16931g2;
import p193e.p194a.p1011l.C16880f2;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.AbstractC17018f;
import p193e.p194a.p1011l.p1033v2.p1035g.C17264a;
import p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17270c;
import p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d;
import p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17278i;
import p193e.p194a.p1011l.p1033v2.p1036h.C17266a;
import p193e.p194a.p1011l.p1033v2.p1036h.C17269b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0014¢\u0006\u0004\b\r\u0010\fJ!\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0017\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b%\u0010$J\u0017\u0010'\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u0019H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0016¢\u0006\u0004\b)\u0010\fJ\u0017\u0010,\u001a\u00020\b2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J1\u00101\u001a\u00020\b2\u0006\u0010.\u001a\u00020\u00192\b\b\u0001\u0010/\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\bH\u0016¢\u0006\u0004\b3\u0010\fJ\u000f\u00104\u001a\u00020\bH\u0016¢\u0006\u0004\b4\u0010\fJ\u001b\u00106\u001a\u00020\b2\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00020F0\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u0010HR\"\u0010P\u001a\u00020J8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR$\u0010X\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u0016\u0010Z\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u00109R\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\"\u0010e\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010d¨\u0006f"}, d2 = {"Lcom/truecaller/premium/ui/embedded/EmbeddedPurchaseView;", "Landroid/widget/LinearLayout;", "Le/a/l/v2/h/d;", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "Le/a/l/v2/i/a/b;", "kenyaButton", "Ls1/s;", "setKenyaButton", "(Le/a/l/v2/i/a/b;)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Le/a/l/v2/i/a/d;", "buttons", "Ug", "(Le/a/l/v2/i/a/d;Le/a/l/v2/i/a/b;)V", "", "Lcom/truecaller/data/entity/Contact;", "contactsForPromo", "", "totalNumber", "Q2", "(Ljava/util/List;I)V", "", "topImage", "Le/a/l/n2/f;", "subscription", "subscriptionButton", "disclaimer", "sv", "(Ljava/lang/String;Le/a/l/n2/f;Le/a/l/v2/i/a/b;Ljava/lang/String;)V", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "m7", "(Lcom/truecaller/premium/PremiumLaunchContext;)V", "setLaunchContext", "message", "setErrorMessage", "(Ljava/lang/String;)V", "a3", "", AnalyticsConstants.SHOW, "g2", "(Z)V", "promptText", "iconRes", "button", "Qy", "(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V", "ge", "Xr", "layout", C22021b.f61237c, "(Ljava/lang/Integer;)V", "f", "I", "contentLayout", "Le/a/l/o2/f;", "d", "Le/a/l/o2/f;", "getConsumablePurchasePrompter", "()Le/a/l/o2/f;", "setConsumablePurchasePrompter", "(Le/a/l/o2/f;)V", "consumablePurchasePrompter", "h", "Ljava/lang/String;", "fallBackText", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "e", "Ljava/util/List;", "subscriptionButtonViews", "Le/a/l/v2/h/c;", "Le/a/l/v2/h/c;", "getPresenter", "()Le/a/l/v2/h/c;", "setPresenter", "(Le/a/l/v2/h/c;)V", "presenter", "Le/a/l/v2/h/i;", "g", "Le/a/l/v2/h/i;", "getCallBack", "()Le/a/l/v2/h/i;", "setCallBack", "(Le/a/l/v2/h/i;)V", "callBack", "a", "defaultLayout", "i", "Z", "shouldUseTruecallerXTheme", "Le/a/l/a2;", AbstractC2405c.f7629a, "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.embedded.EmbeddedPurchaseView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/embedded/EmbeddedPurchaseView.class */
public final class EmbeddedPurchaseView extends LinearLayout implements AbstractC17271d {

    /* renamed from: a */
    public final int f14286a;
    @Inject

    /* renamed from: b */
    public AbstractC17270c f14287b;
    @Inject

    /* renamed from: c */
    public AbstractC16613a2 f14288c;
    @Inject

    /* renamed from: d */
    public AbstractC17018f f14289d;

    /* renamed from: e */
    public List<SubscriptionButtonView> f14290e;

    /* renamed from: f */
    public final int f14291f;

    /* renamed from: g */
    public AbstractC17278i f14292g;

    /* renamed from: h */
    public String f14293h;

    /* renamed from: i */
    public boolean f14294i;

    /* renamed from: com.truecaller.premium.ui.embedded.EmbeddedPurchaseView$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/embedded/EmbeddedPurchaseView$a.class */
    public static final class View$OnClickListenerC4362a implements View.OnClickListener {
        public View$OnClickListenerC4362a() {
            EmbeddedPurchaseView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EmbeddedPurchaseView.this.getPresenter().mo16307Db();
        }
    }

    /* renamed from: com.truecaller.premium.ui.embedded.EmbeddedPurchaseView$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/embedded/EmbeddedPurchaseView$b.class */
    public static final class View$OnClickListenerC4363b implements View.OnClickListener {
        public View$OnClickListenerC4363b() {
            EmbeddedPurchaseView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EmbeddedPurchaseView.this.getPresenter().mo16307Db();
        }
    }

    /* renamed from: com.truecaller.premium.ui.embedded.EmbeddedPurchaseView$c */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/embedded/EmbeddedPurchaseView$c.class */
    public static final class C4364c extends m implements l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ C17280b f14297b;

        /* renamed from: c */
        public final /* synthetic */ EmbeddedPurchaseView f14298c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4364c(C17280b c17280b, EmbeddedPurchaseView embeddedPurchaseView) {
            super(1);
            this.f14297b = c17280b;
            this.f14298c = embeddedPurchaseView;
        }

        /* renamed from: d */
        public Object m34805d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            this.f14298c.getPresenter().mo16296k4(this.f14297b);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.premium.ui.embedded.EmbeddedPurchaseView$d */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/embedded/EmbeddedPurchaseView$d.class */
    public static final class C4365d extends m implements l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ EmbeddedPurchaseView f14299b;

        /* renamed from: c */
        public final /* synthetic */ C16993f f14300c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4365d(C17280b c17280b, EmbeddedPurchaseView embeddedPurchaseView, C16993f c16993f) {
            super(1);
            this.f14299b = embeddedPurchaseView;
            this.f14300c = c16993f;
        }

        /* renamed from: d */
        public Object m34804d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            this.f14299b.getPresenter().mo16297Y7(this.f14300c);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmbeddedPurchaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String str;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        boolean z = false;
        int i = C4334R.layout.layout_tcx_subscription_buttons_wvm;
        this.f14286a = i;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4334R.styleable.EmbeddedPurchaseView, 0, 0);
            s1.z.c.l.d(obtainStyledAttributes, "context.obtainStyledAttr…beddedPurchaseView, 0, 0)");
            String string = obtainStyledAttributes.getString(C4334R.styleable.EmbeddedPurchaseView_embeddedSubsButtonContext);
            i = obtainStyledAttributes.getResourceId(C4334R.styleable.EmbeddedPurchaseView_embeddedSubsButtonsLayout, i);
            String string2 = obtainStyledAttributes.getString(C4334R.styleable.EmbeddedPurchaseView_embeddedSubsButtonsFallBackText);
            this.f14293h = string2 == null ? getResources().getString(C4334R.string.PremiumTitleNonPremium) : string2;
            obtainStyledAttributes.recycle();
            str = string;
        } else {
            str = null;
        }
        this.f14291f = i;
        setOrientation(1);
        Resources resources = getResources();
        if (resources != null) {
            int dimensionPixelSize = resources.getDimensionPixelSize(C4334R.dimen.tcx_embedded_purchase_padding);
            setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        }
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setIndeterminate(true);
        addView(progressBar);
        s1.z.c.l.e(context, "$this$premiumSupport");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.premium.PremiumSupportProvider");
        C16880f2 mo16751D = ((AbstractC16931g2) applicationContext).mo16751D();
        Activity activity = getActivity();
        Objects.requireNonNull(mo16751D);
        s1.z.c.l.e(this, ViewAction.VIEW);
        s1.z.c.l.e(activity, "activity");
        C17269b c17269b = new C17269b(activity);
        TrueApp m36032b0 = TrueApp.m36032b0();
        Objects.requireNonNull(m36032b0, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = m36032b0.mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c17269b, C17269b.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C17266a c17266a = new C17266a(c17269b, mo10154s, null);
        this.f14287b = (AbstractC17270c) c17266a.f48435o.get();
        AbstractC16613a2 mo12777C3 = c17266a.f48421a.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        this.f14288c = mo12777C3;
        AbstractC17018f mo12418d1 = c17266a.f48421a.mo12418d1();
        Objects.requireNonNull(mo12418d1, "Cannot return null from a non-@Nullable component method");
        this.f14289d = mo12418d1;
        if (str != null) {
            PremiumLaunchContext valueOf = PremiumLaunchContext.valueOf(str);
            setLaunchContext(valueOf);
            this.f14294i = valueOf == PremiumLaunchContext.WHO_VIEWED_ME ? true : z;
        }
        AbstractC17018f abstractC17018f = this.f14289d;
        if (abstractC17018f == null) {
            s1.z.c.l.l("consumablePurchasePrompter");
            throw null;
        }
        AbstractC17270c abstractC17270c = this.f14287b;
        if (abstractC17270c != null) {
            abstractC17018f.mo16627b(abstractC17270c);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: a */
    public static View m34807a(EmbeddedPurchaseView embeddedPurchaseView, int i, boolean z, ViewGroup viewGroup, boolean z2, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        EmbeddedPurchaseView embeddedPurchaseView2 = (i2 & 4) != 0 ? embeddedPurchaseView : null;
        if ((i2 & 8) != 0) {
            z2 = embeddedPurchaseView.f14294i;
        }
        Context context = embeddedPurchaseView.getContext();
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        View inflate = LayoutInflater.from(C17422k.m16113E(context, z2)).inflate(i, embeddedPurchaseView2, z);
        s1.z.c.l.d(inflate, "LayoutInflater.from(cont…yout, root, attachToRoot)");
        return inflate;
    }

    private final Activity getActivity() {
        Context context = getContext();
        while (true) {
            Context context2 = context;
            if (context2 instanceof ContextWrapper) {
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                throw new IllegalStateException("Can't find activity");
            }
        }
    }

    private final void setKenyaButton(C17280b c17280b) {
        if (c17280b != null) {
            View findViewById = findViewById(C4334R.C4336id.kenyaDivider);
            if (findViewById != null) {
                C19286f.m13684T(findViewById);
            }
            TextView textView = (TextView) findViewById(C4334R.C4336id.kenyaTitle);
            if (textView != null) {
                C19286f.m13684T(textView);
            }
            TextView textView2 = (TextView) findViewById(C4334R.C4336id.kenyaSubTitle);
            if (textView2 != null) {
                C19286f.m13684T(textView2);
            }
            SubscriptionButtonView subscriptionButtonView = (SubscriptionButtonView) findViewById(C4334R.C4336id.kenyaButton);
            if (subscriptionButtonView == null) {
                return;
            }
            subscriptionButtonView.setButton(c17280b);
            C19286f.m13684T(subscriptionButtonView);
            C18334g0.m15196w0(subscriptionButtonView, 300L, new C4364c(c17280b, this));
        }
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: Q2 */
    public void mo16319Q2(List<? extends Contact> list, int i) {
        s1.z.c.l.e(list, "contactsForPromo");
        PremiumFriendUpgradedPromoView premiumFriendUpgradedPromoView = (PremiumFriendUpgradedPromoView) findViewById(C4334R.C4336id.friendUpgradedPromoView);
        if (premiumFriendUpgradedPromoView != null) {
            C19286f.m13684T(premiumFriendUpgradedPromoView);
            premiumFriendUpgradedPromoView.m34801g1(list, i);
        }
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Qy */
    public void mo16626Qy(String str, int i, C16993f c16993f, C17280b c17280b) {
        s1.z.c.l.e(str, "promptText");
        s1.z.c.l.e(c16993f, "subscription");
        s1.z.c.l.e(c17280b, "button");
        h activity = getActivity();
        Activity activity2 = activity;
        if (!(activity instanceof h)) {
            activity2 = null;
        }
        h hVar = activity2;
        if (hVar != null) {
            AbstractC17018f abstractC17018f = this.f14289d;
            if (abstractC17018f == null) {
                s1.z.c.l.l("consumablePurchasePrompter");
                throw null;
            }
            FragmentManager supportFragmentManager = hVar.getSupportFragmentManager();
            s1.z.c.l.d(supportFragmentManager, "supportFragmentManager");
            abstractC17018f.mo16628a(supportFragmentManager, str, i, c16993f, c17280b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00be, code lost:
        if (r0.length() == 0) goto L20;
     */
    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: Ug */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo16318Ug(p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17282d r11, p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b r12) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.premium.p173ui.embedded.EmbeddedPurchaseView.mo16318Ug(e.a.l.v2.i.a.d, e.a.l.v2.i.a.b):void");
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Xr */
    public void mo16625Xr() {
        AbstractC17018f abstractC17018f = this.f14289d;
        if (abstractC17018f != null) {
            abstractC17018f.dismiss();
        } else {
            s1.z.c.l.l("consumablePurchasePrompter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: a3 */
    public void mo16317a3() {
        AbstractC17278i abstractC17278i = this.f14292g;
        if (abstractC17278i != null) {
            abstractC17278i.mo11699a3();
        }
    }

    /* renamed from: b */
    public final void m34806b(Integer num) {
        removeAllViews();
        m34807a(this, this.f14291f, true, null, false, 12);
        this.f14290e = i.V(new SubscriptionButtonView[]{(SubscriptionButtonView) findViewById(C4334R.C4336id.first), (SubscriptionButtonView) findViewById(C4334R.C4336id.second), (SubscriptionButtonView) findViewById(C4334R.C4336id.third)});
        TextView textView = (TextView) findViewById(C4334R.C4336id.premiumFeaturesButton);
        if (textView != null) {
            textView.setOnClickListener(new View$OnClickListenerC4362a());
        }
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: g2 */
    public void mo16316g2(boolean z) {
        AbstractC17278i abstractC17278i = this.f14292g;
        if (abstractC17278i != null) {
            abstractC17278i.mo11690g2(z);
        }
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: ge */
    public void mo16624ge() {
        h activity = getActivity();
        Activity activity2 = activity;
        if (!(activity instanceof h)) {
            activity2 = null;
        }
        h hVar = activity2;
        if (hVar != null) {
            C17264a c17264a = new C17264a();
            FragmentManager supportFragmentManager = hVar.getSupportFragmentManager();
            s1.z.c.l.d(supportFragmentManager, "supportFragmentManager");
            c17264a.show(supportFragmentManager, null);
        }
    }

    public final AbstractC17278i getCallBack() {
        return this.f14292g;
    }

    public final AbstractC17018f getConsumablePurchasePrompter() {
        AbstractC17018f abstractC17018f = this.f14289d;
        if (abstractC17018f != null) {
            return abstractC17018f;
        }
        s1.z.c.l.l("consumablePurchasePrompter");
        throw null;
    }

    public final AbstractC16613a2 getPremiumScreenNavigator() {
        AbstractC16613a2 abstractC16613a2 = this.f14288c;
        if (abstractC16613a2 != null) {
            return abstractC16613a2;
        }
        s1.z.c.l.l("premiumScreenNavigator");
        throw null;
    }

    public final AbstractC17270c getPresenter() {
        AbstractC17270c abstractC17270c = this.f14287b;
        if (abstractC17270c != null) {
            return abstractC17270c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: m7 */
    public void mo16315m7(PremiumLaunchContext premiumLaunchContext) {
        s1.z.c.l.e(premiumLaunchContext, "launchContext");
        AbstractC16613a2 abstractC16613a2 = this.f14288c;
        if (abstractC16613a2 == null) {
            s1.z.c.l.l("premiumScreenNavigator");
            throw null;
        }
        Context context = getContext();
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        abstractC16613a2.mo17167b(context, premiumLaunchContext);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC17270c abstractC17270c = this.f14287b;
        if (abstractC17270c != null) {
            abstractC17270c.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC17270c abstractC17270c = this.f14287b;
        if (abstractC17270c != null) {
            abstractC17270c.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public final void setCallBack(AbstractC17278i abstractC17278i) {
        this.f14292g = abstractC17278i;
    }

    public final void setConsumablePurchasePrompter(AbstractC17018f abstractC17018f) {
        s1.z.c.l.e(abstractC17018f, "<set-?>");
        this.f14289d = abstractC17018f;
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    public void setErrorMessage(String str) {
        s1.z.c.l.e(str, "message");
        removeAllViews();
        Integer valueOf = Integer.valueOf(C4334R.layout.view_launch_premium_screen);
        valueOf.intValue();
        if (!this.f14294i) {
            valueOf = null;
        }
        TextView textView = (TextView) m34807a(this, valueOf != null ? valueOf.intValue() : C4334R.layout.view_launch_premium_screen_legacy, true, null, false, 12).findViewById(C4334R.C4336id.fallback);
        textView.setText(this.f14293h);
        textView.setOnClickListener(new View$OnClickListenerC4363b());
    }

    public void setLaunchContext(PremiumLaunchContext premiumLaunchContext) {
        s1.z.c.l.e(premiumLaunchContext, "launchContext");
        AbstractC17270c abstractC17270c = this.f14287b;
        if (abstractC17270c != null) {
            abstractC17270c.mo16306G9(premiumLaunchContext);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public final void setPremiumScreenNavigator(AbstractC16613a2 abstractC16613a2) {
        s1.z.c.l.e(abstractC16613a2, "<set-?>");
        this.f14288c = abstractC16613a2;
    }

    public final void setPresenter(AbstractC17270c abstractC17270c) {
        s1.z.c.l.e(abstractC17270c, "<set-?>");
        this.f14287b = abstractC17270c;
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17271d
    /* renamed from: sv */
    public void mo16314sv(String str, C16993f c16993f, C17280b c17280b, String str2) {
        s1.z.c.l.e(str, "topImage");
        s1.z.c.l.e(c16993f, "subscription");
        m34806b(null);
        View findViewById = findViewById(C4334R.C4336id.first);
        s1.z.c.l.d(findViewById, "findViewById<SubscriptionButtonView>(R.id.first)");
        C19286f.m13689O(findViewById);
        View findViewById2 = findViewById(C4334R.C4336id.second);
        s1.z.c.l.d(findViewById2, "findViewById<SubscriptionButtonView>(R.id.second)");
        C19286f.m13689O(findViewById2);
        View findViewById3 = findViewById(C4334R.C4336id.third);
        s1.z.c.l.d(findViewById3, "findViewById<SubscriptionButtonView>(R.id.third)");
        C19286f.m13689O(findViewById3);
        View findViewById4 = findViewById(C4334R.C4336id.topImageBannerView);
        s1.z.c.l.d(findViewById4, "findViewById<LinearLayou…(R.id.topImageBannerView)");
        C19286f.m13684T(findViewById4);
        ImageView imageView = (ImageView) findViewById(C4334R.C4336id.promoBannerView);
        C22234h mo8414k = C17891a1.C17902k.m15661L1(imageView).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str;
        c21852d.f61771N = true;
        C21852d c21852d2 = (C21852d) mo8414k;
        e.f.a.n.q.d.i iVar = new e.f.a.n.q.d.i();
        boolean z = false;
        s1.z.c.l.d(imageView, "this");
        Context context = imageView.getContext();
        s1.z.c.l.d(context, "this.context");
        Resources resources = context.getResources();
        int i = C4334R.dimen.tcx_wvm_top_image_corner_radius;
        C21852d m8966r0 = c21852d2.m8966r0(iVar, new y(resources.getDimensionPixelSize(i)));
        C21852d<Drawable> m8965A = ((C21853e) ComponentCallbacks2C22222c.m8445f(imageView)).m8965A(Integer.valueOf(C4334R.C4335drawable.img_premium_user_tab_promo_card_fallback));
        e.f.a.n.q.d.i iVar2 = new e.f.a.n.q.d.i();
        Context context2 = imageView.getContext();
        s1.z.c.l.d(context2, "this.context");
        m8966r0.f61769L = m8965A.m8966r0(iVar2, new y(context2.getResources().getDimensionPixelSize(i)));
        m8966r0.m8427O(imageView);
        if (c17280b != null) {
            SubscriptionButtonView subscriptionButtonView = (SubscriptionButtonView) findViewById(C4334R.C4336id.buyBtn);
            subscriptionButtonView.setButton(c17280b);
            subscriptionButtonView.setTag(c17280b);
            C19286f.m13684T(subscriptionButtonView);
            C18334g0.m15196w0(subscriptionButtonView, 300L, new C4365d(c17280b, this, c16993f));
        }
        TextView textView = (TextView) findViewById(C4334R.C4336id.disclaimerLabel);
        if (str2 == null || str2.length() == 0) {
            z = true;
        }
        C19286f.m13683U(textView, true ^ z);
        textView.setText(str2);
    }
}
