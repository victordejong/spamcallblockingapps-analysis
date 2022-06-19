package p101g3;

import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.AbstractC3580m;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: g3.a */
/* loaded from: classes-dex2jar.jar:g3/a.class */
public class C2804a implements AbstractC3580m {

    /* renamed from: a */
    public final /* synthetic */ AppBarLayout f9527a;

    public C2804a(AppBarLayout appBarLayout) {
        this.f9527a = appBarLayout;
    }

    @Override // p163m0.AbstractC3580m
    /* renamed from: a */
    public C3551b0 mo686a(View view, C3551b0 c3551b0) {
        AppBarLayout appBarLayout = this.f9527a;
        Objects.requireNonNull(appBarLayout);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3551b0 c3551b02 = C3589v.C3593d.m2092b(appBarLayout) ? c3551b0 : null;
        if (!Objects.equals(appBarLayout.f6231g, c3551b02)) {
            appBarLayout.f6231g = c3551b02;
            appBarLayout.m4778f();
            appBarLayout.requestLayout();
        }
        return c3551b0;
    }
}
