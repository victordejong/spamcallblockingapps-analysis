package com.truecaller.bizmon.callMeBack.mvp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p336i.AbstractC7917a;
import p193e.p194a.p294b.p336i.p343k.C7944a;
import p193e.p194a.p294b.p336i.p343k.C7945b;
import p193e.p194a.p294b.p355m.C8058d1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\bR\u0019\u0010\u0011\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;", "Le/a/b/i/a;", "Ls1/s;", "onAttachedToWindow", "()V", "", "visible", "q", "(Z)V", "p", AnalyticsConstants.SHOW, "f", "Le/a/b/m/d1;", "d", "Le/a/b/m/d1;", "getBinding", "()Le/a/b/m/d1;", "binding", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView.class */
public final class CallMeBackFACSButtonView extends AbstractC7917a {

    /* renamed from: d */
    public final C8058d1 f10280d;

    /* renamed from: com.truecaller.bizmon.callMeBack.mvp.CallMeBackFACSButtonView$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView$a.class */
    public static final class View$OnClickListenerC3485a implements View.OnClickListener {
        public View$OnClickListenerC3485a() {
            CallMeBackFACSButtonView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7945b c7945b = (C7945b) CallMeBackFACSButtonView.this.getPresenter();
            Objects.requireNonNull(c7945b);
            d.w2(c7945b, (f) null, (j0) null, new C7944a(c7945b, null), 3, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallMeBackFACSButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        C17422k.m16050u0(from, true).inflate(C3478R.layout.layout_facs_call_me_back_button, this);
        int i = C3478R.C3480id.btnRequestCallMeBack;
        Button button = (Button) findViewById(i);
        if (button != null) {
            i = C3478R.C3480id.btnResponseDone;
            ImageButton imageButton = (ImageButton) findViewById(i);
            if (imageButton != null) {
                i = C3478R.C3480id.layoutCallMeBackLoading;
                FrameLayout frameLayout = (FrameLayout) findViewById(i);
                if (frameLayout != null) {
                    C8058d1 c8058d1 = new C8058d1(this, button, imageButton, frameLayout);
                    l.d(c8058d1, "LayoutFacsCallMeBackButt…(useThemeX = true), this)");
                    this.f10280d = c8058d1;
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: f */
    public void mo29111f(boolean z) {
        FrameLayout frameLayout = this.f10280d.f24840d;
        l.d(frameLayout, "binding.layoutCallMeBackLoading");
        C19286f.m13683U(frameLayout, z);
    }

    public final C8058d1 getBinding() {
        return this.f10280d;
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10280d.f24838b.setOnClickListener(new View$OnClickListenerC3485a());
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: p */
    public void mo29107p(boolean z) {
        Button button = this.f10280d.f24838b;
        l.d(button, "binding.btnRequestCallMeBack");
        C19286f.m13686R(button, z);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: q */
    public void mo29106q(boolean z) {
        ImageButton imageButton = this.f10280d.f24839c;
        l.d(imageButton, "binding.btnResponseDone");
        C19286f.m13686R(imageButton, z);
    }
}
