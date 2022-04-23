package com.facebook.internal;

import android.app.Activity;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/f.class */
public abstract class f<CONTENT, RESULT> {

    /* renamed from: a  reason: collision with root package name */
    protected static final Object f19927a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Activity f19928b;

    /* renamed from: c  reason: collision with root package name */
    private final s f19929c;

    /* renamed from: d  reason: collision with root package name */
    private int f19930d;

    public f(Activity activity, int i) {
        af.a((Object) activity, "activity");
        this.f19928b = activity;
        this.f19929c = null;
        this.f19930d = i;
    }

    public f(s sVar, int i) {
        af.a(sVar, "fragmentWrapper");
        this.f19929c = sVar;
        this.f19928b = null;
        this.f19930d = i;
        if ((sVar.f19999a != null ? sVar.f19999a.getActivity() : sVar.f20000b.getActivity()) == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }
}
