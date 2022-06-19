package com.google.android.play.core.review;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15182f;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.review.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/d.class */
public final class C15098d implements AbstractC15097c {

    /* renamed from: a */
    private final C15104j f54826a;

    /* renamed from: b */
    private final Handler f54827b = new Handler(Looper.getMainLooper());

    public C15098d(C15104j c15104j) {
        this.f54826a = c15104j;
    }

    @Override // com.google.android.play.core.review.AbstractC15097c
    /* renamed from: a */
    public final AbstractC15180d<ReviewInfo> mo9466a() {
        C15104j c15104j = this.f54826a;
        C15104j.f54834a.m9508c("requestInAppReview (%s)", c15104j.f54836c);
        if (c15104j.f54835b == null) {
            C15104j.f54834a.m9509b("Play Store app is either not installed or not the official version", new Object[0]);
            return C15182f.m9329a((Exception) new C15100f());
        }
        C15192p c15192p = new C15192p();
        c15104j.f54835b.m9504a(new C15101g(c15104j, c15192p, c15192p));
        return c15192p.f55025a;
    }

    @Override // com.google.android.play.core.review.AbstractC15097c
    /* renamed from: a */
    public final AbstractC15180d<Void> mo9465a(Activity activity, ReviewInfo reviewInfo) {
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.mo9467a());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        C15192p c15192p = new C15192p();
        intent.putExtra("result_receiver", new ResultReceiverC15096b(this.f54827b, c15192p));
        activity.startActivity(intent);
        return c15192p.f55025a;
    }
}
