package com.truecaller.ads.p134ui;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.C2808R;
import e.a.i.c.a.k;
import e.a.i.c.a.m;
import e.a.i.c.a.t;
import e.a.i.f0.m.a;
import e.a.i.f0.m.c;
import e.m.d.y.n;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.d0.h;
import s1.d0.j;
import s1.g;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\fH\u0082\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0017\u001a\u00020\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001a\u001a\u00020\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ads/ui/AdsSwitchView;", "Landroid/widget/FrameLayout;", "Le/a/i/f0/m/d;", "ad", "Le/a/i/g;", "layout", "Ls1/s;", "d", "(Le/a/i/f0/m/d;Le/a/i/g;)V", "Le/a/i/c/a/c;", AbstractC2405c.f7629a, "(Le/a/i/c/a/c;Le/a/i/g;)V", "", "childIndex", "e", "(I)V", "position", "Landroid/view/View;", C22021b.f61237c, "(I)Landroid/view/View;", "Ls1/g;", "getNativePosition", "()I", "nativePosition", "a", "getBannerPosition", "bannerPosition", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ads.ui.AdsSwitchView */
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/ui/AdsSwitchView.class */
public final class AdsSwitchView extends FrameLayout {

    /* renamed from: a */
    public final g f9890a = C25225a.m3978P1(new C25345k2(0, this));

    /* renamed from: b */
    public final g f9891b = C25225a.m3978P1(new C25345k2(1, this));

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdsSwitchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        m35947e(-1);
    }

    /* renamed from: a */
    public static final int m35951a(AdsSwitchView adsSwitchView, int i) {
        Object obj;
        z it = j.j(0, adsSwitchView.getChildCount()).iterator();
        while (true) {
            if (!((h) it).hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (adsSwitchView.m35950b(((Number) next).intValue()).getId() == i) {
                obj = next;
                break;
            }
        }
        Integer num = (Integer) obj;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("No child with required ID");
    }

    private final int getBannerPosition() {
        return ((Number) this.f9890a.getValue()).intValue();
    }

    private final int getNativePosition() {
        return ((Number) this.f9891b.getValue()).intValue();
    }

    /* renamed from: b */
    public final View m35950b(int i) {
        View childAt = getChildAt(i);
        l.d(childAt, "getChildAt(position)");
        return childAt;
    }

    /* renamed from: c */
    public final void m35949c(AbstractC15003c abstractC15003c, AbstractC15191g abstractC15191g) {
        l.e(abstractC15003c, "ad");
        l.e(abstractC15191g, "layout");
        if (abstractC15003c instanceof k) {
            ViewGroup viewGroup = (ViewGroup) m35950b(getNativePosition()).findViewById(C2808R.C2810id.container);
            viewGroup.removeAllViews();
            Context context = viewGroup.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            viewGroup.addView(n.i0((k) abstractC15003c, context, abstractC15191g));
            m35947e(getNativePosition());
        } else if (abstractC15003c instanceof m) {
            ViewGroup viewGroup2 = (ViewGroup) m35950b(getBannerPosition()).findViewById(C2808R.C2810id.container);
            viewGroup2.removeAllViews();
            Context context2 = viewGroup2.getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            viewGroup2.addView(n.i0((m) abstractC15003c, context2, abstractC15191g));
            m35947e(getBannerPosition());
        } else if (abstractC15003c instanceof e.a.i.c.a.h) {
            ViewGroup viewGroup3 = (ViewGroup) m35950b(getBannerPosition()).findViewById(C2808R.C2810id.container);
            viewGroup3.removeAllViews();
            Context context3 = viewGroup3.getContext();
            l.d(context3, AnalyticsConstants.CONTEXT);
            viewGroup3.addView(n.m0((e.a.i.c.a.h) abstractC15003c, context3));
            m35947e(getBannerPosition());
        } else if (!(abstractC15003c instanceof t)) {
        } else {
            ViewGroup viewGroup4 = (ViewGroup) m35950b(getBannerPosition()).findViewById(C2808R.C2810id.container);
            viewGroup4.removeAllViews();
            Context context4 = viewGroup4.getContext();
            l.d(context4, AnalyticsConstants.CONTEXT);
            viewGroup4.addView(n.n0((t) abstractC15003c, context4));
            m35947e(getBannerPosition());
        }
    }

    /* renamed from: d */
    public final void m35948d(AbstractC15183d abstractC15183d, AbstractC15191g abstractC15191g) {
        l.e(abstractC15183d, "ad");
        l.e(abstractC15191g, "layout");
        if (abstractC15183d instanceof a) {
            ViewGroup viewGroup = (ViewGroup) m35950b(getBannerPosition()).findViewById(C2808R.C2810id.container);
            viewGroup.removeAllViews();
            viewGroup.addView(n.l0((a) abstractC15183d, (AbstractC15191g) null, 1));
            m35947e(getBannerPosition());
        } else if (abstractC15183d instanceof e.a.i.f0.m.h) {
            ViewGroup viewGroup2 = (ViewGroup) m35950b(getNativePosition()).findViewById(C2808R.C2810id.container);
            viewGroup2.removeAllViews();
            Context context = viewGroup2.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            viewGroup2.addView(n.k0((e.a.i.f0.m.h) abstractC15183d, context, abstractC15191g));
            m35947e(getNativePosition());
        } else if (!(abstractC15183d instanceof c)) {
        } else {
            c cVar = (c) abstractC15183d;
            ViewGroup viewGroup3 = (ViewGroup) m35950b(getNativePosition()).findViewById(C2808R.C2810id.container);
            Context context2 = viewGroup3.getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            Activity m15606i = C17891a1.C17902k.m15606i(context2);
            if (m15606i != null) {
                viewGroup3.removeAllViews();
                viewGroup3.addView(n.j0(cVar, m15606i, abstractC15191g));
            }
            m35947e(getNativePosition());
        }
    }

    /* renamed from: e */
    public final void m35947e(int i) {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            m35950b(i2).setVisibility(i2 == i ? 0 : 8);
            i2++;
        }
    }
}
