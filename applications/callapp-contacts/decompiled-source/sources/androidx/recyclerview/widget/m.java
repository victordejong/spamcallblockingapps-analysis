package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
public final class m {
    private m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.s sVar, j jVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.getChildCount() == 0 || sVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.i.c(view) - RecyclerView.i.c(view2)) + 1;
        }
        return Math.min(jVar.e(), jVar.b(view2) - jVar.a(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RecyclerView.s sVar, j jVar, View view, View view2, RecyclerView.i iVar, boolean z, boolean z2) {
        if (iVar.getChildCount() == 0 || sVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (sVar.a() - Math.max(RecyclerView.i.c(view), RecyclerView.i.c(view2))) - 1) : Math.max(0, Math.min(RecyclerView.i.c(view), RecyclerView.i.c(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(jVar.b(view2) - jVar.a(view)) / (Math.abs(RecyclerView.i.c(view) - RecyclerView.i.c(view2)) + 1))) + (jVar.b() - jVar.a(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(RecyclerView.s sVar, j jVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.getChildCount() == 0 || sVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return sVar.a();
        }
        return (int) (((jVar.b(view2) - jVar.a(view)) / (Math.abs(RecyclerView.i.c(view) - RecyclerView.i.c(view2)) + 1)) * sVar.a());
    }
}
