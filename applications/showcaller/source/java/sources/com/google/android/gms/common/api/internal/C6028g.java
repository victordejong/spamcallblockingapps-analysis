package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public class C6028g {

    /* renamed from: a */
    private final Object f19287a;

    public C6028g(@RecentlyNonNull Activity activity) {
        C6155o.m17017k(activity, "Activity must not be null");
        this.f19287a = activity;
    }

    /* renamed from: a */
    public Activity m17338a() {
        return (Activity) this.f19287a;
    }

    /* renamed from: b */
    public FragmentActivity m17337b() {
        return (FragmentActivity) this.f19287a;
    }

    /* renamed from: c */
    public boolean m17336c() {
        return this.f19287a instanceof FragmentActivity;
    }

    /* renamed from: d */
    public final boolean m17335d() {
        return this.f19287a instanceof Activity;
    }
}
