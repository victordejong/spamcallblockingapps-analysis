package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.m.a.g.e.e;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.a.c.c6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c6.class */
public final class C5180c6 extends e implements AbstractC5280f6 {
    @Inject

    /* renamed from: a */
    public AbstractC5229d6 f17776a;

    /* renamed from: b */
    public final int f17777b;

    /* renamed from: c */
    public final LinearLayout f17778c;

    public C5180c6(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131166432);
        this.f17777b = dimensionPixelSize;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setPaddingRelative(0, dimensionPixelSize, 0, dimensionPixelSize);
        linearLayout.setOrientation(1);
        this.f17778c = linearLayout;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5280f6
    /* renamed from: Jz */
    public void mo33442Jz(List<C5061a6> list) {
        l.e(list, "actions");
        for (C5061a6 c5061a6 : list) {
            LinearLayout linearLayout = this.f17778c;
            View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.item_conversation_error, (ViewGroup) this.f17778c, false);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView");
            AppCompatTextView appCompatTextView = (AppCompatTextView) inflate;
            appCompatTextView.setText(appCompatTextView.getResources().getString(c5061a6.f17336a));
            appCompatTextView.setTextColor(C19291g.m13612L(appCompatTextView.getContext(), c5061a6.f17339d));
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(C19291g.m13535l0(appCompatTextView.getContext(), c5061a6.f17337b, c5061a6.f17338c), (Drawable) null, (Drawable) null, (Drawable) null);
            appCompatTextView.setOnClickListener(new View$OnClickListenerC5111b6(this, c5061a6));
            linearLayout.addView(appCompatTextView);
        }
        if (list.size() > 3) {
            LinearLayout linearLayout2 = this.f17778c;
            View view = new View(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, C8605o.m28238b(view.getContext(), 1.0f));
            int i = this.f17777b;
            layoutParams.bottomMargin = i;
            layoutParams.topMargin = i;
            view.setLayoutParams(layoutParams);
            view.setBackgroundColor(C19291g.m13612L(view.getContext(), 2130970070));
            linearLayout2.addView(view, list.size() - 3);
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C5180c6.super.onAttach(context);
        this.f17776a = (AbstractC5229d6) ((C5689r5) ((AbstractC5275f3) context).mo33447z9()).f19070H0.get();
    }

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        C5180c6.super.onCancel(dialogInterface);
        AbstractC5229d6 abstractC5229d6 = this.f17776a;
        if (abstractC5229d6 != null) {
            abstractC5229d6.mo33480f0();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return this.f17778c;
    }

    public void onDetach() {
        C5180c6.super.onDetach();
        AbstractC5229d6 abstractC5229d6 = this.f17776a;
        if (abstractC5229d6 != null) {
            abstractC5229d6.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C5180c6.super.onViewCreated(view, bundle);
        AbstractC5229d6 abstractC5229d6 = this.f17776a;
        if (abstractC5229d6 != null) {
            abstractC5229d6.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
