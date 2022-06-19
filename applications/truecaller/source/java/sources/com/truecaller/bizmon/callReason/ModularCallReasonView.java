package com.truecaller.bizmon.callReason;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.AbstractC18241d;
import p193e.p194a.p1064m5.C18242e;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p355m.C8067g1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/truecaller/bizmon/callReason/ModularCallReasonView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/m5/d;", "Le/a/m5/c;", "presenter", "Ls1/s;", "setPresenter", "(Le/a/m5/c;)V", "", "label", "setLabel", "(Ljava/lang/String;)V", "message", "setMessage", "", "isExpanded", "setIsExpanded", "(Z)V", "isExpandable", "setIsExpandable", "", "maxLength", "setMessageMaxLength", "(I)V", "R", "()V", "Le/a/m5/e;", "theme", "P", "(Le/a/m5/e;)V", "Le/a/b/m/g1;", "u", "Le/a/b/m/g1;", "getBinding", "()Le/a/b/m/g1;", "setBinding", "(Le/a/b/m/g1;)V", "binding", "t", "Le/a/m5/c;", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callReason/ModularCallReasonView.class */
public final class ModularCallReasonView extends ConstraintLayout implements AbstractC18241d {

    /* renamed from: t */
    public AbstractC18240c f10284t;

    /* renamed from: u */
    public C8067g1 f10285u;

    /* renamed from: com.truecaller.bizmon.callReason.ModularCallReasonView$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/bizmon/callReason/ModularCallReasonView$a.class */
    public static final class View$OnClickListenerC3487a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f10286a;

        /* renamed from: b */
        public final /* synthetic */ Object f10287b;

        /* renamed from: c */
        public final /* synthetic */ boolean f10288c;

        public View$OnClickListenerC3487a(int i, Object obj, boolean z) {
            this.f10286a = i;
            this.f10287b = obj;
            this.f10288c = z;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f10286a;
            if (i == 0) {
                AbstractC18240c abstractC18240c = ((ModularCallReasonView) this.f10287b).f10284t;
                if (abstractC18240c == null) {
                    return;
                }
                abstractC18240c.mo9709g4();
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC18240c abstractC18240c2 = ((ModularCallReasonView) this.f10287b).f10284t;
                if (abstractC18240c2 == null) {
                    return;
                }
                abstractC18240c2.mo9709g4();
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.callReason.ModularCallReasonView$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callReason/ModularCallReasonView$b.class */
    public static final class RunnableC3488b implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ boolean f10290b;

        public RunnableC3488b(boolean z) {
            ModularCallReasonView.this = r4;
            this.f10290b = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8067g1 binding = ModularCallReasonView.this.getBinding();
            ImageButton imageButton = binding.f24899c;
            l.d(imageButton, "ivToggleButton");
            imageButton.setSelected(this.f10290b);
            TextView textView = binding.f24901e;
            l.d(textView, "tvCallReasonMain");
            C19286f.m13683U(textView, this.f10290b);
            TextView textView2 = binding.f24900d;
            l.d(textView2, "tvCallReason");
            C19286f.m13683U(textView2, !this.f10290b);
            ImageView imageView = binding.f24898b;
            l.d(imageView, "ivBizDot");
            C19286f.m13683U(imageView, !this.f10290b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModularCallReasonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C3478R.layout.layout_modular_call_reason, (ViewGroup) this, false);
        addView(inflate);
        CardView cardView = (CardView) inflate;
        int i = C3478R.C3480id.ivBizDot;
        ImageView imageView = (ImageView) inflate.findViewById(i);
        if (imageView != null) {
            i = C3478R.C3480id.ivToggleButton;
            ImageButton imageButton = (ImageButton) inflate.findViewById(i);
            if (imageButton != null) {
                i = C3478R.C3480id.rootModularCallReason;
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i);
                if (constraintLayout != null) {
                    i = C3478R.C3480id.tvCallReason;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C3478R.C3480id.tvCallReasonMain;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            i = C3478R.C3480id.tvCallReasonTitle;
                            TextView textView3 = (TextView) inflate.findViewById(i);
                            if (textView3 != null) {
                                C8067g1 c8067g1 = new C8067g1((CardView) inflate, cardView, imageView, imageButton, constraintLayout, textView, textView2, textView3);
                                l.d(c8067g1, "LayoutModularCallReasonB…emeX = true), this, true)");
                                this.f10285u = c8067g1;
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    /* renamed from: P */
    public void mo15388P(C18242e c18242e) {
        l.e(c18242e, "theme");
        this.f10285u.f24902f.setTextColor(c18242e.f51545a);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    /* renamed from: R */
    public void mo15387R() {
        C19286f.m13689O(this);
    }

    public final C8067g1 getBinding() {
        return this.f10285u;
    }

    public final void setBinding(C8067g1 c8067g1) {
        l.e(c8067g1, "<set-?>");
        this.f10285u = c8067g1;
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setIsExpandable(boolean z) {
        C8067g1 c8067g1 = this.f10285u;
        if (z) {
            c8067g1.f24902f.setOnClickListener(new View$OnClickListenerC3487a(0, this, z));
            c8067g1.f24899c.setOnClickListener(new View$OnClickListenerC3487a(1, this, z));
            ImageButton imageButton = c8067g1.f24899c;
            l.d(imageButton, "ivToggleButton");
            C19286f.m13684T(imageButton);
            return;
        }
        c8067g1.f24902f.setOnClickListener(null);
        c8067g1.f24899c.setOnClickListener(null);
        ImageButton imageButton2 = c8067g1.f24899c;
        l.d(imageButton2, "ivToggleButton");
        C19286f.m13689O(imageButton2);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setIsExpanded(boolean z) {
        post(new RunnableC3488b(z));
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setLabel(String str) {
        l.e(str, "label");
        TextView textView = this.f10285u.f24902f;
        l.d(textView, "binding.tvCallReasonTitle");
        textView.setText(str);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setMessage(String str) {
        l.e(str, "message");
        C8067g1 c8067g1 = this.f10285u;
        TextView textView = c8067g1.f24900d;
        l.d(textView, "tvCallReason");
        textView.setText(str);
        TextView textView2 = c8067g1.f24901e;
        l.d(textView2, "tvCallReasonMain");
        textView2.setText(str);
    }

    @Override // p193e.p194a.p1064m5.AbstractC18241d
    public void setMessageMaxLength(int i) {
        TextView textView = this.f10285u.f24901e;
        l.d(textView, "binding.tvCallReasonMain");
        textView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(i)});
    }

    public final void setPresenter(AbstractC18240c abstractC18240c) {
        l.e(abstractC18240c, "presenter");
        AbstractC18240c abstractC18240c2 = this.f10284t;
        if (abstractC18240c2 != null) {
            abstractC18240c2.mo9806c();
        }
        this.f10284t = abstractC18240c;
        abstractC18240c.mo9029Y0(this);
    }
}
