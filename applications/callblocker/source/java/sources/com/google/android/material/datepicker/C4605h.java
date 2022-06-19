package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.p025g.C0522d;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.recyclerview.widget.C0987i;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/h.class */
public final class C4605h<S> extends AbstractC4633p<S> {

    /* renamed from: a */
    static final Object f20059a = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: b */
    static final Object f20060b = "NAVIGATION_PREV_TAG";

    /* renamed from: c */
    static final Object f20061c = "NAVIGATION_NEXT_TAG";

    /* renamed from: d */
    static final Object f20062d = "SELECTOR_TOGGLE_TAG";

    /* renamed from: ae */
    private EnumC4616a f20063ae;

    /* renamed from: af */
    private C4599c f20064af;

    /* renamed from: ag */
    private RecyclerView f20065ag;

    /* renamed from: ah */
    private RecyclerView f20066ah;

    /* renamed from: ai */
    private View f20067ai;

    /* renamed from: aj */
    private View f20068aj;

    /* renamed from: f */
    private int f20069f;

    /* renamed from: g */
    private AbstractC4600d<S> f20070g;

    /* renamed from: h */
    private C4594a f20071h;

    /* renamed from: i */
    private C4626l f20072i;

    /* renamed from: com.google.android.material.datepicker.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/h$a.class */
    public enum EnumC4616a {
        DAY,
        YEAR
    }

    /* renamed from: com.google.android.material.datepicker.h$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/h$b.class */
    public interface AbstractC4617b {
        /* renamed from: a */
        void mo3174a(long j);
    }

    /* renamed from: a */
    public static <T> C4605h<T> m3195a(AbstractC4600d<T> abstractC4600d, int i, C4594a c4594a) {
        C4605h<T> c4605h = new C4605h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", abstractC4600d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c4594a);
        bundle.putParcelable("CURRENT_MONTH_KEY", c4594a.m3227d());
        c4605h.m19941g(bundle);
        return c4605h;
    }

