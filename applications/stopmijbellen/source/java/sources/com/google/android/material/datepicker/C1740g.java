package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.C0648v;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import p163m0.C3546a;
import p163m0.C3589v;
import p174n0.C3694b;
/* renamed from: com.google.android.material.datepicker.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g.class */
public final class C1740g<S> extends AbstractC1768x<S> {

    /* renamed from: l */
    public static final /* synthetic */ int f6541l = 0;

    /* renamed from: b */
    public int f6542b;

    /* renamed from: c */
    public AbstractC1736d<S> f6543c;

    /* renamed from: d */
    public C1726a f6544d;

    /* renamed from: e */
    public C1761s f6545e;

    /* renamed from: f */
    public int f6546f;

    /* renamed from: g */
    public C1733c f6547g;

    /* renamed from: h */
    public RecyclerView f6548h;

    /* renamed from: i */
    public RecyclerView f6549i;

    /* renamed from: j */
    public View f6550j;

    /* renamed from: k */
    public View f6551k;

    /* renamed from: com.google.android.material.datepicker.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g$a.class */
    public class RunnableC1741a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f6552a;

        public RunnableC1741a(int i) {
            C1740g.this = r4;
            this.f6552a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.AbstractC0573m abstractC0573m;
            RecyclerView recyclerView = C1740g.this.f6549i;
            int i = this.f6552a;
            if (!recyclerView.f2217w && (abstractC0573m = recyclerView.f2197m) != null) {
                abstractC0573m.mo4591G0(recyclerView, recyclerView.f2186g0, i);
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g$b.class */
    public class C1742b extends C3546a {
        public C1742b(C1740g c1740g) {
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            c3694b.m1872l(null);
        }
    }

    /* renamed from: com.google.android.material.datepicker.g$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g$c.class */
    public class C1743c extends C1769y {

        /* renamed from: E */
        public final /* synthetic */ int f6554E;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1743c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            C1740g.this = r6;
            this.f6554E = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* renamed from: J0 */
        public void mo4620J0(RecyclerView.C0592x c0592x, int[] iArr) {
            if (this.f6554E == 0) {
                iArr[0] = C1740g.this.f6549i.getWidth();
                iArr[1] = C1740g.this.f6549i.getWidth();
                return;
            }
            iArr[0] = C1740g.this.f6549i.getHeight();
            iArr[1] = C1740g.this.f6549i.getHeight();
        }
    }

    /* renamed from: com.google.android.material.datepicker.g$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g$d.class */
    public class C1744d implements AbstractC1745e {
        public C1744d() {
            C1740g.this = r4;
        }
    }

    /* renamed from: com.google.android.material.datepicker.g$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/g$e.class */
    public interface AbstractC1745e {
    }

    @Override // com.google.android.material.datepicker.AbstractC1768x
    /* renamed from: a */
    public boolean mo4592a(AbstractC1767w<S> abstractC1767w) {
        return this.f6617a.add(abstractC1767w);
    }

    /* renamed from: c */
    public LinearLayoutManager m4624c() {
        return (LinearLayoutManager) this.f6549i.getLayoutManager();
    }

    /* renamed from: d */
    public final void m4623d(int i) {
        this.f6549i.post(new RunnableC1741a(i));
    }

    /* renamed from: e */
    public void m4622e(C1761s c1761s) {
        C1765v c1765v = (C1765v) this.f6549i.getAdapter();
        int m4602h = c1765v.f6611d.f6505a.m4602h(c1761s);
        int m4594h = m4602h - c1765v.m4594h(this.f6545e);
        boolean z = true;
        boolean z2 = Math.abs(m4594h) > 3;
        if (m4594h <= 0) {
            z = false;
        }
        this.f6545e = c1761s;
        if (z2 && z) {
            this.f6549i.m7883e0(m4602h - 3);
            m4623d(m4602h);
        } else if (!z2) {
            m4623d(m4602h);
        } else {
            this.f6549i.m7883e0(m4602h + 3);
            m4623d(m4602h);
        }
    }

    /* renamed from: f */
    public void m4621f(int i) {
        this.f6546f = i;
        if (i == 2) {
            this.f6548h.getLayoutManager().mo7673w0(((C1734c0) this.f6548h.getAdapter()).m4634g(this.f6545e.f6597c));
            this.f6550j.setVisibility(0);
            this.f6551k.setVisibility(8);
        } else if (i != 1) {
        } else {
            this.f6550j.setVisibility(8);
            this.f6551k.setVisibility(0);
            m4622e(this.f6545e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f6542b = bundle2.getInt("THEME_RES_ID_KEY");
        this.f6543c = (AbstractC1736d) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f6544d = (C1726a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f6545e = (C1761s) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        C0648v c0648v;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f6542b);
        this.f6547g = new C1733c(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        C1761s c1761s = this.f6544d.f6505a;
        if (C1753o.m4614d(contextThemeWrapper)) {
            i2 = 2131493036;
            i = 1;
        } else {
            i2 = 2131493031;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131165688);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131165689);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131165687);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131165672);
        int i3 = C1763t.f6602f;
        inflate.setMinimumHeight(dimensionPixelOffset2 + dimensionPixelOffset + dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelOffset(2131165686) * (i3 - 1)) + (resources.getDimensionPixelSize(2131165667) * i3) + resources.getDimensionPixelOffset(2131165664));
        GridView gridView = (GridView) inflate.findViewById(2131296817);
        C3589v.m2103u(gridView, new C1742b(this));
        gridView.setAdapter((ListAdapter) new C1739f());
        gridView.setNumColumns(c1761s.f6598d);
        gridView.setEnabled(false);
        this.f6549i = (RecyclerView) inflate.findViewById(2131296820);
        this.f6549i.setLayoutManager(new C1743c(getContext(), i, false, i));
        this.f6549i.setTag("MONTHS_VIEW_GROUP_TAG");
        C1765v c1765v = new C1765v(contextThemeWrapper, this.f6543c, this.f6544d, new C1744d());
        this.f6549i.setAdapter(c1765v);
        int integer = contextThemeWrapper.getResources().getInteger(2131361833);
        RecyclerView recyclerView3 = (RecyclerView) inflate.findViewById(2131296823);
        this.f6548h = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.f6548h.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f6548h.setAdapter(new C1734c0(this));
            this.f6548h.m7880g(new C1746h(this));
        }
        if (inflate.findViewById(2131296807) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(2131296807);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            C3589v.m2103u(materialButton, new C1747i(this));
            MaterialButton materialButton2 = (MaterialButton) inflate.findViewById(2131296809);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) inflate.findViewById(2131296808);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.f6550j = inflate.findViewById(2131296823);
            this.f6551k = inflate.findViewById(2131296816);
            m4621f(1);
            materialButton.setText(this.f6545e.m4604f(inflate.getContext()));
            this.f6549i.m7878h(new C1748j(this, c1765v, materialButton));
            materialButton.setOnClickListener(new View$OnClickListenerC1749k(this));
            materialButton3.setOnClickListener(new View$OnClickListenerC1750l(this, c1765v));
            materialButton2.setOnClickListener(new View$OnClickListenerC1751m(this, c1765v));
        }
        if (!C1753o.m4614d(contextThemeWrapper) && (recyclerView2 = (c0648v = new C0648v()).f2396a) != (recyclerView = this.f6549i)) {
            if (recyclerView2 != null) {
                RecyclerView.AbstractC0581q abstractC0581q = c0648v.f2397b;
                List<RecyclerView.AbstractC0581q> list = recyclerView2.f2190i0;
                if (list != null) {
                    list.remove(abstractC0581q);
                }
                c0648v.f2396a.setOnFlingListener(null);
            }
            c0648v.f2396a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() != null) {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
                c0648v.f2396a.m7878h(c0648v.f2397b);
                c0648v.f2396a.setOnFlingListener(c0648v);
                new Scroller(c0648v.f2396a.getContext(), new DecelerateInterpolator());
                c0648v.m7618b();
            }
        }
        this.f6549i.m7883e0(c1765v.m4594h(this.f6545e));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f6542b);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f6543c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f6544d);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f6545e);
    }
}
