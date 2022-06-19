package com.truecaller.premium.p173ui.subscription.offerpicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.AbstractC17293d;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17291b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17292c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\f\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00052\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u000e¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00052\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u000e¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u000f\u0010\u0016J7\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010 R%\u0010&\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010#\u001a\u0004\b$\u0010%R%\u0010)\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010#\u001a\u0004\b(\u0010%R+\u0010-\u001a\u0010\u0012\f\u0012\n \"*\u0004\u0018\u00010!0!0\b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010#\u001a\u0004\b+\u0010,R\"\u00103\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u0010\u0007R\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\t048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R$\u00109\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R%\u0010?\u001a\n \"*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010#\u001a\u0004\b>\u0010%R$\u0010A\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00108R%\u0010F\u001a\n \"*\u0004\u0018\u00010B0B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010#\u001a\u0004\bD\u0010E¨\u0006G"}, d2 = {"Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;", "Landroid/widget/LinearLayout;", "Landroid/view/View$OnClickListener;", "", "pos", "Ls1/s;", "setSelected", "(I)V", "", "Le/a/l/v2/i/c/a;", "subscriptionsOffers", "defaultSelectedPos", "e", "(Ljava/util/List;I)V", "Lkotlin/Function1;", "onClick", "setOfferActionButtonClick", "(Ls1/z/b/l;)V", "listener", "setOnOfferSelectedListener", "Landroid/view/View;", ViewAction.VIEW, "(Landroid/view/View;)V", "", AnalyticsConstants.CHANGED, "l", "t", "r", C22021b.f61237c, "onLayout", "(ZIIII)V", "d", "()V", "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;", "kotlin.jvm.PlatformType", "Ls1/g;", "getFirst", "()Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;", "first", "f", "getThird", "third", "i", "getSubscriptionButtons", "()Ljava/util/List;", "subscriptionButtons", "j", "I", "getCurrentSelected", "()I", "setCurrentSelected", "currentSelected", "", "a", "Ljava/util/List;", "subscriptionList", "Ls1/z/b/l;", "onOfferActionButtonClick", "Le/a/p5/i0;", "h", "Le/a/p5/i0;", "resourceProvider", "getSecond", "second", AbstractC2405c.f7629a, "onOfferSelectedListener", "Lcom/google/android/material/button/MaterialButton;", "g", "getActionButton", "()Lcom/google/android/material/button/MaterialButton;", "actionButton", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.subscription.offerpicker.SubscriptionOfferGroup */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup.class */
public final class SubscriptionOfferGroup extends LinearLayout implements View.OnClickListener {

    /* renamed from: k */
    public static final /* synthetic */ int f14341k = 0;

    /* renamed from: b */
    public l<? super C17290a, s> f14343b;

    /* renamed from: c */
    public l<? super Integer, s> f14344c;

    /* renamed from: h */
    public final C19235i0 f14349h;

    /* renamed from: a */
    public final List<C17290a> f14342a = new ArrayList();

    /* renamed from: d */
    public final g f14345d = C19286f.m13660s(this, 2131363718);

    /* renamed from: e */
    public final g f14346e = C19286f.m13660s(this, 2131365602);

    /* renamed from: f */
    public final g f14347f = C19286f.m13660s(this, 2131366423);

    /* renamed from: g */
    public final g f14348g = C19286f.m13660s(this, 2131361885);

    /* renamed from: i */
    public final g f14350i = C25225a.m3978P1(new C17292c(this));

    /* renamed from: j */
    public int f14351j = -1;

    /* renamed from: com.truecaller.premium.ui.subscription.offerpicker.SubscriptionOfferGroup$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC4366a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f14352a;

        /* renamed from: b */
        public final /* synthetic */ SubscriptionOfferGroup f14353b;

        public ViewTreeObserver$OnGlobalLayoutListenerC4366a(View view, SubscriptionOfferGroup subscriptionOfferGroup) {
            this.f14352a = view;
            this.f14353b = subscriptionOfferGroup;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f14352a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SubscriptionOfferGroup subscriptionOfferGroup = this.f14353b;
            int i = SubscriptionOfferGroup.f14341k;
            subscriptionOfferGroup.m34796d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionOfferGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f14349h = new C19235i0(context);
        setOrientation(1);
        C17422k.m16099S(this, C2752R.layout.subscription_offer_group, true, false, 4);
        MaterialButton actionButton = getActionButton();
        s1.z.c.l.d(actionButton, "actionButton");
        C18334g0.m15196w0(actionButton, 300L, new C17291b(this));
    }

    private final MaterialButton getActionButton() {
        return (MaterialButton) this.f14348g.getValue();
    }

    public final SubscriptionOfferButton getFirst() {
        return (SubscriptionOfferButton) this.f14345d.getValue();
    }

