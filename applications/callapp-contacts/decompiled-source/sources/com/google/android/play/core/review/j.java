package com.google.android.play.core.review;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.ao;
import com.google.android.play.core.internal.c;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.internal.r;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final h f31419a = new h("ReviewService");

    /* renamed from: b  reason: collision with root package name */
    r<c> f31420b;

    /* renamed from: c  reason: collision with root package name */
    final String f31421c;

    public j(Context context) {
        this.f31421c = context.getPackageName();
        if (ao.a(context)) {
            this.f31420b = new r<>(context, f31419a, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), e.f31413a);
        }
    }
}
