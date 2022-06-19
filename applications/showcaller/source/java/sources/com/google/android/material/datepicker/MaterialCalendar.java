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
import androidx.recyclerview.widget.C0978j;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
import p020b.p041h.p049k.C1593d;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1891g;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar.class */
public final class MaterialCalendar<S> extends AbstractC8119l<S> {

    /* renamed from: f0 */
    static final Object f36563f0 = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: g0 */
    static final Object f36564g0 = "NAVIGATION_PREV_TAG";

    /* renamed from: h0 */
    static final Object f36565h0 = "NAVIGATION_NEXT_TAG";

    /* renamed from: i0 */
    static final Object f36566i0 = "SELECTOR_TOGGLE_TAG";

    /* renamed from: j0 */
    private int f36567j0;

    /* renamed from: k0 */
    private DateSelector<S> f36568k0;

    /* renamed from: l0 */
    private CalendarConstraints f36569l0;

    /* renamed from: m0 */
    private Month f36570m0;

    /* renamed from: n0 */
    private CalendarSelector f36571n0;

    /* renamed from: o0 */
    private C8100b f36572o0;

    /* renamed from: p0 */
    private RecyclerView f36573p0;

    /* renamed from: q0 */
    private RecyclerView f36574q0;

    /* renamed from: r0 */
    private View f36575r0;

    /* renamed from: s0 */
    private View f36576s0;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$CalendarSelector.class */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$a.class */
    public class RunnableC8081a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f36580d;

