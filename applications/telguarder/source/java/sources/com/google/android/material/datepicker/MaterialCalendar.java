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
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1236R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar.class */
public final class MaterialCalendar<S> extends PickerFragment<S> {
    private static final String CALENDAR_CONSTRAINTS_KEY = "CALENDAR_CONSTRAINTS_KEY";
    private static final String CURRENT_MONTH_KEY = "CURRENT_MONTH_KEY";
    private static final String GRID_SELECTOR_KEY = "GRID_SELECTOR_KEY";
    private static final int SMOOTH_SCROLL_MAX = 3;
    private static final String THEME_RES_ID_KEY = "THEME_RES_ID_KEY";
    private CalendarConstraints calendarConstraints;
    private CalendarSelector calendarSelector;
    private CalendarStyle calendarStyle;
    private Month current;
    private DateSelector<S> dateSelector;
    private View dayFrame;
    private RecyclerView recyclerView;
    private int themeResId;
    private View yearFrame;
    private RecyclerView yearSelector;
    static final Object MONTHS_VIEW_GROUP_TAG = "MONTHS_VIEW_GROUP_TAG";
    static final Object NAVIGATION_PREV_TAG = "NAVIGATION_PREV_TAG";
    static final Object NAVIGATION_NEXT_TAG = "NAVIGATION_NEXT_TAG";
    static final Object SELECTOR_TOGGLE_TAG = "SELECTOR_TOGGLE_TAG";

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$CalendarSelector.class */
    public enum CalendarSelector {
        DAY,
        YEAR
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/MaterialCalendar$OnDayClickListener.class */
    public interface OnDayClickListener {
        void onDayClick(long j);
    }

