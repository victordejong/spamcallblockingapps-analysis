package org.xutils.view;

import android.app.Activity;
import android.view.View;
/* renamed from: org.xutils.view.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/view/a.class */
final class C9680a {

    /* renamed from: a */
    private View f40891a;

    /* renamed from: b */
    private Activity f40892b;

    public C9680a(Activity activity) {
        this.f40892b = activity;
    }

    public C9680a(View view) {
        this.f40891a = view;
    }

    /* renamed from: a */
    public View m130a(int i) {
        View view = this.f40891a;
        if (view != null) {
            return view.findViewById(i);
        }
        Activity activity = this.f40892b;
        if (activity == null) {
            return null;
        }
        return activity.findViewById(i);
    }

    /* renamed from: b */
    public View m129b(int i, int i2) {
        View m130a = i2 > 0 ? m130a(i2) : null;
        return m130a != null ? m130a.findViewById(i) : m130a(i);
    }

    /* renamed from: c */
    public View m128c(C9681b c9681b) {
        return m129b(c9681b.f40893a, c9681b.f40894b);
    }
}
