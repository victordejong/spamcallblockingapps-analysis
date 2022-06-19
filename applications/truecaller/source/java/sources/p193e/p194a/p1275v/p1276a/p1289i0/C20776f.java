package p193e.p194a.p1275v.p1276a.p1289i0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.numbers.SimData;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1289i0.C20773d;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1308o.AbstractC20919b;
import p193e.p194a.p682e.C12864a2;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0006J/\u0010\u000f\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0006J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006+"}, d2 = {"Le/a/v/a/i0/f;", "Landroid/widget/LinearLayout;", "Le/a/v/a/i0/c;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "g5", "", "Le/a/v/a/i0/a;", "contactNumbers", "Lcom/truecaller/details_view/ui/numbers/SimData;", "primarySim", "secondarySim", "i5", "(Ljava/util/List;Lcom/truecaller/details_view/ui/numbers/SimData;Lcom/truecaller/details_view/ui/numbers/SimData;)V", "", "number", "e5", "(Ljava/lang/String;)V", "f5", "h5", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/i0/b;", "a", "Le/a/v/a/i0/b;", "getPresenter", "()Le/a/v/a/i0/b;", "setPresenter", "(Le/a/v/a/i0/b;)V", "presenter", "Le/a/v/o/b;", C22021b.f61237c, "Le/a/v/o/b;", "getConversationsRouter", "()Le/a/v/o/b;", "setConversationsRouter", "(Le/a/v/o/b;)V", "conversationsRouter", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.i0.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/f.class */
public final class C20776f extends LinearLayout implements AbstractC20772c, AbstractC20848a {
    @Inject

    /* renamed from: a */
    public AbstractC20771b f58424a;
    @Inject

    /* renamed from: b */
    public AbstractC20919b f58425b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20776f(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, int r11) {
        /*
            r6 = this;
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r9 = r0
        L9:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L14
            r0 = 0
            r10 = r0
        L14:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            r0 = r7
            android.content.Context r0 = r0.getApplicationContext()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r6
            r0.mo10534p(r1)
            int r0 = com.truecaller.details_view.C3857R.C3858drawable.selectable_background_outlined_view
            r9 = r0
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r9
            android.graphics.drawable.Drawable r1 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r1, r2)
            r0.setBackground(r1)
            r0 = r6
            r1 = 1
            r0.setOrientation(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1289i0.C20776f.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0355  */
    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10605K0(p193e.p194a.p1275v.p1276a.C20847s r19) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1289i0.C20776f.mo10605K0(e.a.v.a.s):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c
    /* renamed from: e5 */
    public void mo10711e5(String str) {
        l.e(str, "number");
        AbstractC20919b abstractC20919b = this.f58425b;
        if (abstractC20919b != null) {
            abstractC20919b.mo10522a(C17891a1.C17902k.m15628a1(this), str);
        } else {
            l.l("conversationsRouter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c
    /* renamed from: f5 */
    public void mo10710f5(String str) {
        l.e(str, "number");
        C12864a2.m22560d0(getContext(), str, null);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c
    /* renamed from: g5 */
    public void mo10709g5() {
        C19286f.m13689O(this);
        removeAllViews();
    }

    public final AbstractC20919b getConversationsRouter() {
        AbstractC20919b abstractC20919b = this.f58425b;
        if (abstractC20919b != null) {
            return abstractC20919b;
        }
        l.l("conversationsRouter");
        throw null;
    }

    public final AbstractC20771b getPresenter() {
        AbstractC20771b abstractC20771b = this.f58424a;
        if (abstractC20771b != null) {
            return abstractC20771b;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c
    /* renamed from: h5 */
    public void mo10708h5() {
        Toast.makeText(getContext(), C3857R.string.details_view_copied_to_clipboard, 0).show();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c
    /* renamed from: i5 */
    public void mo10707i5(List<C20770a> list, SimData simData, SimData simData2) {
        l.e(list, "contactNumbers");
        l.e(simData, "primarySim");
        C19286f.m13684T(this);
        removeAllViews();
        int i = 0;
        for (Object obj : list) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            C20770a c20770a = (C20770a) obj;
            boolean z = i < list.size() - 1;
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            C20779i c20779i = new C20779i(context, null, 0, 0, 14);
            l.e(c20770a, "number");
            l.e(simData, "primarySimData");
            TextView textView = c20779i.f58429t.f58835f;
            l.d(textView, "binding.number");
            textView.setText(c20770a.f58404a);
            TextView textView2 = c20779i.f58429t.f58837h;
            l.d(textView2, "binding.numberDetails");
            textView2.setText(c20770a.f58405b);
            ImageView imageView = c20779i.f58429t.f58838i;
            l.d(imageView, "binding.primarySimButton");
            c20779i.m10706f1(imageView, c20770a, simData);
            ImageView imageView2 = c20779i.f58429t.f58839j;
            l.d(imageView2, "binding.secondarySimButton");
            c20779i.m10706f1(imageView2, c20770a, simData2);
            ImageView imageView3 = c20779i.f58429t.f58831b;
            l.d(imageView3, "binding.callContextButton");
            C19286f.m13683U(imageView3, c20770a.f58406c);
            ImageView imageView4 = c20779i.f58429t.f58831b;
            l.d(imageView4, "binding.callContextButton");
            imageView4.setTag(13);
            c20779i.f58429t.f58831b.setOnClickListener(new View$OnClickListenerC25347l(0, c20770a));
            c20779i.f58429t.f58840k.setOnClickListener(new View$OnClickListenerC25347l(1, c20770a));
            c20779i.setOnClickListener(new View$OnClickListenerC20777g(c20770a, simData));
            c20779i.setOnLongClickListener(new View$OnLongClickListenerC20778h(c20770a));
            View view = c20779i.f58429t.f58834e;
            l.d(view, "binding.divider");
            C19286f.m13683U(view, z);
            LinearLayout linearLayout = c20779i.f58429t.f58836g;
            l.d(linearLayout, "binding.numberCategoryContainer");
            C19286f.m13683U(linearLayout, c20770a.f58412i != null);
            C20773d.C20774a c20774a = c20770a.f58412i;
            if (c20774a != null) {
                c20779i.f58429t.f58832c.setImageResource(c20774a.f58419b);
                ImageView imageView5 = c20779i.f58429t.f58832c;
                l.d(imageView5, "binding.categoryIcon");
                imageView5.setImageTintList(ColorStateList.valueOf(c20774a.f58420c));
                TextView textView3 = c20779i.f58429t.f58833d;
                l.d(textView3, "binding.categoryLabel");
                textView3.setText(c20774a.f58418a);
                c20779i.f58429t.f58833d.setTextColor(c20774a.f58420c);
            }
            addView(c20779i);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20771b abstractC20771b = this.f58424a;
        if (abstractC20771b != null) {
            ((AbstractC20576b) abstractC20771b).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20771b abstractC20771b = this.f58424a;
        if (abstractC20771b == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20771b).f57683a = null;
        super.onDetachedFromWindow();
    }

    public final void setConversationsRouter(AbstractC20919b abstractC20919b) {
        l.e(abstractC20919b, "<set-?>");
        this.f58425b = abstractC20919b;
    }

    public final void setPresenter(AbstractC20771b abstractC20771b) {
        l.e(abstractC20771b, "<set-?>");
        this.f58424a = abstractC20771b;
    }
}
