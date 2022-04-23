package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.ContextWrapper;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ai.class */
public final class ai extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    Activity f28695a;

    public ai(Application application) {
        super(application);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        Activity activity = this.f28695a;
        return activity != null ? activity.getSystemService(str) : super.getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f28695a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        super.startActivity(intent);
    }
}
