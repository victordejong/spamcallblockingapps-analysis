package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.o;
/* loaded from: classes-dex2jar.jar:androidx/transition/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f5828a;

    /* renamed from: b  reason: collision with root package name */
    Runnable f5829b;

    /* renamed from: c  reason: collision with root package name */
    private Context f5830c;

    /* renamed from: d  reason: collision with root package name */
    private int f5831d;
    private View e;

    public q(ViewGroup viewGroup) {
        this.f5831d = -1;
        this.f5828a = viewGroup;
    }

    private q(ViewGroup viewGroup, int i, Context context) {
        this.f5831d = -1;
        this.f5830c = context;
        this.f5828a = viewGroup;
        this.f5831d = i;
    }

    public q(ViewGroup viewGroup, View view) {
        this.f5831d = -1;
        this.f5828a = viewGroup;
        this.e = view;
    }

    public static q a(ViewGroup viewGroup) {
        return (q) viewGroup.getTag(o.a.transition_current_scene);
    }
}
