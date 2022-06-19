package p193e.p194a.p1011l;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.C17090g0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b.\u0010\u0015J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R%\u0010 \u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010%\u001a\n \u001b*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010$R%\u0010(\u001a\n \u001b*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001d\u001a\u0004\b'\u0010$R%\u0010-\u001a\n \u001b*\u0004\u0018\u00010)0)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010,¨\u0006/"}, d2 = {"Le/a/l/a1;", "Landroidx/fragment/app/Fragment;", "Le/a/l/c1;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "Le/a/l/p2/g0;", "feature", "W2", "(Le/a/l/p2/g0;)V", "Landroid/widget/LinearLayout;", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "getDescriptionsContainer", "()Landroid/widget/LinearLayout;", "descriptionsContainer", "Landroid/widget/TextView;", C22021b.f61237c, "OA", "()Landroid/widget/TextView;", "description", "e", "getTitle", "title", "Landroidx/appcompat/widget/AppCompatImageView;", "d", "getIcon", "()Landroidx/appcompat/widget/AppCompatImageView;", RemoteMessageConst.Notification.ICON, "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.a1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a1.class */
public final class C16612a1 extends Fragment implements AbstractC16831c1 {
    @Inject

    /* renamed from: a */
    public C16625b1 f46667a;

    /* renamed from: b */
    public final g f46668b = C19286f.m13659t(this, 2131363279);

    /* renamed from: c */
    public final g f46669c = C19286f.m13659t(this, C2752R.C2754id.descriptionsContainer);

    /* renamed from: d */
    public final g f46670d = C19286f.m13659t(this, 2131364203);

    /* renamed from: e */
    public final g f46671e = C19286f.m13659t(this, 2131366469);

    /* renamed from: OA */
    public final TextView m17181OA() {
        return (TextView) this.f46668b.getValue();
    }

    @Override // p193e.p194a.p1011l.AbstractC16831c1
    /* renamed from: W2 */
    public void mo16936W2(C17090g0 c17090g0) {
        l.e(c17090g0, "feature");
        ((TextView) this.f46671e.getValue()).setText(c17090g0.f47966b);
        ((AppCompatImageView) this.f46670d.getValue()).setImageResource(c17090g0.f47970f);
        if (c17090g0.f47969e.size() == 1) {
            TextView m17181OA = m17181OA();
            l.d(m17181OA, "description");
            m17181OA.setVisibility(0);
            m17181OA().setText(((Number) i.B0(c17090g0.f47969e)).intValue());
            return;
        }
        TextView m17181OA2 = m17181OA();
        l.d(m17181OA2, "description");
        m17181OA2.setVisibility(8);
        List<Integer> list = c17090g0.f47969e;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Number number : list) {
            int intValue = number.intValue();
            int m28238b = C8605o.m28238b(requireContext(), 5.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, m28238b, 0, 0);
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            TextView textView = new TextView(C17422k.m16113E(requireContext, true));
            textView.setText(intValue);
            textView.setGravity(1);
            textView.setTextAppearance(2131952178);
            textView.setLayoutParams(layoutParams);
            ((LinearLayout) this.f46669c.getValue()).addView(textView);
            arrayList.add(s.a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r8 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttach(android.content.Context r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            p193e.p194a.p1011l.C16612a1.super.onAttach(r1)
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L22
            r0 = r8
            java.lang.String r1 = "type"
            java.io.Serializable r0 = r0.getSerializable(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L22
            goto L26
        L22:
            com.truecaller.premium.data.PremiumType r0 = com.truecaller.premium.data.PremiumType.PREMIUM
            r8 = r0
        L26:
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.data.PremiumType"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            com.truecaller.premium.data.PremiumType r0 = (com.truecaller.premium.data.PremiumType) r0
            r8 = r0
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L46
            r0 = r9
            java.lang.String r1 = "page_number"
            int r0 = r0.getInt(r1)
            r10 = r0
            goto L48
        L46:
            r0 = 0
            r10 = r0
        L48:
            r0 = r7
            androidx.fragment.app.Fragment r0 = r0.getParentFragment()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.PremiumScreenEntryPointProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.l.x1 r0 = (p193e.p194a.p1011l.AbstractC17301x1) r0
            e.a.l.w1 r0 = r0.mo16270tt()
            r9 = r0
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r8
            java.lang.String r1 = "premiumType"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.Class<e.a.l.w1> r1 = p193e.p194a.p1011l.AbstractC17298w1.class
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3846s(r0, r1)
            r0 = r8
            java.lang.String r1 = "Cannot return null from a non-@Nullable @Provides method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.l.i2 r0 = r0.mo11963W0()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Cannot return null from a non-@Nullable component method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.l.b1 r1 = new e.a.l.b1
            r2 = r1
            r3 = r8
            r4 = r10
            r5 = r9
            r2.<init>(r3, r4, r5)
            r0.f46667a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16612a1.onAttach(android.content.Context):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium_details_page, viewGroup, false);
    }

    public void onDestroyView() {
        C16612a1.super.onDestroyView();
        C16625b1 c16625b1 = this.f46667a;
        if (c16625b1 != null) {
            c16625b1.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C16612a1.super.onViewCreated(view, bundle);
        C16625b1 c16625b1 = this.f46667a;
        if (c16625b1 != null) {
            c16625b1.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
