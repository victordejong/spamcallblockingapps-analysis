package com.facebook.internal;

import android.app.Activity;
/* renamed from: com.facebook.internal.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/f.class */
public abstract class AbstractC10281f<CONTENT, RESULT> {

    /* renamed from: a */
    protected static final Object f33805a = new Object();

    /* renamed from: b */
    private final Activity f33806b;

    /* renamed from: c */
    private final C10326s f33807c;

    /* renamed from: d */
    private int f33808d;

    public AbstractC10281f(Activity activity, int i) {
        C10218af.m23179a((Object) activity, "activity");
        this.f33806b = activity;
        this.f33807c = null;
        this.f33808d = i;
    }

    public AbstractC10281f(C10326s c10326s, int i) {
        C10218af.m23179a(c10326s, "fragmentWrapper");
        this.f33807c = c10326s;
        this.f33806b = null;
        this.f33808d = i;
        if ((c10326s.f33912a != null ? c10326s.f33912a.getActivity() : c10326s.f33913b.getActivity()) != null) {
            return;
        }
        throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
    }
}
