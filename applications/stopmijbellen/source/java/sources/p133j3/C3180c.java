package p133j3;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p174n0.AbstractC3702d;
/* renamed from: j3.c */
/* loaded from: classes-dex2jar.jar:j3/c.class */
public class C3180c implements AbstractC3702d {

    /* renamed from: a */
    public final /* synthetic */ int f10709a;

    /* renamed from: b */
    public final /* synthetic */ BottomSheetBehavior f10710b;

    public C3180c(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.f10710b = bottomSheetBehavior;
        this.f10709a = i;
    }

    @Override // p174n0.AbstractC3702d
    /* renamed from: a */
    public boolean mo1864a(View view, AbstractC3702d.AbstractC3703a abstractC3703a) {
        this.f10710b.m4751B(this.f10709a);
        return true;
    }
}
