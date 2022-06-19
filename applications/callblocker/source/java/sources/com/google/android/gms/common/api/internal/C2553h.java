package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.ActivityC0664d;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public class C2553h {

    /* renamed from: a */
    private final Object f7213a;

    public C2553h(Activity activity) {
        C2662s.m13980a(activity, "Activity must not be null");
        this.f7213a = activity;
    }

    /* renamed from: a */
    public boolean m14246a() {
        return this.f7213a instanceof ActivityC0664d;
    }

    /* renamed from: b */
    public final boolean m14245b() {
        return this.f7213a instanceof Activity;
    }

    /* renamed from: c */
    public Activity m14244c() {
        return (Activity) this.f7213a;
    }

    /* renamed from: d */
    public ActivityC0664d m14243d() {
        return (ActivityC0664d) this.f7213a;
    }
}
