package com.google.android.material.behavior;

import android.view.View;
import e.m.a.g.w.m;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1832m.p1833a.C26670e;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$c.class */
public class SwipeDismissBehavior$c implements Runnable {

    /* renamed from: a */
    public final View f6642a;

    /* renamed from: b */
    public final boolean f6643b;

    /* renamed from: c */
    public final /* synthetic */ SwipeDismissBehavior f6644c;

    public SwipeDismissBehavior$c(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.f6644c = swipeDismissBehavior;
        this.f6642a = view;
        this.f6643b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        m mVar;
        C26670e c26670e = this.f6644c.a;
        if (c26670e != null && c26670e.m1480i(true)) {
            View view = this.f6642a;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.postOnAnimation(this);
        } else if (!this.f6643b || (mVar = this.f6644c.b) == null) {
        } else {
            mVar.a(this.f6642a);
        }
    }
}
