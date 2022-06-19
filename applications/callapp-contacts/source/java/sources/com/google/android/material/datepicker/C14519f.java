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
import androidx.core.p036e.C0828b;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.recyclerview.widget.C2697k;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C14376a;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f.class */
public final class C14519f<S> extends AbstractC14544l<S> {

    /* renamed from: a */
    static final Object f52980a = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: b */
    static final Object f52981b = "NAVIGATION_PREV_TAG";

    /* renamed from: c */
    static final Object f52982c = "NAVIGATION_NEXT_TAG";

    /* renamed from: d */
    static final Object f52983d = "SELECTOR_TOGGLE_TAG";

    /* renamed from: e */
    DateSelector<S> f52984e;

    /* renamed from: f */
    CalendarConstraints f52985f;

    /* renamed from: g */
    Month f52986g;

    /* renamed from: h */
    int f52987h;

    /* renamed from: i */
    C14513b f52988i;

    /* renamed from: k */
    private int f52989k;

    /* renamed from: l */
    private RecyclerView f52990l;

    /* renamed from: m */
    private RecyclerView f52991m;

    /* renamed from: n */
    private View f52992n;

    /* renamed from: o */
    private View f52993o;

    /* renamed from: com.google.android.material.datepicker.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f$a.class */
    public static final class EnumC14530a extends Enum<EnumC14530a> {

        /* renamed from: a */
        public static final int f53012a = 1;

        /* renamed from: b */
        public static final int f53013b = 2;

        /* renamed from: c */
        private static final /* synthetic */ int[] f53014c = {1, 2};

        private EnumC14530a(String str, int i) {
            super(str, i);
        }
    }

    /* renamed from: com.google.android.material.datepicker.f$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f$b.class */
    public interface AbstractC14531b {
        /* renamed from: a */
        void mo10831a(long j);
    }

