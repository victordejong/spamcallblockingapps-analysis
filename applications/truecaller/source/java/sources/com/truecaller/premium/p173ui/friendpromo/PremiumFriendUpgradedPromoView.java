package com.truecaller.premium.p173ui.friendpromo;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$b;
import androidx.coordinatorlayout.widget.CoordinatorLayout$c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.premium.C4334R;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC16931g2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u0013\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u00020\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R%\u0010\u001d\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR%\u0010\"\u001a\n \u0018*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010!R%\u0010'\u001a\n \u0018*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001a\u001a\u0004\b%\u0010&R\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020(0\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R%\u0010.\u001a\n \u0018*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u001a\u001a\u0004\b-\u0010&R\u0016\u00100\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010\u0013R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020��058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R%\u0010;\u001a\n \u0018*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010\u001a\u001a\u0004\b:\u0010&¨\u0006<"}, d2 = {"Lcom/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;", "getBehavior", "()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;", "", "Lcom/truecaller/data/entity/Contact;", "contacts", "", "totalNumber", "Ls1/s;", "g1", "(Ljava/util/List;I)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "f1", "(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "Le/a/b0/a/b/a;", "B", "Le/a/b0/a/b/a;", "avatar3Presenter", "z", "avatar1Presenter", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "x", "Ls1/g;", "getTitle", "()Landroid/widget/TextView;", "title", "Landroid/widget/ImageView;", "w", "getFakeAvatars", "()Landroid/widget/ImageView;", "fakeAvatars", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "u", "getAvatar2", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar2", "Landroid/view/View;", "C", "Ljava/util/List;", "avatarList", "t", "getAvatar1", "avatar1", "A", "avatar2Presenter", "Le/a/p5/i0;", "y", "Le/a/p5/i0;", "resourceProvider", "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;", "D", "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;", "customHideBottomViewOnScrollBehavior", "v", "getAvatar3", "avatar3", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.friendpromo.PremiumFriendUpgradedPromoView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/friendpromo/PremiumFriendUpgradedPromoView.class */
public final class PremiumFriendUpgradedPromoView extends ConstraintLayout implements CoordinatorLayout$b {

    /* renamed from: A */
    public final C8243a f14301A;

    /* renamed from: B */
    public final C8243a f14302B;

    /* renamed from: y */
    public final C19235i0 f14310y;

    /* renamed from: z */
    public final C8243a f14311z;

    /* renamed from: t */
    public final g f14305t = C19286f.m13660s(this, C4334R.C4336id.avatar1);

    /* renamed from: u */
    public final g f14306u = C19286f.m13660s(this, C4334R.C4336id.avatar2);

    /* renamed from: v */
    public final g f14307v = C19286f.m13660s(this, C4334R.C4336id.avatar3);

    /* renamed from: w */
    public final g f14308w = C19286f.m13660s(this, C4334R.C4336id.fakeAvatars);

    /* renamed from: x */
    public final g f14309x = C19286f.m13660s(this, C4334R.C4336id.title);

    /* renamed from: D */
    public final CustomHideBottomViewOnScrollBehavior<PremiumFriendUpgradedPromoView> f14304D = new CustomHideBottomViewOnScrollBehavior<>();

    /* renamed from: C */
    public final List<View> f14303C = i.T(new AvatarXView[]{getAvatar1(), getAvatar2(), getAvatar3()});

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PremiumFriendUpgradedPromoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C19235i0 c19235i0 = new C19235i0(context);
        this.f14310y = c19235i0;
        C8243a c8243a = new C8243a(c19235i0);
        this.f14311z = c8243a;
        C8243a c8243a2 = new C8243a(c19235i0);
        this.f14301A = c8243a2;
        C8243a c8243a3 = new C8243a(c19235i0);
        this.f14302B = c8243a3;
        C17422k.m16099S(this, C4334R.layout.view_friend_upgraded_premium_promo, true, false, 4);
        int m28238b = C8605o.m28238b(context, 16.0f);
        setPadding(m28238b, m28238b, m28238b, m28238b);
        setBackgroundResource(C4334R.C4335drawable.background_tcx_friend_upgraded_promo);
        getAvatar1().setPresenter(c8243a);
        getAvatar2().setPresenter(c8243a2);
        getAvatar3().setPresenter(c8243a3);
    }

    private final AvatarXView getAvatar1() {
        return (AvatarXView) this.f14305t.getValue();
    }

    private final AvatarXView getAvatar2() {
        return (AvatarXView) this.f14306u.getValue();
    }

    private final AvatarXView getAvatar3() {
        return (AvatarXView) this.f14307v.getValue();
    }

    private final ImageView getFakeAvatars() {
        return (ImageView) this.f14308w.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f14309x.getValue();
    }

    /* renamed from: f1 */
    public final AvatarXConfig m34802f1(Contact contact) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        l.e(context, "$this$premiumSupport");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.premium.PremiumSupportProvider");
        Objects.requireNonNull(((AbstractC16931g2) applicationContext).mo16751D());
        l.e(contact, AnalyticsConstants.CONTACT);
        Uri m22592B = C12864a2.m22592B(contact, true);
        Number m35493v = contact.m35493v();
        String m35479e = m35493v != null ? m35493v.m35479e() : null;
        String m35566G = contact.m35566G();
        return new AvatarXConfig(m22592B, m35479e, null, m35566G != null ? C17891a1.C17902k.m15693B(m35566G) : null, false, false, false, false, false, false, false, false, false, false, null, false, 65524);
    }

    /* renamed from: g1 */
    public final void m34801g1(List<? extends Contact> list, int i) {
        l.e(list, "contacts");
        if (list.size() < 3) {
            for (View view : this.f14303C) {
                C19286f.m13689O(view);
            }
            ImageView fakeAvatars = getFakeAvatars();
            l.d(fakeAvatars, "fakeAvatars");
            C19286f.m13684T(fakeAvatars);
            getTitle().setText(C4334R.string.PremiumFriendUpgradedPromoTitleFew);
            return;
        }
        for (View view2 : this.f14303C) {
            C19286f.m13684T(view2);
        }
        C8243a.m28739ok(this.f14311z, m34802f1(list.get(0)), false, 2, null);
        C8243a.m28739ok(this.f14301A, m34802f1(list.get(1)), false, 2, null);
        C8243a.m28739ok(this.f14302B, m34802f1(list.get(2)), false, 2, null);
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(getContext().getString(C4334R.string.PremiumFriendUpgradedPromoTitleMany, list.get(0).m35566G(), Integer.valueOf(i - 1)));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.coordinatorlayout.widget.CoordinatorLayout$c<?>, com.truecaller.premium.ui.friendpromo.CustomHideBottomViewOnScrollBehavior<com.truecaller.premium.ui.friendpromo.PremiumFriendUpgradedPromoView>] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$b
    public CoordinatorLayout$c<?> getBehavior() {
        return this.f14304D;
    }
}
