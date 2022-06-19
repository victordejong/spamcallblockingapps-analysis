package com.truecaller.details_view.p162ui.callhistory;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.C3857R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1276a.p1279b0.C20686e;
import p193e.p194a.p1275v.p1304k.C20909p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;", "Landroid/widget/LinearLayout;", "Le/a/v/a/b0/e;", "callHistoryViewModel", "Ls1/s;", "set", "(Le/a/v/a/b0/e;)V", "Le/a/v/k/p;", "a", "Le/a/v/k/p;", "getBinding", "()Le/a/v/k/p;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.callhistory.SingleCallHistoryExpandedView */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView.class */
public final class SingleCallHistoryExpandedView extends LinearLayout {

    /* renamed from: a */
    public final C20909p f11732a;

    /* renamed from: com.truecaller.details_view.ui.callhistory.SingleCallHistoryExpandedView$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView$a.class */
    public static final class View$OnClickListenerC3868a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C20686e f11733a;

        public View$OnClickListenerC3868a(C20686e c20686e) {
            this.f11733a = c20686e;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f11733a.f58262e.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleCallHistoryExpandedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View inflate = LayoutInflater.from(context).inflate(C3857R.layout.view_single_call_history_expanded, (ViewGroup) this, false);
        addView(inflate);
        int i = C3857R.C3859id.barrier;
        Barrier barrier = (Barrier) inflate.findViewById(i);
        if (barrier != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
            i = C3857R.C3859id.ivCallType;
            ImageView imageView = (ImageView) inflate.findViewById(i);
            if (imageView != null) {
                i = C3857R.C3859id.ivSimSlot;
                ImageView imageView2 = (ImageView) inflate.findViewById(i);
                if (imageView2 != null) {
                    i = C3857R.C3859id.tvContactNumber;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C3857R.C3859id.tvTime;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            C20909p c20909p = new C20909p(constraintLayout, barrier, constraintLayout, imageView, imageView2, textView, textView2);
                            l.d(c20909p, "ViewSingleCallHistoryExp…rom(context), this, true)");
                            this.f11732a = c20909p;
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public final C20909p getBinding() {
        return this.f11732a;
    }

    public final void set(C20686e c20686e) {
        l.e(c20686e, "callHistoryViewModel");
        C20909p c20909p = this.f11732a;
        c20909p.f58816b.setImageDrawable(c20686e.f58258a);
        TextView textView = c20909p.f58818d;
        l.d(textView, "tvContactNumber");
        textView.setText(c20686e.f58259b);
        TextView textView2 = c20909p.f58819e;
        l.d(textView2, "tvTime");
        textView2.setText(c20686e.f58260c);
        Drawable drawable = c20686e.f58261d;
        if (drawable != null) {
            ImageView imageView = c20909p.f58817c;
            l.d(imageView, "ivSimSlot");
            C19286f.m13684T(imageView);
            c20909p.f58817c.setImageDrawable(drawable);
        }
        c20909p.f58815a.setOnClickListener(new View$OnClickListenerC3868a(c20686e));
    }
}
