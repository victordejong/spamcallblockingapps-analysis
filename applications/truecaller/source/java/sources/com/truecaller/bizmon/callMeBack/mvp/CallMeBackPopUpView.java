package com.truecaller.bizmon.callMeBack.mvp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import com.airbnb.lottie.LottieAnimationView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p336i.AbstractC7917a;
import p193e.p194a.p294b.p336i.p343k.C7944a;
import p193e.p194a.p294b.p336i.p343k.C7945b;
import p193e.p194a.p294b.p355m.C8073i1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0014R\u0019\u0010\u001c\u001a\u00020\u00178\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;", "Le/a/b/i/a;", "Ls1/s;", "onAttachedToWindow", "()V", "o", "", RemoteMessageConst.Notification.COLOR, "background", "n", "(II)V", "", AnalyticsConstants.NAME, "setContactName", "(Ljava/lang/String;)V", "subTitle", "setResponseSubTitle", "", AnalyticsConstants.SHOW, "f", "(Z)V", "visible", "p", "Le/a/b/m/i1;", "d", "Le/a/b/m/i1;", "getBinding", "()Le/a/b/m/i1;", "binding", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView.class */
public final class CallMeBackPopUpView extends AbstractC7917a {

    /* renamed from: d */
    public final C8073i1 f10282d;

    /* renamed from: com.truecaller.bizmon.callMeBack.mvp.CallMeBackPopUpView$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a.class */
    public static final class View$OnClickListenerC3486a implements View.OnClickListener {
        public View$OnClickListenerC3486a() {
            CallMeBackPopUpView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7945b c7945b = (C7945b) CallMeBackPopUpView.this.getPresenter();
            Objects.requireNonNull(c7945b);
            d.w2(c7945b, (f) null, (j0) null, new C7944a(c7945b, null), 3, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallMeBackPopUpView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3478R.layout.layout_pacs_call_me_back, this);
        int i = C3478R.C3480id.barrierRequestCallMeBack;
        Barrier barrier = (Barrier) findViewById(i);
        if (barrier != null) {
            i = C3478R.C3480id.btnRequestCallMeBack;
            Button button = (Button) findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.groupRequestCallmeBack;
                Group group = (Group) findViewById(i);
                if (group != null) {
                    i = C3478R.C3480id.groupResponseCallMeBack;
                    Group group2 = (Group) findViewById(i);
                    if (group2 != null) {
                        i = C3478R.C3480id.ivTickCallMeBackResponse;
                        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(i);
                        if (lottieAnimationView != null) {
                            i = C3478R.C3480id.pbCallMeBackLoading;
                            ProgressBar progressBar = (ProgressBar) findViewById(i);
                            if (progressBar != null) {
                                i = C3478R.C3480id.tvSubTitleCallMeBackResponse;
                                TextView textView = (TextView) findViewById(i);
                                if (textView != null) {
                                    i = C3478R.C3480id.tvSubtitleRequestCallMeBack;
                                    TextView textView2 = (TextView) findViewById(i);
                                    if (textView2 != null) {
                                        i = C3478R.C3480id.tvTitleCallMeBackResponse;
                                        TextView textView3 = (TextView) findViewById(i);
                                        if (textView3 != null) {
                                            i = C3478R.C3480id.tvTitleRequestCallBack;
                                            TextView textView4 = (TextView) findViewById(i);
                                            if (textView4 != null) {
                                                C8073i1 c8073i1 = new C8073i1(this, barrier, button, group, group2, lottieAnimationView, progressBar, textView, textView2, textView3, textView4);
                                                l.d(c8073i1, "LayoutPacsCallMeBackBind…ater.from(context), this)");
                                                this.f10282d = c8073i1;
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: f */
    public void mo29111f(boolean z) {
        ProgressBar progressBar = this.f10282d.f24939f;
        l.d(progressBar, "binding.pbCallMeBackLoading");
        C19286f.m13683U(progressBar, z);
    }

    public final C8073i1 getBinding() {
        return this.f10282d;
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: n */
    public void mo29109n(int i, int i2) {
        C8073i1 c8073i1 = this.f10282d;
        c8073i1.f24935b.setBackgroundResource(i2);
        c8073i1.f24935b.setTextColor(i);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: o */
    public void mo29108o() {
        C8073i1 c8073i1 = this.f10282d;
        c8073i1.f24938e.m42591g();
        Group group = c8073i1.f24936c;
        l.d(group, "groupRequestCallmeBack");
        C19286f.m13689O(group);
        Group group2 = c8073i1.f24937d;
        l.d(group2, "groupResponseCallMeBack");
        C19286f.m13684T(group2);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f10282d.f24935b.setOnClickListener(new View$OnClickListenerC3486a());
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: p */
    public void mo29107p(boolean z) {
        Button button = this.f10282d.f24935b;
        l.d(button, "binding.btnRequestCallMeBack");
        C19286f.m13686R(button, z);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, p193e.p194a.p294b.p336i.AbstractC7924f
    public void setContactName(String str) {
        TextView textView = this.f10282d.f24941h;
        l.d(textView, "binding.tvSubtitleRequestCallMeBack");
        textView.setText(str);
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7917a, p193e.p194a.p294b.p336i.AbstractC7924f
    public void setResponseSubTitle(String str) {
        l.e(str, "subTitle");
        TextView textView = this.f10282d.f24940g;
        l.d(textView, "binding.tvSubTitleCallMeBackResponse");
        textView.setText(str);
    }
}
