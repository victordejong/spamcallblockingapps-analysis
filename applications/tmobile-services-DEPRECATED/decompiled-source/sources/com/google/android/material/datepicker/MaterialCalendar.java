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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1027R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar.class */
public final class MaterialCalendar<S> extends PickerFragment<S> {
    @VisibleForTesting

    /* renamed from: q */
    static final Object f10527q = "MONTHS_VIEW_GROUP_TAG";
    @VisibleForTesting

    /* renamed from: r */
    static final Object f10528r = "NAVIGATION_PREV_TAG";
    @VisibleForTesting

    /* renamed from: s */
    static final Object f10529s = "NAVIGATION_NEXT_TAG";
    @VisibleForTesting

    /* renamed from: t */
    static final Object f10530t = "SELECTOR_TOGGLE_TAG";

    /* renamed from: g */
    private int f10531g;
    @Nullable

    /* renamed from: h */
    private DateSelector<S> f10532h;
    @Nullable

    /* renamed from: i */
    private CalendarConstraints f10533i;
    @Nullable

    /* renamed from: j */
    private Month f10534j;

    /* renamed from: k */
    private CalendarSelector f10535k;

    /* renamed from: l */
    private CalendarStyle f10536l;

    /* renamed from: m */
    private RecyclerView f10537m;

    /* renamed from: n */
    private RecyclerView f10538n;

    /* renamed from: o */
    private View f10539o;

    /* renamed from: p */
    private View f10540p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$CalendarSelector.class */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$OnDayClickListener.class */
    public interface OnDayClickListener {
        /* renamed from: a */
        void mo9945a(long j);
    }

