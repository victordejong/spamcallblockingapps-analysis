package androidx.viewpager2.adapter;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.C0926v;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.viewpager2.adapter.b */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/b.class */
public final class C2952b extends RecyclerView.AbstractC2657v {
    private C2952b(FrameLayout frameLayout) {
        super(frameLayout);
    }

    /* renamed from: a */
    public static C2952b m39574a(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(C0926v.m44141a());
        frameLayout.setSaveEnabled(false);
        return new C2952b(frameLayout);
    }
}