    public final SubscriptionOfferButton getSecond() {
        return (SubscriptionOfferButton) this.f14346e.getValue();
    }

    private final List<SubscriptionOfferButton> getSubscriptionButtons() {
        return (List) this.f14350i.getValue();
    }

    public final SubscriptionOfferButton getThird() {
        return (SubscriptionOfferButton) this.f14347f.getValue();
    }

    private final void setSelected(int i) {
        String str = this.f14342a.get(i).f48514f;
        int i2 = 0;
        for (Object obj : getSubscriptionButtons()) {
            if (i2 < 0) {
                i.N0();
                throw null;
            }
            SubscriptionOfferButton subscriptionOfferButton = (SubscriptionOfferButton) obj;
            if (i2 == i) {
                subscriptionOfferButton.setOfferState(AbstractC17293d.C17295b.f48525a);
            } else {
                subscriptionOfferButton.setOfferState(AbstractC17293d.C17294a.f48524a);
            }
            i2++;
        }
        MaterialButton actionButton = getActionButton();
        s1.z.c.l.d(actionButton, "actionButton");
        actionButton.setText(str);
        this.f14351j = i;
        l<? super Integer, s> lVar = this.f14344c;
        if (lVar != null) {
            s sVar = (s) lVar.d(Integer.valueOf(i));
        }
    }

    /* renamed from: d */
    public final void m34796d() {
        int i;
        List<SubscriptionOfferButton> subscriptionButtons = getSubscriptionButtons();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(subscriptionButtons, 10));
        Iterator<T> it = subscriptionButtons.iterator();
        while (true) {
            i = -2;
            if (!it.hasNext()) {
                break;
            }
            SubscriptionOfferButton subscriptionOfferButton = (SubscriptionOfferButton) it.next();
            if (subscriptionOfferButton.getInnerContainer().getHeight() > 0) {
                i = subscriptionOfferButton.getInnerContainer().getHeight();
            }
            arrayList.add(Integer.valueOf(i));
        }
        Integer num = (Integer) i.X(arrayList);
        if (num != null) {
            i = num.intValue();
        }
        for (SubscriptionOfferButton subscriptionOfferButton2 : getSubscriptionButtons()) {
            subscriptionOfferButton2.setInnerContainerHeight(i);
        }
    }

    /* renamed from: e */
    public final void m34795e(List<C17290a> list, int i) {
        s1.z.c.l.e(list, "subscriptionsOffers");
        if (list.isEmpty()) {
            return;
        }
        this.f14342a.clear();
        this.f14342a.addAll(list);
        int i2 = 0;
        for (Object obj : this.f14342a) {
            if (i2 < 0) {
                i.N0();
                throw null;
            }
            C17290a c17290a = (C17290a) obj;
            SubscriptionOfferButton subscriptionOfferButton = getSubscriptionButtons().get(i2);
            s1.z.c.l.d(subscriptionOfferButton, "subscriptionButtons[pos]");
            SubscriptionOfferButton subscriptionOfferButton2 = subscriptionOfferButton;
            subscriptionOfferButton2.setOfferPrice(c17290a.f48510b);
            Integer num = c17290a.f48516h;
            subscriptionOfferButton2.setOfferPriceTextColor(num != null ? num.intValue() : this.f14349h.mo13758l(2130970017));
            subscriptionOfferButton2.setOfferDuration(c17290a.f48509a);
            subscriptionOfferButton2.setOfferHeading(c17290a.f48512d);
            subscriptionOfferButton2.setOfferPricePerMoth(c17290a.f48511c);
            subscriptionOfferButton2.setSubtext(c17290a.f48513e);
            subscriptionOfferButton2.setOuterBackground(c17290a.f48517i);
            subscriptionOfferButton2.setInnerBackground(c17290a.f48518j);
            subscriptionOfferButton2.setSubtextBackground(c17290a.f48519k);
            subscriptionOfferButton2.setSubtextFontColor(c17290a.f48520l);
            if (c17290a.f48515g) {
                subscriptionOfferButton2.setOnClickListener(this);
            }
            i2++;
        }
        setSelected(i);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4366a(this, this));
    }

    public final int getCurrentSelected() {
        return this.f14351j;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        int id = view.getId();
        if (id == 2131363718) {
            setSelected(0);
        } else if (id == 2131365602) {
            setSelected(1);
        } else if (id != 2131366423) {
        } else {
            setSelected(2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m34796d();
        }
    }

    public final void setCurrentSelected(int i) {
        this.f14351j = i;
    }

    public final void setOfferActionButtonClick(l<? super C17290a, s> lVar) {
        s1.z.c.l.e(lVar, "onClick");
        this.f14343b = lVar;
    }

    public final void setOnOfferSelectedListener(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f14344c = lVar;
    }
}