    /* renamed from: P0 */
    private void m9960P0(@NonNull View view, @NonNull final MonthsPagerAdapter monthsPagerAdapter) {
        final MaterialButton materialButton = (MaterialButton) view.findViewById(C1027R.C1030id.month_navigation_fragment_toggle);
        materialButton.setTag(f10530t);
        ViewCompat.m19183n0(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendar.5
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19004n0(MaterialCalendar.this.f10540p.getVisibility() == 0 ? MaterialCalendar.this.getString(C1027R.string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(C1027R.string.mtrl_picker_toggle_to_day_selection));
            }
        });
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C1027R.C1030id.month_navigation_previous);
        materialButton2.setTag(f10528r);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C1027R.C1030id.month_navigation_next);
        materialButton3.setTag(f10529s);
        this.f10539o = view.findViewById(C1027R.C1030id.mtrl_calendar_year_selector_frame);
        this.f10540p = view.findViewById(C1027R.C1030id.mtrl_calendar_day_selector_frame);
        m9949a1(CalendarSelector.DAY);
        materialButton.setText(this.f10534j.m9912k());
        this.f10538n.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            /* renamed from: a */
            public void mo5963a(@NonNull RecyclerView recyclerView, int i) {
                if (i == 0) {
                    CharSequence text = materialButton.getText();
                    if (Build.VERSION.SDK_INT >= 16) {
                        recyclerView.announceForAccessibility(text);
                    } else {
                        recyclerView.sendAccessibilityEvent(2048);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            /* renamed from: b */
            public void mo7064b(@NonNull RecyclerView recyclerView, int i, int i2) {
                int b2 = i < 0 ? MaterialCalendar.this.m9953W0().m17624b2() : MaterialCalendar.this.m9953W0().m17621e2();
                MaterialCalendar.this.f10534j = monthsPagerAdapter.m9895d(b2);
                materialButton.setText(monthsPagerAdapter.m9894e(b2));
            }
        });
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MaterialCalendar.this.m9948b1();
            }
        });
        materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int b2 = MaterialCalendar.this.m9953W0().m17624b2() + 1;
                if (b2 < MaterialCalendar.this.f10538n.getAdapter().getItemCount()) {
                    MaterialCalendar.this.m9950Z0(monthsPagerAdapter.m9895d(b2));
                }
            }
        });
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int e2 = MaterialCalendar.this.m9953W0().m17621e2() - 1;
                if (e2 >= 0) {
                    MaterialCalendar.this.m9950Z0(monthsPagerAdapter.m9895d(e2));
                }
            }
        });
    }

    @NonNull
    /* renamed from: Q0 */
    private RecyclerView.ItemDecoration m9959Q0() {
        return new RecyclerView.ItemDecoration() { // from class: com.google.android.material.datepicker.MaterialCalendar.4

            /* renamed from: a */
            private final Calendar f10546a = UtcDates.m9836r();

            /* renamed from: b */
            private final Calendar f10547b = UtcDates.m9836r();

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            /* renamed from: i */
            public void mo9946i(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
                if ((recyclerView.getAdapter() instanceof YearGridAdapter) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
                    GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                    for (Pair<Long, Long> pair : MaterialCalendar.this.f10532h.mo9863t()) {
                        Long l = pair.f3206a;
                        if (!(l == null || pair.f3207b == null)) {
                            this.f10546a.setTimeInMillis(l.longValue());
                            this.f10547b.setTimeInMillis(pair.f3207b.longValue());
                            int e = yearGridAdapter.m9827e(this.f10546a.get(1));
                            int e2 = yearGridAdapter.m9827e(this.f10547b.get(1));
                            View D = gridLayoutManager.mo17454D(e);
                            View D2 = gridLayoutManager.mo17454D(e2);
                            int a3 = e / gridLayoutManager.m17736a3();
                            int a32 = e2 / gridLayoutManager.m17736a3();
                            int i = a3;
                            while (i <= a32) {
                                View D3 = gridLayoutManager.mo17454D(gridLayoutManager.m17736a3() * i);
                                if (D3 != null) {
                                    canvas.drawRect(i == a3 ? D.getLeft() + (D.getWidth() / 2) : 0, D3.getTop() + MaterialCalendar.this.f10536l.f10510d.m9991c(), i == a32 ? D2.getLeft() + (D2.getWidth() / 2) : recyclerView.getWidth(), D3.getBottom() - MaterialCalendar.this.f10536l.f10510d.m9992b(), MaterialCalendar.this.f10536l.f10514h);
                                }
                                i++;
                            }
                        }
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AbstractC0040Px
    /* renamed from: V0 */
    public static int m9954V0(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_calendar_day_height);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: X0 */
    public static <T> MaterialCalendar<T> m9952X0(DateSelector<T> dateSelector, int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.m10001i());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    /* renamed from: Y0 */
    private void m9951Y0(final int i) {
        this.f10538n.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.10
            @Override // java.lang.Runnable
            public void run() {
                MaterialCalendar.this.f10538n.smoothScrollToPosition(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: R0 */
    public CalendarConstraints m9958R0() {
        return this.f10533i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S0 */
    public CalendarStyle m9957S0() {
        return this.f10536l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: T0 */
    public Month m9956T0() {
        return this.f10534j;
    }

    @Nullable
    /* renamed from: U0 */
    public DateSelector<S> m9955U0() {
        return this.f10532h;
    }

    @NonNull
    /* renamed from: W0 */
    LinearLayoutManager m9953W0() {
        return (LinearLayoutManager) this.f10538n.getLayoutManager();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z0 */
    public void m9950Z0(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.f10538n.getAdapter();
        int f = monthsPagerAdapter.m9893f(month);
        int f2 = f - monthsPagerAdapter.m9893f(this.f10534j);
        boolean z = true;
        boolean z2 = Math.abs(f2) > 3;
        if (f2 <= 0) {
            z = false;
        }
        this.f10534j = month;
        if (z2 && z) {
            this.f10538n.scrollToPosition(f - 3);
            m9951Y0(f);
        } else if (z2) {
            this.f10538n.scrollToPosition(f + 3);
            m9951Y0(f);
        } else {
            m9951Y0(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a1 */
    public void m9949a1(CalendarSelector calendarSelector) {
        this.f10535k = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f10537m.getLayoutManager().mo17119y1(((YearGridAdapter) this.f10537m.getAdapter()).m9827e(this.f10534j.f10591i));
            this.f10539o.setVisibility(0);
            this.f10540p.setVisibility(8);
        } else if (calendarSelector == CalendarSelector.DAY) {
            this.f10539o.setVisibility(8);
            this.f10540p.setVisibility(0);
            m9950Z0(this.f10534j);
        }
    }

    /* renamed from: b1 */
    void m9948b1() {
        CalendarSelector calendarSelector = this.f10535k;
        if (calendarSelector == CalendarSelector.YEAR) {
            m9949a1(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            m9949a1(CalendarSelector.YEAR);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f10531g = bundle2.getInt("THEME_RES_ID_KEY");
        this.f10532h = (DateSelector) bundle2.getParcelable("GRID_SELECTOR_KEY");
        this.f10533i = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f10534j = (Month) bundle2.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        final int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f10531g);
        this.f10536l = new CalendarStyle(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month j = this.f10533i.m10000j();
        if (MaterialDatePicker.m9925V0(contextThemeWrapper)) {
            i2 = C1027R.layout.mtrl_calendar_vertical;
            i = 1;
        } else {
            i2 = C1027R.layout.mtrl_calendar_horizontal;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C1027R.C1030id.mtrl_calendar_days_of_week);
        ViewCompat.m19183n0(gridView, new AccessibilityDelegateCompat(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19022e0(null);
            }
        });
        gridView.setAdapter((ListAdapter) new DaysOfWeekAdapter());
        gridView.setNumColumns(j.f10592j);
        gridView.setEnabled(false);
        this.f10538n = (RecyclerView) inflate.findViewById(C1027R.C1030id.mtrl_calendar_months);
        this.f10538n.setLayoutManager(new SmoothCalendarLayoutManager(getContext(), i, false) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            /* renamed from: N1 */
            public void mo9947N1(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
                if (i == 0) {
                    iArr[0] = MaterialCalendar.this.f10538n.getWidth();
                    iArr[1] = MaterialCalendar.this.f10538n.getWidth();
                    return;
                }
                iArr[0] = MaterialCalendar.this.f10538n.getHeight();
                iArr[1] = MaterialCalendar.this.f10538n.getHeight();
            }
        });
        this.f10538n.setTag(f10527q);
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.f10532h, this.f10533i, new OnDayClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.3
            @Override // com.google.android.material.datepicker.MaterialCalendar.OnDayClickListener
            /* renamed from: a */
            public void mo9945a(long j2) {
                if (MaterialCalendar.this.f10533i.m10004f().mo9973X(j2)) {
                    MaterialCalendar.this.f10532h.mo9865o0(j2);
                    Iterator<OnSelectionChangedListener<S>> it = MaterialCalendar.this.f10608f.iterator();
                    while (it.hasNext()) {
                        it.next().mo9889b((S) MaterialCalendar.this.f10532h.mo9866i0());
                    }
                    MaterialCalendar.this.f10538n.getAdapter().notifyDataSetChanged();
                    if (MaterialCalendar.this.f10537m != null) {
                        MaterialCalendar.this.f10537m.getAdapter().notifyDataSetChanged();
                    }
                }
            }
        });
        this.f10538n.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(C1027R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C1027R.C1030id.mtrl_calendar_year_selector_frame);
        this.f10537m = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f10537m.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f10537m.setAdapter(new YearGridAdapter(this));
            this.f10537m.addItemDecoration(m9959Q0());
        }
        if (inflate.findViewById(C1027R.C1030id.month_navigation_fragment_toggle) != null) {
            m9960P0(inflate, monthsPagerAdapter);
        }
        if (!MaterialDatePicker.m9925V0(contextThemeWrapper)) {
            new LinearSnapHelper().m17228b(this.f10538n);
        }
        this.f10538n.scrollToPosition(monthsPagerAdapter.m9893f(this.f10534j));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f10531g);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f10532h);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f10533i);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f10534j);
    }
}
