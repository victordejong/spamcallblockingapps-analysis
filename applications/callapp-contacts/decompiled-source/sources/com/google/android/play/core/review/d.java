package com.google.android.play.core.review;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.tasks.f;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/d.class */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final j f31411a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f31412b = new Handler(Looper.getMainLooper());

    public d(j jVar) {
        this.f31411a = jVar;
    }

    @Override // com.google.android.play.core.review.c
    public final com.google.android.play.core.tasks.d<ReviewInfo> a() {
        j jVar = this.f31411a;
        j.f31419a.c("requestInAppReview (%s)", jVar.f31421c);
        if (jVar.f31420b == null) {
            j.f31419a.b("Play Store app is either not installed or not the official version", new Object[0]);
            return f.a((Exception) new f());
        }
        p pVar = new p();
        jVar.f31420b.a(new g(jVar, pVar, pVar));
        return pVar.f31578a;
    }

    @Override // com.google.android.play.core.review.c
    public final com.google.android.play.core.tasks.d<Void> a(Activity activity, ReviewInfo reviewInfo) {
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.a());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        p pVar = new p();
        intent.putExtra("result_receiver", new b(this.f31412b, pVar));
        activity.startActivity(intent);
        return pVar.f31578a;
    }
}
