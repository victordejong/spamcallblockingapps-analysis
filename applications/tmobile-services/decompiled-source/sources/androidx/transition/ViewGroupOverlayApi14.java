package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewGroupOverlayApi14.class */
public class ViewGroupOverlayApi14 extends ViewOverlayApi14 implements ViewGroupOverlayImpl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroupOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static ViewGroupOverlayApi14 m16711g(ViewGroup viewGroup) {
        return (ViewGroupOverlayApi14) ViewOverlayApi14.m16702e(viewGroup);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    /* renamed from: c */
    public void mo16710c(@NonNull View view) {
        this.f5296a.m16699b(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    /* renamed from: d */
    public void mo16709d(@NonNull View view) {
        this.f5296a.m16694g(view);
    }
}