    /* renamed from: a */
    public static int m10845a(Context context) {
        return context.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_day_height);
    }

    /* renamed from: a */
    public static <T> C14519f<T> m10844a(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        C14519f<T> c14519f = new C14519f<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.getOpenAt());
        c14519f.setArguments(bundle);
        return c14519f;
    }

    /* renamed from: a */
    final LinearLayoutManager m10847a() {
        return (LinearLayoutManager) this.f52991m.getLayoutManager();
    }

    /* renamed from: a */
    public final void m10846a(int i) {
        this.f52987h = i;
        if (i == EnumC14530a.f53013b) {
            this.f52990l.getLayoutManager().mo40240d(((C14549p) this.f52990l.getAdapter()).m10780a(this.f52986g.year));
            this.f52992n.setVisibility(0);
            this.f52993o.setVisibility(8);
        } else if (i != EnumC14530a.f53012a) {
        } else {
            this.f52992n.setVisibility(8);
            this.f52993o.setVisibility(0);
            m10843a(this.f52986g);
        }
    }

    /* renamed from: a */
    public final void m10843a(Month month) {
        C14540j c14540j = (C14540j) this.f52991m.getAdapter();
        final int m10805a = c14540j.m10805a(month);
        int m10805a2 = m10805a - c14540j.m10805a(this.f52986g);
        boolean z = true;
        boolean z2 = Math.abs(m10805a2) > 3;
        if (m10805a2 <= 0) {
            z = false;
        }
        this.f52986g = month;
        if (z2 && z) {
            this.f52991m.m40464b(m10805a - 3);
        } else if (z2) {
            this.f52991m.m40464b(m10805a + 3);
        }
        this.f52991m.post(new Runnable() { // from class: com.google.android.material.datepicker.f.2
            @Override // java.lang.Runnable
            public final void run() {
                C14519f.this.f52991m.m40449d(m10805a);
            }
        });
    }

    @Override // com.google.android.material.datepicker.AbstractC14544l
    /* renamed from: a */
    public final boolean mo10802a(AbstractC14543k<S> abstractC14543k) {
        return super.mo10802a(abstractC14543k);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f52989k = bundle2.getInt("THEME_RES_ID_KEY");
        this.f52984e = (DateSelector) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f52985f = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f52986g = (Month) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f52989k);
        this.f52988i = new C14513b(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.f52985f.getStart();
        if (C14532g.m10830a(contextThemeWrapper)) {
            i2 = C14376a.C14384h.mtrl_calendar_vertical;
            i = 1;
        } else {
            i2 = C14376a.C14384h.mtrl_calendar_horizontal;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C14376a.C14382f.mtrl_calendar_days_of_week);
        C0926v.m44123a(gridView, new C0865a() { // from class: com.google.android.material.datepicker.f.1
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view, C0869c c0869c) {
                super.mo9886a(view, c0869c);
                c0869c.m44274a((Object) null);
            }
        });
        gridView.setAdapter((ListAdapter) new C14518e());
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.f52991m = (RecyclerView) inflate.findViewById(C14376a.C14382f.mtrl_calendar_months);
        final int i3 = i;
        this.f52991m.setLayoutManager(new C14545m(getContext(), i, false) { // from class: com.google.android.material.datepicker.f.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            /* renamed from: a */
            public final void mo10835a(RecyclerView.C2654s c2654s, int[] iArr) {
                if (i3 == 0) {
                    iArr[0] = C14519f.this.f52991m.getWidth();
                    iArr[1] = C14519f.this.f52991m.getWidth();
                    return;
                }
                iArr[0] = C14519f.this.f52991m.getHeight();
                iArr[1] = C14519f.this.f52991m.getHeight();
            }
        });
        this.f52991m.setTag(f52980a);
        final C14540j c14540j = new C14540j(contextThemeWrapper, this.f52984e, this.f52985f, new AbstractC14531b() { // from class: com.google.android.material.datepicker.f.4
            @Override // com.google.android.material.datepicker.C14519f.AbstractC14531b
            /* renamed from: a */
            public final void mo10831a(long j) {
                if (C14519f.this.f52985f.getDateValidator().isValid(j)) {
                    C14519f.this.f52984e.select(j);
                    Iterator<AbstractC14543k<S>> it2 = C14519f.this.f53058j.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo10803a((S) C14519f.this.f52984e.getSelection());
                    }
                    C14519f.this.f52991m.getAdapter().notifyDataSetChanged();
                    if (C14519f.this.f52990l == null) {
                        return;
                    }
                    C14519f.this.f52990l.getAdapter().notifyDataSetChanged();
                }
            }
        });
        this.f52991m.setAdapter(c14540j);
        int integer = contextThemeWrapper.getResources().getInteger(C14376a.C14383g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C14376a.C14382f.mtrl_calendar_year_selector_frame);
        this.f52990l = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f52990l.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f52990l.setAdapter(new C14549p(this));
            this.f52990l.m40481a(new RecyclerView.AbstractC2636h() { // from class: com.google.android.material.datepicker.f.5

                /* renamed from: b */
                private final Calendar f53003b = C14548o.m10789b();

                /* renamed from: c */
                private final Calendar f53004c = C14548o.m10789b();

                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
                /* renamed from: b */
                public final void mo10834b(Canvas canvas, RecyclerView recyclerView2, RecyclerView.C2654s c2654s) {
                    if (!(recyclerView2.getAdapter() instanceof C14549p) || !(recyclerView2.getLayoutManager() instanceof GridLayoutManager)) {
                        return;
                    }
                    C14549p c14549p = (C14549p) recyclerView2.getAdapter();
                    GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView2.getLayoutManager();
                    for (C0828b<Long, Long> c0828b : C14519f.this.f52984e.getSelectedRanges()) {
                        if (c0828b.f3556a != null && c0828b.f3557b != null) {
                            this.f53003b.setTimeInMillis(c0828b.f3556a.longValue());
                            this.f53004c.setTimeInMillis(c0828b.f3557b.longValue());
                            int m10780a = c14549p.m10780a(this.f53003b.get(1));
                            int m10780a2 = c14549p.m10780a(this.f53004c.get(1));
                            View b = gridLayoutManager.mo40376b(m10780a);
                            View b2 = gridLayoutManager.mo40376b(m10780a2);
                            int i4 = m10780a / gridLayoutManager.f9856b;
                            int i5 = m10780a2 / gridLayoutManager.f9856b;
                            int i6 = i4;
                            while (i6 <= i5) {
                                View b3 = gridLayoutManager.mo40376b(gridLayoutManager.f9856b * i6);
                                if (b3 != null) {
                                    canvas.drawRect(i6 == i4 ? b.getLeft() + (b.getWidth() / 2) : 0, b3.getTop() + C14519f.this.f52988i.f52961d.f52952a.top, i6 == i5 ? b2.getLeft() + (b2.getWidth() / 2) : recyclerView2.getWidth(), b3.getBottom() - C14519f.this.f52988i.f52961d.f52952a.bottom, C14519f.this.f52988i.f52965h);
                                }
                                i6++;
                            }
                        }
                    }
                }
            });
        }
        if (inflate.findViewById(C14376a.C14382f.month_navigation_fragment_toggle) != null) {
            final MaterialButton materialButton = (MaterialButton) inflate.findViewById(C14376a.C14382f.month_navigation_fragment_toggle);
            materialButton.setTag(f52983d);
            C0926v.m44123a(materialButton, new C0865a() { // from class: com.google.android.material.datepicker.f.6
                @Override // androidx.core.view.C0865a
                /* renamed from: a */
                public final void mo9886a(View view, C0869c c0869c) {
                    super.mo9886a(view, c0869c);
                    c0869c.m44246f(C14519f.this.f52993o.getVisibility() == 0 ? C14519f.this.getString(C14376a.C14386j.mtrl_picker_toggle_to_year_selection) : C14519f.this.getString(C14376a.C14386j.mtrl_picker_toggle_to_day_selection));
                }
            });
            MaterialButton materialButton2 = (MaterialButton) inflate.findViewById(C14376a.C14382f.month_navigation_previous);
            materialButton2.setTag(f52981b);
            MaterialButton materialButton3 = (MaterialButton) inflate.findViewById(C14376a.C14382f.month_navigation_next);
            materialButton3.setTag(f52982c);
            this.f52992n = inflate.findViewById(C14376a.C14382f.mtrl_calendar_year_selector_frame);
            this.f52993o = inflate.findViewById(C14376a.C14382f.mtrl_calendar_day_selector_frame);
            m10846a(EnumC14530a.f53012a);
            materialButton.setText(this.f52986g.getLongName(inflate.getContext()));
            this.f52991m.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.google.android.material.datepicker.f.7
                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
                /* renamed from: a */
                public final void mo10833a(RecyclerView recyclerView2, int i4) {
                    if (i4 == 0) {
                        CharSequence text = materialButton.getText();
                        if (Build.VERSION.SDK_INT >= 16) {
                            recyclerView2.announceForAccessibility(text);
                        } else {
                            recyclerView2.sendAccessibilityEvent(2048);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
                /* renamed from: a */
                public final void mo10832a(RecyclerView recyclerView2, int i4, int i5) {
                    int m40521i = i4 < 0 ? C14519f.this.m10847a().m40521i() : C14519f.this.m10847a().m40518j();
                    C14519f.this.f52986g = c14540j.m10806a(m40521i);
                    MaterialButton materialButton4 = materialButton;
                    C14540j c14540j2 = c14540j;
                    materialButton4.setText(c14540j2.m10806a(m40521i).getLongName(c14540j2.f53049a));
                }
            });
            materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C14519f c14519f = C14519f.this;
                    if (c14519f.f52987h == EnumC14530a.f53013b) {
                        c14519f.m10846a(EnumC14530a.f53012a);
                    } else if (c14519f.f52987h != EnumC14530a.f53012a) {
                    } else {
                        c14519f.m10846a(EnumC14530a.f53013b);
                    }
                }
            });
            materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int m40521i = C14519f.this.m10847a().m40521i() + 1;
                    if (m40521i < C14519f.this.f52991m.getAdapter().getItemCount()) {
                        C14519f.this.m10843a(c14540j.m10806a(m40521i));
                    }
                }
            });
            materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int m40518j = C14519f.this.m10847a().m40518j() - 1;
                    if (m40518j >= 0) {
                        C14519f.this.m10843a(c14540j.m10806a(m40518j));
                    }
                }
            });
        }
        if (!C14532g.m10830a(contextThemeWrapper)) {
            new C2697k().mo29891a(this.f52991m);
        }
        this.f52991m.m40464b(c14540j.m10805a(this.f52986g));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f52989k);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f52984e);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f52985f);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f52986g);
    }
}
