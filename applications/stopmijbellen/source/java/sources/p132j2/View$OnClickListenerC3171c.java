package p132j2;

import android.animation.AnimatorSet;
import android.view.View;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import com.github.clans.fab.RunnableC1636a;
/* renamed from: j2.c */
/* loaded from: classes-dex2jar.jar:j2/c.class */
public class View$OnClickListenerC3171c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ FloatingActionMenu f10679a;

    public View$OnClickListenerC3171c(FloatingActionMenu floatingActionMenu) {
        this.f10679a = floatingActionMenu;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FloatingActionMenu floatingActionMenu = this.f10679a;
        boolean z = floatingActionMenu.f6096L;
        boolean z2 = floatingActionMenu.f6124j;
        if (z2) {
            floatingActionMenu.m4832a(z);
        } else if (z2) {
        } else {
            int i = 0;
            if (floatingActionMenu.f6114d0 != 0) {
                floatingActionMenu.f6110b0.start();
            }
            if (floatingActionMenu.f6103T) {
                AnimatorSet animatorSet = floatingActionMenu.f6111c;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    floatingActionMenu.f6109b.cancel();
                    floatingActionMenu.f6107a.start();
                }
            }
            floatingActionMenu.f6125k = true;
            int childCount = floatingActionMenu.getChildCount() - 1;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (childCount < 0) {
                    floatingActionMenu.f6126l.postDelayed(new RunnableC1636a(floatingActionMenu), (i + 1) * floatingActionMenu.f6093I);
                    return;
                }
                View childAt = floatingActionMenu.getChildAt(childCount);
                int i4 = i;
                int i5 = i3;
                if (childAt instanceof FloatingActionButton) {
                    i4 = i;
                    i5 = i3;
                    if (childAt.getVisibility() != 8) {
                        i4 = i + 1;
                        floatingActionMenu.f6126l.postDelayed(new RunnableC3172d(floatingActionMenu, (FloatingActionButton) childAt, z), i3);
                        i5 = i3 + floatingActionMenu.f6093I;
                    }
                }
                childCount--;
                i = i4;
                i2 = i5;
            }
        }
    }
}
