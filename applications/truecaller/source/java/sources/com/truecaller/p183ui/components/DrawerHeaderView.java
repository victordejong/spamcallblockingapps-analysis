package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.ads.AdError;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.bizmon.newBusiness.profile.p150ui.BizProfileActivity;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1060m4.C18200a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.p699c2.C13220z;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u00012\u00020\u0002:\u0001EJ\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J9\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\b\u0001\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00052\b\b\u0001\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001f\u001a\u0004\b'\u0010(R\u001d\u0010,\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u001f\u001a\u0004\b+\u0010(R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001d\u00105\u001a\u0002018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u001f\u001a\u0004\b3\u00104R\u001d\u00108\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010\u001f\u001a\u0004\b7\u0010!R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010:R\u001d\u0010>\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\u001f\u001a\u0004\b=\u0010!R\u001d\u0010A\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\u001f\u001a\u0004\b@\u0010!R\u001d\u0010D\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\u001f\u001a\u0004\bC\u0010(¨\u0006F"}, d2 = {"Lcom/truecaller/ui/components/DrawerHeaderView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/view/View$OnClickListener;", "Lcom/truecaller/ui/components/DrawerHeaderView$a;", "drawerHeaderListener", "Ls1/s;", "setDrawerHeaderListener", "(Lcom/truecaller/ui/components/DrawerHeaderView$a;)V", "", AnalyticsConstants.NAME, "number", "Landroid/net/Uri;", "avatar", "premiumLevel", "", "isCredUser", "i1", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V", "bizName", "h1", "(Ljava/lang/String;)V", "f1", "()V", "g1", "(Ljava/lang/String;Z)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "Landroid/widget/TextView;", "y", "Ls1/g;", "getNameTextView", "()Landroid/widget/TextView;", "nameTextView", "t", "Lcom/truecaller/ui/components/DrawerHeaderView$a;", "Landroid/widget/ImageView;", "D", "getBizEditImageView", "()Landroid/widget/ImageView;", "bizEditImageView", "A", "getNoAvatarImageView", "noAvatarImageView", "Le/a/b0/a/b/a;", "u", "Le/a/b0/a/b/a;", "avatarPresenter", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "w", "getAvatarView", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatarView", "B", "getBizTitleTextView", "bizTitleTextView", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarConfig", "z", "getNumberTextView", "numberTextView", "C", "getBizDescriptionTextView", "bizDescriptionTextView", "x", "getProfileEditImageView", "profileEditImageView", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.components.DrawerHeaderView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/DrawerHeaderView.class */
public final class DrawerHeaderView extends ConstraintLayout implements View.OnClickListener {

    /* renamed from: t */
    public AbstractC4675a f15730t;

    /* renamed from: u */
    public final C8243a f15731u;

