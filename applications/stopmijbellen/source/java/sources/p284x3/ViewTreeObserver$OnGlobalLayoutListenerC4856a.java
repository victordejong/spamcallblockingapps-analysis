package p284x3;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.view.ViewTreeObserver;
import com.google.android.material.navigation.NavigationView;
import p262v3.C4607h;
/* renamed from: x3.a */
/* loaded from: classes-dex2jar.jar:x3/a.class */
public class ViewTreeObserver$OnGlobalLayoutListenerC4856a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ NavigationView f14888a;

    public ViewTreeObserver$OnGlobalLayoutListenerC4856a(NavigationView navigationView) {
        this.f14888a = navigationView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Activity activity;
        NavigationView navigationView = this.f14888a;
        navigationView.getLocationOnScreen(navigationView.f6733j);
        NavigationView navigationView2 = this.f14888a;
        boolean z = navigationView2.f6733j[1] == 0;
        C4607h c4607h = navigationView2.f6730g;
        if (c4607h.f14272u != z) {
            c4607h.f14272u = z;
            c4607h.m706m();
        }
        NavigationView navigationView3 = this.f14888a;
        navigationView3.setDrawTopInsetForeground(z && navigationView3.f6736m);
        Context context = this.f14888a.getContext();
        while (true) {
            Context context2 = context;
            if (!(context2 instanceof ContextWrapper)) {
                activity = null;
                break;
            } else if (context2 instanceof Activity) {
                activity = (Activity) context2;
                break;
            } else {
                context = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (activity != null) {
            boolean z2 = activity.findViewById(16908290).getHeight() == this.f14888a.getHeight();
            boolean z3 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
            NavigationView navigationView4 = this.f14888a;
            navigationView4.setDrawBottomInsetForeground(z2 && z3 && navigationView4.f6737n);
        }
    }
}
