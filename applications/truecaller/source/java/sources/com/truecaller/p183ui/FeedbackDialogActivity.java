package com.truecaller.p183ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.truecaller.p183ui.components.FeedbackItemView;
import n3.b.a.h;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.View$OnClickListenerC12750i2;
/* renamed from: com.truecaller.ui.FeedbackDialogActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/FeedbackDialogActivity.class */
public class FeedbackDialogActivity extends h implements FeedbackItemView.AbstractC4679c {

    /* renamed from: d */
    public static final /* synthetic */ int f15550d = 0;

    /* renamed from: a */
    public FeedbackItemView f15551a;

    /* renamed from: b */
    public View$OnClickListenerC12750i2 f15552b;

    /* renamed from: c */
    public AbstractC19854f<AbstractC19463a0> f15553c;

    /* JADX WARN: Multi-variable type inference failed */
    public void onActivityResult(int i, int i2, Intent intent) {
        FeedbackDialogActivity.super.onActivityResult(i, i2, intent);
        View$OnClickListenerC12750i2 view$OnClickListenerC12750i2 = this.f15552b;
        if (view$OnClickListenerC12750i2 != null) {
            FeedbackItemView feedbackItemView = (FeedbackItemView) view$OnClickListenerC12750i2.f37128g;
            if (feedbackItemView != null && !feedbackItemView.m34528e()) {
                return;
            }
            this.f15552b.m22713a();
            finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        FeedbackDialogActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        C17422k.m16069l(getTheme());
        this.f15553c = ((AbstractC21187w1) getApplication()).mo10154s().mo12217s();
        new Handler(getMainLooper()).postDelayed(new Runnable() { // from class: e.a.e.l
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 761
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.RunnableC13273l.run():void");
            }
        }, 2000L);
    }

    public void onResume() {
        FeedbackDialogActivity.super.onResume();
        FeedbackItemView feedbackItemView = this.f15551a;
        if (feedbackItemView != null) {
            feedbackItemView.m34527f();
            this.f15551a = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public void m34594pa(FeedbackItemView.FeedbackItem feedbackItem) {
        View$OnClickListenerC12750i2 view$OnClickListenerC12750i2 = this.f15552b;
        if (view$OnClickListenerC12750i2 != null) {
            FeedbackItemView feedbackItemView = (FeedbackItemView) view$OnClickListenerC12750i2.f37128g;
            if (feedbackItemView != null && feedbackItemView.m34528e()) {
                return;
            }
            this.f15552b.m22713a();
            finish();
        }
    }
}
