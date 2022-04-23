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
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f.class */
public final class f<S> extends l<S> {

    /* renamed from: a  reason: collision with root package name */
    static final Object f30439a = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: b  reason: collision with root package name */
    static final Object f30440b = "NAVIGATION_PREV_TAG";

    /* renamed from: c  reason: collision with root package name */
    static final Object f30441c = "NAVIGATION_NEXT_TAG";

    /* renamed from: d  reason: collision with root package name */
    static final Object f30442d = "SELECTOR_TOGGLE_TAG";
    DateSelector<S> e;
    CalendarConstraints f;
    Month g;
    int h;
    com.google.android.material.datepicker.b i;
    private int k;
    private RecyclerView l;
    private RecyclerView m;
    private View n;
    private View o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f30461a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f30462b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f30463c = {1, 2};

        private a(String str, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/f$b.class */
    public interface b {
        void a(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context) {
        return context.getResources().getDimensionPixelSize(a.d.mtrl_calendar_day_height);
    }

    public static <T> f<T> a(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        f<T> fVar = new f<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.getOpenAt());
        fVar.setArguments(bundle);
        return fVar;
    }

    final LinearLayoutManager a() {
        return (LinearLayoutManager) this.m.getLayoutManager();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.h = i;
        if (i == a.f30462b) {
            this.l.getLayoutManager().d(((p) this.l.getAdapter()).a(this.g.year));
            this.n.setVisibility(0);
            this.o.setVisibility(8);
        } else if (i == a.f30461a) {
            this.n.setVisibility(8);
            this.o.setVisibility(0);
            a(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Month month) {
        j jVar = (j) this.m.getAdapter();
        final int a2 = jVar.a(month);
        int a3 = a2 - jVar.a(this.g);
        boolean z = true;
        boolean z2 = Math.abs(a3) > 3;
        if (a3 <= 0) {
            z = false;
        }
        this.g = month;
        if (z2 && z) {
            this.m.b(a2 - 3);
        } else if (z2) {
            this.m.b(a2 + 3);
        }
        this.m.post(new Runnable() { // from class: com.google.android.material.datepicker.f.2
            @Override // java.lang.Runnable
            public final void run() {
                f.this.m.d(a2);
            }
        });
    }

    @Override // com.google.android.material.datepicker.l
    public final boolean a(k<S> kVar) {
        return super.a(kVar);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.k = bundle2.getInt("THEME_RES_ID_KEY");
        this.e = (DateSelector) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.g = (Month) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.k);
        this.i = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.f.getStart();
        if (g.a(contextThemeWrapper)) {
            i2 = a.h.mtrl_calendar_vertical;
            i = 1;
        } else {
            i2 = a.h.mtrl_calendar_horizontal;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(a.f.mtrl_calendar_days_of_week);
        v.a(gridView, new androidx.core.view.a() { // from class: com.google.android.material.datepicker.f.1
            @Override // androidx.core.view.a
            public final void a(View view, c cVar) {
                super.a(view, cVar);
                cVar.a((Object) null);
            }
        });
        gridView.setAdapter((ListAdapter) new e());
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.m = (RecyclerView) inflate.findViewById(a.f.mtrl_calendar_months);
        this.m.setLayoutManager(new m(getContext(), i, false) { // from class: com.google.android.material.datepicker.f.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public final void a(RecyclerView.s sVar, int[] iArr) {
                if (i == 0) {
                    iArr[0] = f.this.m.getWidth();
                    iArr[1] = f.this.m.getWidth();
                    return;
                }
                iArr[0] = f.this.m.getHeight();
                iArr[1] = f.this.m.getHeight();
            }
        });
        this.m.setTag(f30439a);
        final j jVar = new j(contextThemeWrapper, this.e, this.f, new b() { // from class: com.google.android.material.datepicker.f.4
            @Override // com.google.android.material.datepicker.f.b
            public final void a(long j) {
                if (f.this.f.getDateValidator().isValid(j)) {
                    f.this.e.select(j);
                    Iterator<k<S>> it2 = f.this.j.iterator();
                    while (it2.hasNext()) {
                        it2.next().a((S) f.this.e.getSelection());
                    }
                    f.this.m.getAdapter().notifyDataSetChanged();
                    if (f.this.l != null) {
                        f.this.l.getAdapter().notifyDataSetChanged();
                    }
                }
            }
        });
        this.m.setAdapter(jVar);
        int integer = contextThemeWrapper.getResources().getInteger(a.g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(a.f.mtrl_calendar_year_selector_frame);
        this.l = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.l.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.l.setAdapter(new p(this));
            this.l.a(new RecyclerView.h() { // from class: com.google.android.material.datepicker.f.5

                /* renamed from: b  reason: collision with root package name */
                private final Calendar f30452b = o.b();

                /* renamed from: c  reason: collision with root package name */
                private final Calendar f30453c = o.b();

                @Override // androidx.recyclerview.widget.RecyclerView.h
                public final void b(Canvas canvas, RecyclerView recyclerView2, RecyclerView.s sVar) {
                    if ((recyclerView2.getAdapter() instanceof p) && (recyclerView2.getLayoutManager() instanceof GridLayoutManager)) {
                        p pVar = (p) recyclerView2.getAdapter();
                        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView2.getLayoutManager();
                        for (androidx.core.e.b<Long, Long> bVar : f.this.e.getSelectedRanges()) {
                            if (!(bVar.f1889a == null || bVar.f1890b == null)) {
                                this.f30452b.setTimeInMillis(bVar.f1889a.longValue());
                                this.f30453c.setTimeInMillis(bVar.f1890b.longValue());
                                int a2 = pVar.a(this.f30452b.get(1));
                                int a3 = pVar.a(this.f30453c.get(1));
                                View b2 = gridLayoutManager.b(a2);
                                View b3 = gridLayoutManager.b(a3);
                                int i3 = a2 / gridLayoutManager.f5297b;
                                int i4 = a3 / gridLayoutManager.f5297b;
                                int i5 = i3;
                                while (i5 <= i4) {
                                    View b4 = gridLayoutManager.b(gridLayoutManager.f5297b * i5);
                                    if (b4 != null) {
                                        canvas.drawRect(i5 == i3 ? b2.getLeft() + (b2.getWidth() / 2) : 0, b4.getTop() + f.this.i.f30426d.f30419a.top, i5 == i4 ? b3.getLeft() + (b3.getWidth() / 2) : recyclerView2.getWidth(), b4.getBottom() - f.this.i.f30426d.f30419a.bottom, f.this.i.h);
                                    }
                                    i5++;
                                }
                            }
                        }
                    }
                }
            });
        }
        if (inflate.findViewById(a.f.month_navigation_fragment_toggle) != null) {
            final MaterialButton materialButton = (MaterialButton) inflate.findViewById(a.f.month_navigation_fragment_toggle);
            materialButton.setTag(f30442d);
            v.a(materialButton, new androidx.core.view.a() { // from class: com.google.android.material.datepicker.f.6
                @Override // androidx.core.view.a
                public final void a(View view, c cVar) {
                    super.a(view, cVar);
                    cVar.f(f.this.o.getVisibility() == 0 ? f.this.getString(a.j.mtrl_picker_toggle_to_year_selection) : f.this.getString(a.j.mtrl_picker_toggle_to_day_selection));
                }
            });
            MaterialButton materialButton2 = (MaterialButton) inflate.findViewById(a.f.month_navigation_previous);
            materialButton2.setTag(f30440b);
            MaterialButton materialButton3 = (MaterialButton) inflate.findViewById(a.f.month_navigation_next);
            materialButton3.setTag(f30441c);
            this.n = inflate.findViewById(a.f.mtrl_calendar_year_selector_frame);
            this.o = inflate.findViewById(a.f.mtrl_calendar_day_selector_frame);
            a(a.f30461a);
            materialButton.setText(this.g.getLongName(inflate.getContext()));
            this.m.a(new RecyclerView.m() { // from class: com.google.android.material.datepicker.f.7
                @Override // androidx.recyclerview.widget.RecyclerView.m
                public final void a(RecyclerView recyclerView2, int i3) {
                    if (i3 == 0) {
                        CharSequence text = materialButton.getText();
                        if (Build.VERSION.SDK_INT >= 16) {
                            recyclerView2.announceForAccessibility(text);
                        } else {
                            recyclerView2.sendAccessibilityEvent(2048);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.m
                public final void a(RecyclerView recyclerView2, int i3, int i4) {
                    int i5 = i3 < 0 ? f.this.a().i() : f.this.a().j();
                    f.this.g = jVar.a(i5);
                    MaterialButton materialButton4 = materialButton;
                    j jVar2 = jVar;
                    materialButton4.setText(jVar2.a(i5).getLongName(jVar2.f30478a));
                }
            });
            materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f fVar = f.this;
                    if (fVar.h == a.f30462b) {
                        fVar.a(a.f30461a);
                    } else if (fVar.h == a.f30461a) {
                        fVar.a(a.f30462b);
                    }
                }
            });
            materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i3 = f.this.a().i() + 1;
                    if (i3 < f.this.m.getAdapter().getItemCount()) {
                        f.this.a(jVar.a(i3));
                    }
                }
            });
            materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.f.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int j = f.this.a().j() - 1;
                    if (j >= 0) {
                        f.this.a(jVar.a(j));
                    }
                }
            });
        }
        if (!g.a(contextThemeWrapper)) {
            new k().a(this.m);
        }
        this.m.b(jVar.a(this.g));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.k);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.e);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.g);
    }
}
