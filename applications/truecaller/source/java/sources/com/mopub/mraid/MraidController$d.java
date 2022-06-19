package com.mopub.mraid;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import e.n.c.f;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$d.class */
public class MraidController$d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f9019a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f9020b;

    /* renamed from: c */
    public final /* synthetic */ MraidController f9021c;

    public MraidController$d(MraidController mraidController, View view, Runnable runnable) {
        this.f9021c = mraidController;
        this.f9019a = view;
        this.f9020b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        DisplayMetrics displayMetrics = this.f9021c.f8818b.getResources().getDisplayMetrics();
        f fVar = this.f9021c.m;
        fVar.b.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
        fVar.a(fVar.b, fVar.c);
        int[] iArr = new int[2];
        ViewGroup f = this.f9021c.f();
        f.getLocationOnScreen(iArr);
        f fVar2 = this.f9021c.m;
        int i = iArr[0];
        int i2 = iArr[1];
        fVar2.d.set(i, i2, f.getWidth() + i, f.getHeight() + i2);
        fVar2.a(fVar2.d, fVar2.e);
        this.f9021c.f8819c.getLocationOnScreen(iArr);
        MraidController mraidController = this.f9021c;
        f fVar3 = mraidController.m;
        int i3 = iArr[0];
        int i4 = iArr[1];
        fVar3.h.set(i3, i4, mraidController.f8819c.getWidth() + i3, this.f9021c.f8819c.getHeight() + i4);
        fVar3.a(fVar3.h, fVar3.i);
        this.f9019a.getLocationOnScreen(iArr);
        f fVar4 = this.f9021c.m;
        int i5 = iArr[0];
        int i6 = iArr[1];
        fVar4.f.set(i5, i6, this.f9019a.getWidth() + i5, this.f9019a.getHeight() + i6);
        fVar4.a(fVar4.f, fVar4.g);
        MraidController mraidController2 = this.f9021c;
        mraidController2.q.notifyScreenMetrics(mraidController2.m);
        if (this.f9021c.r.m36206f()) {
            MraidController mraidController3 = this.f9021c;
            mraidController3.r.notifyScreenMetrics(mraidController3.m);
        }
        Runnable runnable = this.f9020b;
        if (runnable != null) {
            runnable.run();
        }
    }
}
