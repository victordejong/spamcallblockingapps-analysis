package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.C2901o;
/* renamed from: androidx.transition.q */
/* loaded from: classes-dex2jar.jar:androidx/transition/q.class */
public final class C2904q {

    /* renamed from: a */
    ViewGroup f10900a;

    /* renamed from: b */
    Runnable f10901b;

    /* renamed from: c */
    private Context f10902c;

    /* renamed from: d */
    private int f10903d;

    /* renamed from: e */
    private View f10904e;

    public C2904q(ViewGroup viewGroup) {
        this.f10903d = -1;
        this.f10900a = viewGroup;
    }

    private C2904q(ViewGroup viewGroup, int i, Context context) {
        this.f10903d = -1;
        this.f10902c = context;
        this.f10900a = viewGroup;
        this.f10903d = i;
    }

    public C2904q(ViewGroup viewGroup, View view) {
        this.f10903d = -1;
        this.f10900a = viewGroup;
        this.f10904e = view;
    }

    /* renamed from: a */
    public static C2904q m39682a(ViewGroup viewGroup) {
        return (C2904q) viewGroup.getTag(C2901o.C2902a.transition_current_scene);
    }
}