    private void addActionsToMonthNavigation(View view, final MonthsPagerAdapter monthsPagerAdapter) {
        final MaterialButton materialButton = (MaterialButton) view.findViewById(C1236R.C1239id.month_navigation_fragment_toggle);
        materialButton.setTag(SELECTOR_TOGGLE_TAG);
        ViewCompat.setAccessibilityDelegate(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendar.5
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.dayFrame.getVisibility() == 0 ? MaterialCalendar.this.getString(C1236R.string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(C1236R.string.mtrl_picker_toggle_to_day_selection));
            }
        });
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C1236R.C1239id.month_navigation_previous);
        materialButton2.setTag(NAVIGATION_PREV_TAG);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C1236R.C1239id.month_navigation_next);
        materialButton3.setTag(NAVIGATION_NEXT_TAG);
        this.yearFrame = view.findViewById(C1236R.C1239id.mtrl_calendar_year_selector_frame);
        this.dayFrame = view.findViewById(C1236R.C1239id.mtrl_calendar_day_selector_frame);
        setSelector(CalendarSelector.DAY);
        materialButton.setText(this.current.getLongName(view.getContext()));
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
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
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                int findFirstVisibleItemPosition = i < 0 ? MaterialCalendar.this.getLayoutManager().findFirstVisibleItemPosition() : MaterialCalendar.this.getLayoutManager().findLastVisibleItemPosition();
                MaterialCalendar.this.current = monthsPagerAdapter.getPageMonth(findFirstVisibleItemPosition);
                materialButton.setText(monthsPagerAdapter.getPageTitle(findFirstVisibleItemPosition));
            }
        });
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MaterialCalendar.this.toggleVisibleSelector();
            }
        });
        materialButton3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int findFirstVisibleItemPosition = MaterialCalendar.this.getLayoutManager().findFirstVisibleItemPosition() + 1;
                if (findFirstVisibleItemPosition < MaterialCalendar.this.recyclerView.getAdapter().getItemCount()) {
                    MaterialCalendar.this.setCurrentMonth(monthsPagerAdapter.getPageMonth(findFirstVisibleItemPosition));
                }
            }
        });
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int findLastVisibleItemPosition = MaterialCalendar.this.getLayoutManager().findLastVisibleItemPosition() - 1;
                if (findLastVisibleItemPosition >= 0) {
                    MaterialCalendar.this.setCurrentMonth(monthsPagerAdapter.getPageMonth(findLastVisibleItemPosition));
                }
            }
        });
    }

    private RecyclerView.ItemDecoration createItemDecoration() {
        return new RecyclerView.ItemDecoration() { // from class: com.google.android.material.datepicker.MaterialCalendar.4
            private final Calendar startItem = UtcDates.getUtcCalendar();
            private final Calendar endItem = UtcDates.getUtcCalendar();

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
                if (!(recyclerView.getAdapter() instanceof YearGridAdapter) || !(recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    return;
                }
                YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.dateSelector.getSelectedRanges()) {
                    if (pair.first != null && pair.second != null) {
                        this.startItem.setTimeInMillis(pair.first.longValue());
                        this.endItem.setTimeInMillis(pair.second.longValue());
                        int positionForYear = yearGridAdapter.getPositionForYear(this.startItem.get(1));
                        int positionForYear2 = yearGridAdapter.getPositionForYear(this.endItem.get(1));
                        View findViewByPosition = gridLayoutManager.findViewByPosition(positionForYear);
                        View findViewByPosition2 = gridLayoutManager.findViewByPosition(positionForYear2);
                        int spanCount = positionForYear / gridLayoutManager.getSpanCount();
                        int spanCount2 = positionForYear2 / gridLayoutManager.getSpanCount();
                        int i = spanCount;
                        while (i <= spanCount2) {
                            View findViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i);
                            if (findViewByPosition3 != null) {
                                canvas.drawRect(i == spanCount ? findViewByPosition.getLeft() + (findViewByPosition.getWidth() / 2) : 0, findViewByPosition3.getTop() + MaterialCalendar.this.calendarStyle.year.getTopInset(), i == spanCount2 ? findViewByPosition2.getLeft() + (findViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), findViewByPosition3.getBottom() - MaterialCalendar.this.calendarStyle.year.getBottomInset(), MaterialCalendar.this.calendarStyle.rangeFill);
                            }
                            i++;
                        }
                    }
                }
            }
        };
    }

    public static int getDayHeight(Context context) {
        return context.getResources().getDimensionPixelSize(C1236R.dimen.mtrl_calendar_day_height);
    }

    public static <T> MaterialCalendar<T> newInstance(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt(THEME_RES_ID_KEY, i);
        bundle.putParcelable(GRID_SELECTOR_KEY, dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, calendarConstraints.getOpenAt());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void postSmoothRecyclerViewScroll(final int i) {
        this.recyclerView.post(new Runnable() { // from class: com.google.android.material.datepicker.MaterialCalendar.10
            @Override // java.lang.Runnable
            public void run() {
                MaterialCalendar.this.recyclerView.smoothScrollToPosition(i);
            }
        });
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public boolean addOnSelectionChangedListener(OnSelectionChangedListener<S> onSelectionChangedListener) {
        return super.addOnSelectionChangedListener(onSelectionChangedListener);
    }

    public CalendarConstraints getCalendarConstraints() {
        return this.calendarConstraints;
    }

    public CalendarStyle getCalendarStyle() {
        return this.calendarStyle;
    }

    public Month getCurrentMonth() {
        return this.current;
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public DateSelector<S> getDateSelector() {
        return this.dateSelector;
    }

    LinearLayoutManager getLayoutManager() {
        return (LinearLayoutManager) this.recyclerView.getLayoutManager();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.themeResId = bundle2.getInt(THEME_RES_ID_KEY);
        this.dateSelector = (DateSelector) bundle2.getParcelable(GRID_SELECTOR_KEY);
        this.calendarConstraints = (CalendarConstraints) bundle2.getParcelable(CALENDAR_CONSTRAINTS_KEY);
        this.current = (Month) bundle2.getParcelable(CURRENT_MONTH_KEY);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.themeResId);
        this.calendarStyle = new CalendarStyle(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.calendarConstraints.getStart();
        if (MaterialDatePicker.isFullscreen(contextThemeWrapper)) {
            i2 = C1236R.layout.mtrl_calendar_vertical;
            i = 1;
        } else {
            i2 = C1236R.layout.mtrl_calendar_horizontal;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C1236R.C1239id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendar.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
        gridView.setAdapter((ListAdapter) new DaysOfWeekAdapter());
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.recyclerView = (RecyclerView) inflate.findViewById(C1236R.C1239id.mtrl_calendar_months);
        final int i3 = i;
        this.recyclerView.setLayoutManager(new SmoothCalendarLayoutManager(getContext(), i, false) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
                if (i3 == 0) {
                    iArr[0] = MaterialCalendar.this.recyclerView.getWidth();
                    iArr[1] = MaterialCalendar.this.recyclerView.getWidth();
                    return;
                }
                iArr[0] = MaterialCalendar.this.recyclerView.getHeight();
                iArr[1] = MaterialCalendar.this.recyclerView.getHeight();
            }
        });
        this.recyclerView.setTag(MONTHS_VIEW_GROUP_TAG);
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.dateSelector, this.calendarConstraints, new OnDayClickListener() { // from class: com.google.android.material.datepicker.MaterialCalendar.3
            @Override // com.google.android.material.datepicker.MaterialCalendar.OnDayClickListener
            public void onDayClick(long j) {
                if (MaterialCalendar.this.calendarConstraints.getDateValidator().isValid(j)) {
                    MaterialCalendar.this.dateSelector.select(j);
                    Iterator<OnSelectionChangedListener<S>> it = MaterialCalendar.this.onSelectionChangedListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onSelectionChanged((S) MaterialCalendar.this.dateSelector.getSelection());
                    }
                    MaterialCalendar.this.recyclerView.getAdapter().notifyDataSetChanged();
                    if (MaterialCalendar.this.yearSelector == null) {
                        return;
                    }
                    MaterialCalendar.this.yearSelector.getAdapter().notifyDataSetChanged();
                }
            }
        });
        this.recyclerView.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(C1236R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C1236R.C1239id.mtrl_calendar_year_selector_frame);
        this.yearSelector = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.yearSelector.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.yearSelector.setAdapter(new YearGridAdapter(this));
            this.yearSelector.addItemDecoration(createItemDecoration());
        }
        if (inflate.findViewById(C1236R.C1239id.month_navigation_fragment_toggle) != null) {
            addActionsToMonthNavigation(inflate, monthsPagerAdapter);
        }
        if (!MaterialDatePicker.isFullscreen(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.recyclerView);
        }
        this.recyclerView.scrollToPosition(monthsPagerAdapter.getPosition(this.current));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(THEME_RES_ID_KEY, this.themeResId);
        bundle.putParcelable(GRID_SELECTOR_KEY, this.dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, this.calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, this.current);
    }

    public void setCurrentMonth(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.recyclerView.getAdapter();
        int position = monthsPagerAdapter.getPosition(month);
        int position2 = position - monthsPagerAdapter.getPosition(this.current);
        boolean z = true;
        boolean z2 = Math.abs(position2) > 3;
        if (position2 <= 0) {
            z = false;
        }
        this.current = month;
        if (z2 && z) {
            this.recyclerView.scrollToPosition(position - 3);
            postSmoothRecyclerViewScroll(position);
        } else if (!z2) {
            postSmoothRecyclerViewScroll(position);
        } else {
            this.recyclerView.scrollToPosition(position + 3);
            postSmoothRecyclerViewScroll(position);
        }
    }

    public void setSelector(CalendarSelector calendarSelector) {
        this.calendarSelector = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.yearSelector.getLayoutManager().scrollToPosition(((YearGridAdapter) this.yearSelector.getAdapter()).getPositionForYear(this.current.year));
            this.yearFrame.setVisibility(0);
            this.dayFrame.setVisibility(8);
        } else if (calendarSelector != CalendarSelector.DAY) {
        } else {
            this.yearFrame.setVisibility(8);
            this.dayFrame.setVisibility(0);
            setCurrentMonth(this.current);
        }
    }

    void toggleVisibleSelector() {
        if (this.calendarSelector == CalendarSelector.YEAR) {
            setSelector(CalendarSelector.DAY);
        } else if (this.calendarSelector != CalendarSelector.DAY) {
        } else {
            setSelector(CalendarSelector.YEAR);
        }
    }
}