        RunnableC8081a(int i) {
            MaterialCalendar.this = r4;
            this.f36580d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.f36574q0.m31998q1(this.f36580d);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$b.class */
    class C8082b extends C1599a {
        C8082b() {
            MaterialCalendar.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29485e0(null);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$c.class */
    class C8083c extends C8120m {

        /* renamed from: I */
        final /* synthetic */ int f36583I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8083c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            MaterialCalendar.this = r6;
            this.f36583I = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* renamed from: N1 */
        public void mo4987N1(RecyclerView.C0938y c0938y, int[] iArr) {
            if (this.f36583I == 0) {
                iArr[0] = MaterialCalendar.this.f36574q0.getWidth();
                iArr[1] = MaterialCalendar.this.f36574q0.getWidth();
                return;
            }
            iArr[0] = MaterialCalendar.this.f36574q0.getHeight();
            iArr[1] = MaterialCalendar.this.f36574q0.getHeight();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$d.class */
    class C8084d implements AbstractC8091k {
        C8084d() {
            MaterialCalendar.this = r4;
        }

        @Override // com.google.android.material.datepicker.MaterialCalendar.AbstractC8091k
        /* renamed from: a */
        public void mo4983a(long j) {
            if (MaterialCalendar.this.f36569l0.m5029f().mo5011R(j)) {
                MaterialCalendar.this.f36568k0.mo4944i0(j);
                Iterator<AbstractC8118k<S>> it = MaterialCalendar.this.f36696e0.iterator();
                while (it.hasNext()) {
                    it.next().mo4863b((S) MaterialCalendar.this.f36568k0.mo4948a0());
                }
                MaterialCalendar.this.f36574q0.getAdapter().m31967i();
                if (MaterialCalendar.this.f36573p0 == null) {
                    return;
                }
                MaterialCalendar.this.f36573p0.getAdapter().m31967i();
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$e.class */
    public class C8085e extends RecyclerView.AbstractC0920n {

        /* renamed from: a */
        private final Calendar f36586a = C8123o.m4839q();

        /* renamed from: b */
        private final Calendar f36587b = C8123o.m4839q();

        C8085e() {
            MaterialCalendar.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0920n
        /* renamed from: g */
        public void mo4986g(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0938y c0938y) {
            if (!(recyclerView.getAdapter() instanceof C8124p) || !(recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                return;
            }
            C8124p c8124p = (C8124p) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            for (C1593d<Long, Long> c1593d : MaterialCalendar.this.f36568k0.mo4942q()) {
                Long l = c1593d.f6187a;
                if (l != null && c1593d.f6188b != null) {
                    this.f36586a.setTimeInMillis(l.longValue());
                    this.f36587b.setTimeInMillis(c1593d.f6188b.longValue());
                    int m4832C = c8124p.m4832C(this.f36586a.get(1));
                    int m4832C2 = c8124p.m4832C(this.f36587b.get(1));
                    View mo31870C = gridLayoutManager.mo31870C(m4832C);
                    View mo31870C2 = gridLayoutManager.mo31870C(m4832C2);
                    int m32181V2 = m4832C / gridLayoutManager.m32181V2();
                    int m32181V22 = m4832C2 / gridLayoutManager.m32181V2();
                    int i = m32181V2;
                    while (i <= m32181V22) {
                        View mo31870C3 = gridLayoutManager.mo31870C(gridLayoutManager.m32181V2() * i);
                        if (mo31870C3 != null) {
                            canvas.drawRect(i == m32181V2 ? mo31870C.getLeft() + (mo31870C.getWidth() / 2) : 0, mo31870C3.getTop() + MaterialCalendar.this.f36572o0.f36634d.m4937c(), i == m32181V22 ? mo31870C2.getLeft() + (mo31870C2.getWidth() / 2) : recyclerView.getWidth(), mo31870C3.getBottom() - MaterialCalendar.this.f36572o0.f36634d.m4938b(), MaterialCalendar.this.f36572o0.f36638h);
                        }
                        i++;
                    }
                }
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$f.class */
    public class C8086f extends C1599a {
        C8086f() {
            MaterialCalendar.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29469m0(MaterialCalendar.this.f36576s0.getVisibility() == 0 ? MaterialCalendar.this.m32931d0(C1894j.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.m32931d0(C1894j.mtrl_picker_toggle_to_day_selection));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$g.class */
    public class C8087g extends RecyclerView.AbstractC0929s {

        /* renamed from: a */
        final /* synthetic */ C8115j f36590a;

        /* renamed from: b */
        final /* synthetic */ MaterialButton f36591b;

        C8087g(C8115j c8115j, MaterialButton materialButton) {
            MaterialCalendar.this = r4;
            this.f36590a = c8115j;
            this.f36591b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: a */
        public void mo4985a(RecyclerView recyclerView, int i) {
            if (i == 0) {
                CharSequence text = this.f36591b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
            int m32140Z1 = i < 0 ? MaterialCalendar.this.m4993q2().m32140Z1() : MaterialCalendar.this.m4993q2().m32138b2();
            MaterialCalendar.this.f36570m0 = this.f36590a.m4869B(m32140Z1);
            this.f36591b.setText(this.f36590a.m4868C(m32140Z1));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$h.class */
    public class View$OnClickListenerC8088h implements View.OnClickListener {
        View$OnClickListenerC8088h() {
            MaterialCalendar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.m4988v2();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$i.class */
    public class View$OnClickListenerC8089i implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C8115j f36594d;

        View$OnClickListenerC8089i(C8115j c8115j) {
            MaterialCalendar.this = r4;
            this.f36594d = c8115j;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int m32140Z1 = MaterialCalendar.this.m4993q2().m32140Z1() + 1;
            if (m32140Z1 < MaterialCalendar.this.f36574q0.getAdapter().mo4501d()) {
                MaterialCalendar.this.m4990t2(this.f36594d.m4869B(m32140Z1));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$j.class */
    public class View$OnClickListenerC8090j implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ C8115j f36596d;

        View$OnClickListenerC8090j(C8115j c8115j) {
            MaterialCalendar.this = r4;
            this.f36596d = c8115j;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int m32138b2 = MaterialCalendar.this.m4993q2().m32138b2() - 1;
            if (m32138b2 >= 0) {
                MaterialCalendar.this.m4990t2(this.f36596d.m4869B(m32138b2));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$k */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$k.class */
    public interface AbstractC8091k {
        /* renamed from: a */
        void mo4983a(long j);
    }

    /* renamed from: j2 */
    private void m5000j2(View view, C8115j c8115j) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(C1890f.month_navigation_fragment_toggle);
        materialButton.setTag(f36566i0);
        C1679w.m29273r0(materialButton, new C8086f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C1890f.month_navigation_previous);
        materialButton2.setTag(f36564g0);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C1890f.month_navigation_next);
        materialButton3.setTag(f36565h0);
        this.f36575r0 = view.findViewById(C1890f.mtrl_calendar_year_selector_frame);
        this.f36576s0 = view.findViewById(C1890f.mtrl_calendar_day_selector_frame);
        m4989u2(CalendarSelector.DAY);
        materialButton.setText(this.f36570m0.m4971j(view.getContext()));
        this.f36574q0.m32015l(new C8087g(c8115j, materialButton));
        materialButton.setOnClickListener(new View$OnClickListenerC8088h());
        materialButton3.setOnClickListener(new View$OnClickListenerC8089i(c8115j));
        materialButton2.setOnClickListener(new View$OnClickListenerC8090j(c8115j));
    }

    /* renamed from: k2 */
    private RecyclerView.AbstractC0920n m4999k2() {
        return new C8085e();
    }

    /* renamed from: p2 */
    public static int m4994p2(Context context) {
        return context.getResources().getDimensionPixelSize(C1888d.mtrl_calendar_day_height);
    }

    /* renamed from: r2 */
    public static <T> MaterialCalendar<T> m4992r2(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.m5026i());
        materialCalendar.m32971L1(bundle);
        return materialCalendar;
    }

    /* renamed from: s2 */
    private void m4991s2(int i) {
        this.f36574q0.post(new RunnableC8081a(i));
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: B0 */
    public void mo4888B0(Bundle bundle) {
        super.mo4888B0(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m32884z();
        }
        this.f36567j0 = bundle2.getInt("THEME_RES_ID_KEY");
        this.f36568k0 = (DateSelector) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f36569l0 = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f36570m0 = (Month) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(m32996B(), this.f36567j0);
        this.f36572o0 = new C8100b(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month m5025j = this.f36569l0.m5025j();
        if (C8106f.m4909E2(contextThemeWrapper)) {
            i2 = C1892h.mtrl_calendar_vertical;
            i = 1;
        } else {
            i2 = C1892h.mtrl_calendar_horizontal;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C1890f.mtrl_calendar_days_of_week);
        C1679w.m29273r0(gridView, new C8082b());
        gridView.setAdapter((ListAdapter) new C8105e());
        gridView.setNumColumns(m5025j.f36604g);
        gridView.setEnabled(false);
        this.f36574q0 = (RecyclerView) inflate.findViewById(C1890f.mtrl_calendar_months);
        this.f36574q0.setLayoutManager(new C8083c(m32996B(), i, false, i));
        this.f36574q0.setTag(f36563f0);
        C8115j c8115j = new C8115j(contextThemeWrapper, this.f36568k0, this.f36569l0, new C8084d());
        this.f36574q0.setAdapter(c8115j);
        int integer = contextThemeWrapper.getResources().getInteger(C1891g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C1890f.mtrl_calendar_year_selector_frame);
        this.f36573p0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f36573p0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f36573p0.setAdapter(new C8124p(this));
            this.f36573p0.m32027h(m4999k2());
        }
        if (inflate.findViewById(C1890f.month_navigation_fragment_toggle) != null) {
            m5000j2(inflate, c8115j);
        }
        if (!C8106f.m4909E2(contextThemeWrapper)) {
            new C0978j().m31340b(this.f36574q0);
        }
        this.f36574q0.m32022i1(c8115j.m4867D(this.f36570m0));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Z0 */
    public void mo4886Z0(Bundle bundle) {
        super.mo4886Z0(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f36567j0);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f36568k0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f36569l0);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f36570m0);
    }

    @Override // com.google.android.material.datepicker.AbstractC8119l
    /* renamed from: a2 */
    public boolean mo4862a2(AbstractC8118k<S> abstractC8118k) {
        return super.mo4862a2(abstractC8118k);
    }

    /* renamed from: l2 */
    public CalendarConstraints m4998l2() {
        return this.f36569l0;
    }

    /* renamed from: m2 */
    public C8100b m4997m2() {
        return this.f36572o0;
    }

    /* renamed from: n2 */
    public Month m4996n2() {
        return this.f36570m0;
    }

    /* renamed from: o2 */
    public DateSelector<S> m4995o2() {
        return this.f36568k0;
    }

    /* renamed from: q2 */
    LinearLayoutManager m4993q2() {
        return (LinearLayoutManager) this.f36574q0.getLayoutManager();
    }

    /* renamed from: t2 */
    public void m4990t2(Month month) {
        C8115j c8115j = (C8115j) this.f36574q0.getAdapter();
        int m4867D = c8115j.m4867D(month);
        int m4867D2 = m4867D - c8115j.m4867D(this.f36570m0);
        boolean z = true;
        boolean z2 = Math.abs(m4867D2) > 3;
        if (m4867D2 <= 0) {
            z = false;
        }
        this.f36570m0 = month;
        if (z2 && z) {
            this.f36574q0.m32022i1(m4867D - 3);
            m4991s2(m4867D);
        } else if (!z2) {
            m4991s2(m4867D);
        } else {
            this.f36574q0.m32022i1(m4867D + 3);
            m4991s2(m4867D);
        }
    }

    /* renamed from: u2 */
    public void m4989u2(CalendarSelector calendarSelector) {
        this.f36571n0 = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f36573p0.getLayoutManager().mo31607x1(((C8124p) this.f36573p0.getAdapter()).m4832C(this.f36570m0.f36603f));
            this.f36575r0.setVisibility(0);
            this.f36576s0.setVisibility(8);
        } else if (calendarSelector != CalendarSelector.DAY) {
        } else {
            this.f36575r0.setVisibility(8);
            this.f36576s0.setVisibility(0);
            m4990t2(this.f36570m0);
        }
    }

    /* renamed from: v2 */
    void m4988v2() {
        CalendarSelector calendarSelector = this.f36571n0;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            m4989u2(CalendarSelector.DAY);
        } else if (calendarSelector != CalendarSelector.DAY) {
        } else {
            m4989u2(calendarSelector2);
        }
    }
}
