package p262v3;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p133j3.C3179b;
import p163m0.AbstractC3580m;
import p163m0.C3551b0;
import p262v3.C4638t;
/* renamed from: v3.r */
/* loaded from: classes-dex2jar.jar:v3/r.class */
public final class C4636r implements AbstractC3580m {

    /* renamed from: a */
    public final /* synthetic */ C4638t.AbstractC4639a f14327a;

    /* renamed from: b */
    public final /* synthetic */ C4638t.C4640b f14328b;

    public C4636r(C4638t.AbstractC4639a abstractC4639a, C4638t.C4640b c4640b) {
        this.f14327a = abstractC4639a;
        this.f14328b = c4640b;
    }

    @Override // p163m0.AbstractC3580m
    /* renamed from: a */
    public C3551b0 mo686a(View view, C3551b0 c3551b0) {
        C4638t.AbstractC4639a abstractC4639a = this.f14327a;
        C4638t.C4640b c4640b = this.f14328b;
        int i = c4640b.f14329a;
        int i2 = c4640b.f14331c;
        int i3 = c4640b.f14332d;
        C3179b c3179b = (C3179b) abstractC4639a;
        c3179b.f10708b.f6349s = c3551b0.m2178e();
        boolean m685a = C4638t.m685a(view);
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        BottomSheetBehavior bottomSheetBehavior = c3179b.f10708b;
        if (bottomSheetBehavior.f6344n) {
            bottomSheetBehavior.f6348r = c3551b0.m2181b();
            paddingBottom = c3179b.f10708b.f6348r + i3;
        }
        if (c3179b.f10708b.f6345o) {
            paddingLeft = c3551b0.m2180c() + (m685a ? i2 : i);
        }
        if (c3179b.f10708b.f6346p) {
            if (m685a) {
                i2 = i;
            }
            paddingRight = c3551b0.m2179d() + i2;
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        if (c3179b.f10707a) {
            c3179b.f10708b.f6342l = c3551b0.f11720a.mo2159f().f9275d;
        }
        BottomSheetBehavior bottomSheetBehavior2 = c3179b.f10708b;
        if (bottomSheetBehavior2.f6344n || c3179b.f10707a) {
            bottomSheetBehavior2.m4742K(false);
        }
        return c3551b0;
    }
}