    /* renamed from: a */
    private void m3196a(View view, final C4629n c4629n) {
        final MaterialButton materialButton = (MaterialButton) view.findViewById(C4492a.C4498f.month_navigation_fragment_toggle);
        materialButton.setTag(f20062d);
        C0595u.m20345a(materialButton, new C0549a() { // from class: com.google.android.material.datepicker.h.6
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view2, C0553c c0553c) {
                super.mo2272a(view2, c0553c);
                c0553c.m20484f(C4605h.this.f20068aj.getVisibility() == 0 ? C4605h.this.m19959b(C4492a.C4502j.mtrl_picker_toggle_to_year_selection) : C4605h.this.m19959b(C4492a.C4502j.mtrl_picker_toggle_to_day_selection));
            }
        });
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C4492a.C4498f.month_navigation_previous);
        materialButton2.setTag(f20060b);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C4492a.C4498f.month_navigation_next);
        materialButton3.setTag(f20061c);
        this.f20067ai = view.findViewById(C4492a.C4498f.mtrl_calendar_year_selector_frame);
        this.f20068aj = view.findViewById(C4492a.C4498f.mtrl_calendar_day_selector_frame);
        m3194a(EnumC4616a.DAY);
        materialButton.setText(this.f20072i.m3137d());
        this.f20066ah.addOnScrollListener(new RecyclerView.AbstractC0934n() { // from class: com.google.android.material.datepicker.h.7
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
            /* renamed from: a */
            public void mo3175a(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    CharSequence text = materialButton.getText();
                    if (Build.VERSION.SDK_INT >= 16) {
                        recyclerView.announceForAccessibility(text);
                    } else {
                        recyclerView.sendAccessibilityEvent(2048);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
            /* renamed from: a */
            public void mo1098a(RecyclerView recyclerView, int i, int i2) {
                int m19074o = i < 0 ? C4605h.this.m3189at().m19074o() : C4605h.this.m3189at().m19073p();
                C4605h.this.f20072i = c4629n.m3118f(m19074o);
                materialButton.setText(c4629n.m3119e(m19074o));
            }
        });
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.h.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C4605h.this.m3190as();
            }
        });
        materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.h.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int m19074o = C4605h.this.m3189at().m19074o();
                if (m19074o + 1 < C4605h.this.f20066ah.getAdapter().mo959a()) {
                    C4605h.this.m3191a(c4629n.m3118f(m19074o + 1));
                }
            }
        });
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.h.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int m19073p = C4605h.this.m3189at().m19073p();
                if (m19073p - 1 >= 0) {
                    C4605h.this.m3191a(c4629n.m3118f(m19073p - 1));
                }
            }
        });
    }

    /* renamed from: av */
    private RecyclerView.AbstractC0924h m3188av() {
        return new RecyclerView.AbstractC0924h() { // from class: com.google.android.material.datepicker.h.5

            /* renamed from: b */
            private final Calendar f20082b = C4636r.m3106b();

            /* renamed from: c */
            private final Calendar f20083c = C4636r.m3106b();

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
            /* renamed from: a */
            public void mo3176a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
                if (!(recyclerView.getAdapter() instanceof C4637s) || !(recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    return;
                }
                C4637s c4637s = (C4637s) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (C0522d<Long, Long> c0522d : C4605h.this.f20070g.m3208d()) {
                    if (c0522d.f1954a != null && c0522d.f1955b != null) {
                        this.f20082b.setTimeInMillis(c0522d.f1954a.longValue());
                        this.f20083c.setTimeInMillis(c0522d.f1955b.longValue());
                        int m3094e = c4637s.m3094e(this.f20082b.get(1));
                        int m3094e2 = c4637s.m3094e(this.f20083c.get(1));
                        View c = gridLayoutManager.mo18952c(m3094e);
                        View c2 = gridLayoutManager.mo18952c(m3094e2);
                        int m19141b = m3094e / gridLayoutManager.m19141b();
                        int m19141b2 = m3094e2 / gridLayoutManager.m19141b();
                        int i = m19141b;
                        while (i <= m19141b2) {
                            View c3 = gridLayoutManager.mo18952c(gridLayoutManager.m19141b() * i);
                            if (c3 != null) {
                                int top = c3.getTop();
                                canvas.drawRect(i == m19141b ? c.getLeft() + (c.getWidth() / 2) : 0, C4605h.this.f20064af.f20049d.m3219a() + top, i == m19141b2 ? c2.getLeft() + (c2.getWidth() / 2) : recyclerView.getWidth(), c3.getBottom() - C4605h.this.f20064af.f20049d.m3216b(), C4605h.this.f20064af.f20053h);
                            }
                            i++;
                        }
                    }
                }
            }
        };
    }

    /* renamed from: b */
    public static int m3187b(Context context) {
        return context.getResources().getDimensionPixelSize(C4492a.C4496d.mtrl_calendar_day_height);
    }

    /* renamed from: e */
    private void m3182e(final int i) {
        this.f20066ah.post(new Runnable() { // from class: com.google.android.material.datepicker.h.2
            @Override // java.lang.Runnable
            public void run() {
                C4605h.this.f20066ah.smoothScrollToPosition(i);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(m19924p(), this.f20069f);
        this.f20064af = new C4599c(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        C4626l m3231b = this.f20071h.m3231b();
        if (C4618i.m3165b(contextThemeWrapper)) {
            i = C4492a.C4500h.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = C4492a.C4500h.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C4492a.C4498f.mtrl_calendar_days_of_week);
        C0595u.m20345a(gridView, new C0549a() { // from class: com.google.android.material.datepicker.h.1
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view, C0553c c0553c) {
                super.mo2272a(view, c0553c);
                c0553c.m20512a((Object) null);
            }
        });
        gridView.setAdapter((ListAdapter) new C4604g());
        gridView.setNumColumns(m3231b.f20122c);
        gridView.setEnabled(false);
        this.f20066ah = (RecyclerView) inflate.findViewById(C4492a.C4498f.mtrl_calendar_months);
        final int i3 = i2;
        this.f20066ah.setLayoutManager(new C4634q(m19924p(), i2, false) { // from class: com.google.android.material.datepicker.h.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            /* renamed from: a */
            protected void mo3177a(RecyclerView.C0945u c0945u, int[] iArr) {
                if (i3 == 0) {
                    iArr[0] = C4605h.this.f20066ah.getWidth();
                    iArr[1] = C4605h.this.f20066ah.getWidth();
                    return;
                }
                iArr[0] = C4605h.this.f20066ah.getHeight();
                iArr[1] = C4605h.this.f20066ah.getHeight();
            }
        });
        this.f20066ah.setTag(f20059a);
        C4629n c4629n = new C4629n(contextThemeWrapper, this.f20070g, this.f20071h, new AbstractC4617b() { // from class: com.google.android.material.datepicker.h.4
            @Override // com.google.android.material.datepicker.C4605h.AbstractC4617b
            /* renamed from: a */
            public void mo3174a(long j) {
                if (C4605h.this.f20071h.m3233a().mo3203a(j)) {
                    C4605h.this.f20070g.m3214a(j);
                    Iterator<AbstractC4632o<S>> it = C4605h.this.f20140e.iterator();
                    while (it.hasNext()) {
                        it.next().mo3117a((S) C4605h.this.f20070g.m3215a());
                    }
                    C4605h.this.f20066ah.getAdapter().m19041d();
                    if (C4605h.this.f20065ag == null) {
                        return;
                    }
                    C4605h.this.f20065ag.getAdapter().m19041d();
                }
            }
        });
        this.f20066ah.setAdapter(c4629n);
        int integer = contextThemeWrapper.getResources().getInteger(C4492a.C4499g.mtrl_calendar_year_selector_span);
        this.f20065ag = (RecyclerView) inflate.findViewById(C4492a.C4498f.mtrl_calendar_year_selector_frame);
        if (this.f20065ag != null) {
            this.f20065ag.setHasFixedSize(true);
            this.f20065ag.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f20065ag.setAdapter(new C4637s(this));
            this.f20065ag.addItemDecoration(m3188av());
        }
        if (inflate.findViewById(C4492a.C4498f.month_navigation_fragment_toggle) != null) {
            m3196a(inflate, c4629n);
        }
        if (!C4618i.m3165b(contextThemeWrapper)) {
            new C0987i().m18399a(this.f20066ah);
        }
        this.f20066ah.scrollToPosition(c4629n.m3124a(this.f20072i));
        return inflate;
    }

    /* renamed from: a */
    public C4626l m3197a() {
        return this.f20072i;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        super.mo3149a(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m19929m();
        }
        this.f20069f = bundle2.getInt("THEME_RES_ID_KEY");
        this.f20070g = (AbstractC4600d) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f20071h = (C4594a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f20072i = (C4626l) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    /* renamed from: a */
    public void m3194a(EnumC4616a enumC4616a) {
        this.f20063ae = enumC4616a;
        if (enumC4616a == EnumC4616a.YEAR) {
            this.f20065ag.getLayoutManager().mo18709e(((C4637s) this.f20065ag.getAdapter()).m3094e(this.f20072i.f20121b));
            this.f20067ai.setVisibility(0);
            this.f20068aj.setVisibility(8);
        } else if (enumC4616a != EnumC4616a.DAY) {
        } else {
            this.f20067ai.setVisibility(8);
            this.f20068aj.setVisibility(0);
            m3191a(this.f20072i);
        }
    }

    /* renamed from: a */
    public void m3191a(C4626l c4626l) {
        C4629n c4629n = (C4629n) this.f20066ah.getAdapter();
        int m3124a = c4629n.m3124a(c4626l);
        int m3124a2 = m3124a - c4629n.m3124a(this.f20072i);
        boolean z = Math.abs(m3124a2) > 3;
        boolean z2 = m3124a2 > 0;
        this.f20072i = c4626l;
        if (z && z2) {
            this.f20066ah.scrollToPosition(m3124a - 3);
            m3182e(m3124a);
        } else if (!z) {
            m3182e(m3124a);
        } else {
            this.f20066ah.scrollToPosition(m3124a + 3);
            m3182e(m3124a);
        }
    }

    /* renamed from: as */
    void m3190as() {
        if (this.f20063ae == EnumC4616a.YEAR) {
            m3194a(EnumC4616a.DAY);
        } else if (this.f20063ae != EnumC4616a.DAY) {
        } else {
            m3194a(EnumC4616a.YEAR);
        }
    }

    /* renamed from: at */
    LinearLayoutManager m3189at() {
        return (LinearLayoutManager) this.f20066ah.getLayoutManager();
    }

    /* renamed from: d */
    public C4594a m3184d() {
        return this.f20071h;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f20069f);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f20070g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f20071h);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f20072i);
    }

    /* renamed from: f */
    public AbstractC4600d<S> m3180f() {
        return this.f20070g;
    }

    /* renamed from: g */
    public C4599c m3178g() {
        return this.f20064af;
    }
}