    /* renamed from: v */
    public AvatarXConfig f15732v = new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535);

    /* renamed from: w */
    public final g f15733w = C19286f.m13660s(this, 2131362231);

    /* renamed from: x */
    public final g f15734x = C19286f.m13660s(this, C2752R.C2754id.edit);

    /* renamed from: y */
    public final g f15735y = C19286f.m13660s(this, 2131364874);

    /* renamed from: z */
    public final g f15736z = C19286f.m13660s(this, 2131364968);

    /* renamed from: A */
    public final g f15726A = C19286f.m13660s(this, C2752R.C2754id.noAvatar);

    /* renamed from: B */
    public final g f15727B = C19286f.m13660s(this, C2752R.C2754id.bizTitle);

    /* renamed from: C */
    public final g f15728C = C19286f.m13660s(this, C2752R.C2754id.bizDesc);

    /* renamed from: D */
    public final g f15729D = C19286f.m13660s(this, C2752R.C2754id.bizEdit);

    /* renamed from: com.truecaller.ui.components.DrawerHeaderView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/DrawerHeaderView$a.class */
    public interface AbstractC4675a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        ContextThemeWrapper m16113E = C17422k.m16113E(context, true);
        ViewGroup.inflate(m16113E, C2752R.layout.drawer_header_view, this);
        C26614s.m1563r(this, new C13220z(this));
        C8243a c8243a = new C8243a(new C19235i0(m16113E));
        this.f15731u = c8243a;
        getAvatarView().setPresenter(c8243a);
    }

    private final AvatarXView getAvatarView() {
        return (AvatarXView) this.f15733w.getValue();
    }

    private final TextView getBizDescriptionTextView() {
        return (TextView) this.f15728C.getValue();
    }

    private final ImageView getBizEditImageView() {
        return (ImageView) this.f15729D.getValue();
    }

    private final TextView getBizTitleTextView() {
        return (TextView) this.f15727B.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.f15735y.getValue();
    }

    private final ImageView getNoAvatarImageView() {
        return (ImageView) this.f15726A.getValue();
    }

    private final TextView getNumberTextView() {
        return (TextView) this.f15736z.getValue();
    }

    private final ImageView getProfileEditImageView() {
        return (ImageView) this.f15734x.getValue();
    }

    /* renamed from: f1 */
    public final void m34537f1() {
        C19286f.m13689O(getBizTitleTextView());
        C19286f.m13689O(getBizEditImageView());
        C19286f.m13689O(getBizDescriptionTextView());
    }

    /* renamed from: g1 */
    public final void m34536g1(String str, boolean z) {
        l.e(str, "premiumLevel");
        AvatarXConfig avatarXConfig = this.f15732v;
        if (C19286f.m13663p(getAvatarView())) {
            boolean a = l.a(str, "regular");
            boolean a2 = l.a(str, "gold");
            if (avatarXConfig.f11108i == a && avatarXConfig.f11109j == a2) {
                return;
            }
            AvatarXConfig m35701a = AvatarXConfig.m35701a(avatarXConfig, null, null, null, null, false, false, false, false, a, a2, false, z, false, false, null, false, 62719);
            this.f15732v = m35701a;
            C8243a.m28739ok(this.f15731u, m35701a, false, 2, null);
        }
    }

    /* renamed from: h1 */
    public final void m34535h1(String str) {
        C19286f.m13684T(getBizTitleTextView());
        C19286f.m13684T(getBizEditImageView());
        C19286f.m13684T(getBizDescriptionTextView());
        getBizTitleTextView().setText(str);
        getBizEditImageView().setOnClickListener(this);
    }

    /* renamed from: i1 */
    public final void m34534i1(String str, String str2, Uri uri, String str3, boolean z) {
        C22128a.m8703I0(str, AnalyticsConstants.NAME, str2, "number", str3, "premiumLevel");
        getNameTextView().setMaxLines(1);
        getNameTextView().setText(str);
        getNumberTextView().setVisibility(0);
        getNumberTextView().setText(C8605o.m28239a(str2));
        getAvatarView().setContentDescription(getContext().getString(2131887542));
        getNoAvatarImageView().setContentDescription(getContext().getString(2131887542));
        if (uri == null) {
            C19286f.m13687Q(getAvatarView());
            C19286f.m13684T(getNoAvatarImageView());
            getNoAvatarImageView().setImageDrawable(C8605o.m28236d(getContext(), 2131232433));
            Drawable drawable = getNoAvatarImageView().getDrawable();
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            drawable.setTint(C19291g.m13538k0(context, 2130970017));
            ImageView noAvatarImageView = getNoAvatarImageView();
            Context context2 = getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            ContextThemeWrapper m16113E = C17422k.m16113E(context2, true);
            Object obj = C26467a.f74235a;
            noAvatarImageView.setBackground(C26467a.C26470c.m1789b(m16113E, 2131231026));
        } else {
            C19286f.m13684T(getAvatarView());
            C19286f.m13687Q(getNoAvatarImageView());
            AvatarXConfig avatarXConfig = new AvatarXConfig(uri, str2, null, C17891a1.C17902k.m15693B(str), false, false, false, false, l.a(str3, "regular"), l.a(str3, "gold"), false, z, false, false, null, false, 62708);
            this.f15732v = avatarXConfig;
            C8243a.m28739ok(this.f15731u, avatarXConfig, false, 2, null);
        }
        getAvatarView().setOnClickListener(this);
        getNoAvatarImageView().setOnClickListener(this);
        getProfileEditImageView().setOnClickListener(this);
        setOnClickListener(null);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [android.content.Context, com.truecaller.ui.TruecallerInit] */
    /* JADX WARN: Type inference failed for: r0v40, types: [android.content.Context, java.lang.Object, com.truecaller.ui.TruecallerInit, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r0v48, types: [android.content.Context, com.truecaller.ui.TruecallerInit] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        boolean mo28540W = TrueApp.m36032b0().mo28540W();
        if (view.getId() == 2131363444 && mo28540W) {
            AbstractC4675a abstractC4675a = this.f15730t;
            if (abstractC4675a != null) {
                TruecallerInit truecallerInit = (TruecallerInit) abstractC4675a;
                truecallerInit.m34579Ja("editProfile");
                truecallerInit.m34586Ca();
            }
            view.setEnabled(false);
        } else if (view.getId() == 2131363444 && !mo28540W) {
            AbstractC4675a abstractC4675a2 = this.f15730t;
            if (abstractC4675a2 == null) {
                return;
            }
            c.Ca((Context) ((TruecallerInit) abstractC4675a2), WizardActivity.class, "sideBar", WizardStartContext.REGISTER);
        } else if (view.getId() == 2131362330 && mo28540W) {
            AbstractC4675a abstractC4675a3 = this.f15730t;
            if (abstractC4675a3 != null) {
                ?? r0 = (TruecallerInit) abstractC4675a3;
                l.e((Object) r0, AnalyticsConstants.CONTEXT);
                r0.startActivity(new Intent((Context) r0, BizProfileActivity.class));
            }
            view.setEnabled(false);
        } else if (view.getId() != 2131362231 && view.getId() != 2131364923) {
            AbstractC4675a abstractC4675a4 = this.f15730t;
            if (abstractC4675a4 == null) {
                return;
            }
            c.Ca((Context) ((TruecallerInit) abstractC4675a4), WizardActivity.class, "sideBar", WizardStartContext.REGISTER);
        } else {
            ComponentActivity componentActivity = this.f15730t;
            if (componentActivity != null) {
                ComponentActivity componentActivity2 = (TruecallerInit) componentActivity;
                if (!componentActivity2.m34580Ia()) {
                    componentActivity2.startActivityForResult(((C18200a) componentActivity2.f15614h0.get()).m15457a(componentActivity2), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
                } else if (componentActivity2.f15663z0.m10954n().isEnabled()) {
                    componentActivity2.startActivityForResult(((C18200a) componentActivity2.f15614h0.get()).m15457a(componentActivity2), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
                } else {
                    componentActivity2.startActivityForResult(CreateBusinessProfileActivity.m35827sa(componentActivity2, false, true), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
                }
                componentActivity2.m34579Ja("avatar");
            }
            view.setEnabled(false);
        }
    }

    public final void setDrawerHeaderListener(AbstractC4675a abstractC4675a) {
        l.e(abstractC4675a, "drawerHeaderListener");
        this.f15730t = abstractC4675a;
    }
}
