package com.google.android.play.core.review;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.AbstractC15063c;
import com.google.android.play.core.internal.C15024ao;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
/* renamed from: com.google.android.play.core.review.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/j.class */
public final class C15104j {

    /* renamed from: a */
    static final C15072h f54834a = new C15072h("ReviewService");

    /* renamed from: b */
    C15082r<AbstractC15063c> f54835b;

    /* renamed from: c */
    final String f54836c;

    public C15104j(Context context) {
        this.f54836c = context.getPackageName();
        if (C15024ao.m9585a(context)) {
            this.f54835b = new C15082r<>(context, f54834a, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), C15099e.f54828a);
        }
    }
}
