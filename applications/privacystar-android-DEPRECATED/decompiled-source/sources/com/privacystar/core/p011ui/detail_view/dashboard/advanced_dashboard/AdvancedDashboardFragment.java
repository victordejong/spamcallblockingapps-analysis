package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.TabLayout;
import android.support.p001v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t*\u0001\u0006\u0018�� -2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002-.B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0014J\b\u0010\u0011\u001a\u00020��H\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u000bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020\u000bH\u0016J\b\u0010!\u001a\u00020\u000bH\u0016J\u001c\u0010\"\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u001a\u0010'\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010(\u001a\u00020\u000bH\u0016J\b\u0010)\u001a\u00020\u000bH\u0002J\b\u0010*\u001a\u00020\u000bH\u0002J\b\u0010+\u001a\u00020\u000bH\u0002J\b\u0010,\u001a\u00020\u000bH\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006/"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;", "()V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$listener$1", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$listener$1;", "pagerAdapter", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPagerAdapter;", "animateCallout", "", Promotion.ACTION_VIEW, "Landroid/widget/TextView;", "total", "", "getLayoutResId", "newInstance", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onNothingSelected", "onResume", "onValueSelected", "e", "Lcom/github/mikephil/charting/data/Entry;", "h", "Lcom/github/mikephil/charting/highlight/Highlight;", "onViewCreated", "refreshContent", "setupChart", "setupNoBlocksView", "setupOneMonthView", "setupToolbar", "Companion", "DashboardData", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment.class */
public final class AdvancedDashboardFragment extends DetailFragment implements DetailActivity.DetailActivityContent, OnChartValueSelectedListener {
    @NotNull
    public static DashboardData dashboardData;
    private static int lastEntry = -1;
    @Nullable
    private static AdvancedDashboardHelper.MonthYear selectedMonthYear;
    private HashMap _$_findViewCache;
    private final AdvancedDashboardFragment$listener$1 listener = new ViewPager.OnPageChangeListener() { // from class: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$listener$1
        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            AdvancedDashboardFragment.Companion.setSelectedTab(Integer.valueOf(i));
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            AdvancedDashboardFragment.Companion.setSelectedTab(Integer.valueOf(i));
        }
    };
    private AdvancedDashboardPagerAdapter pagerAdapter;
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static Integer selectedTab = 0;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$Companion;", "", "()V", "dashboardData", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData;", "getDashboardData", "()Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData;", "setDashboardData", "(Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData;)V", "isMonthSelected", "", "()Z", "lastEntry", "", "getLastEntry", "()I", "setLastEntry", "(I)V", "selectedMonthYear", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "getSelectedMonthYear", "()Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "setSelectedMonthYear", "(Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;)V", "selectedTab", "getSelectedTab", "()Ljava/lang/Integer;", "setSelectedTab", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DashboardData getDashboardData() {
            return AdvancedDashboardFragment.access$getDashboardData$cp();
        }

        public final int getLastEntry() {
            return AdvancedDashboardFragment.lastEntry;
        }

        @Nullable
        public final AdvancedDashboardHelper.MonthYear getSelectedMonthYear() {
            return AdvancedDashboardFragment.selectedMonthYear;
        }

        @Nullable
        public final Integer getSelectedTab() {
            return AdvancedDashboardFragment.selectedTab;
        }

        public final boolean isMonthSelected() {
            return AdvancedDashboardFragment.Companion.getSelectedMonthYear() != null;
        }

        public final void setDashboardData(@NotNull DashboardData dashboardData) {
            Intrinsics.checkParameterIsNotNull(dashboardData, "<set-?>");
            AdvancedDashboardFragment.dashboardData = dashboardData;
        }

        public final void setLastEntry(int i) {
            AdvancedDashboardFragment.lastEntry = i;
        }

        public final void setSelectedMonthYear(@Nullable AdvancedDashboardHelper.MonthYear monthYear) {
            AdvancedDashboardFragment.selectedMonthYear = monthYear;
        }

        public final void setSelectedTab(@Nullable Integer num) {
            AdvancedDashboardFragment.selectedTab = num;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00060\u0005¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001b\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00060\u0005HÆ\u0003J/\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001a\b\u0002\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R#\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u00060\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData;", "", "startMonthYear", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "data", "", "Lkotlin/Pair;", "", "(Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;Ljava/util/List;)V", "getData", "()Ljava/util/List;", "getStartMonthYear", "()Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$DashboardData */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData.class */
    public static final class DashboardData {
        @NotNull
        private final List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> data;
        @NotNull
        private final AdvancedDashboardHelper.MonthYear startMonthYear;

        public DashboardData(@NotNull AdvancedDashboardHelper.MonthYear startMonthYear, @NotNull List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> data) {
            Intrinsics.checkParameterIsNotNull(startMonthYear, "startMonthYear");
            Intrinsics.checkParameterIsNotNull(data, "data");
            this.startMonthYear = startMonthYear;
            this.data = data;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public static /* synthetic */ DashboardData copy$default(DashboardData dashboardData, AdvancedDashboardHelper.MonthYear monthYear, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                monthYear = dashboardData.startMonthYear;
            }
            if ((i & 2) != 0) {
                list = dashboardData.data;
            }
            return dashboardData.copy(monthYear, list);
        }

        @NotNull
        public final AdvancedDashboardHelper.MonthYear component1() {
            return this.startMonthYear;
        }

        @NotNull
        public final List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> component2() {
            return this.data;
        }

        @NotNull
        public final DashboardData copy(@NotNull AdvancedDashboardHelper.MonthYear startMonthYear, @NotNull List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> data) {
            Intrinsics.checkParameterIsNotNull(startMonthYear, "startMonthYear");
            Intrinsics.checkParameterIsNotNull(data, "data");
            return new DashboardData(startMonthYear, data);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DashboardData)) {
                return false;
            }
            DashboardData dashboardData = (DashboardData) obj;
            return Intrinsics.areEqual(this.startMonthYear, dashboardData.startMonthYear) && Intrinsics.areEqual(this.data, dashboardData.data);
        }

        @NotNull
        public final List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> getData() {
            return this.data;
        }

        @NotNull
        public final AdvancedDashboardHelper.MonthYear getStartMonthYear() {
            return this.startMonthYear;
        }

        public int hashCode() {
            AdvancedDashboardHelper.MonthYear monthYear = this.startMonthYear;
            int i = 0;
            int hashCode = monthYear != null ? monthYear.hashCode() : 0;
            List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> list = this.data;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        @NotNull
        public String toString() {
            return "DashboardData(startMonthYear=" + this.startMonthYear + ", data=" + this.data + ")";
        }
    }

    @NotNull
    public static final /* synthetic */ DashboardData access$getDashboardData$cp() {
        DashboardData dashboardData2 = dashboardData;
        if (dashboardData2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardData");
        }
        return dashboardData2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateCallout(final TextView textView, int i) {
        ValueAnimator animator = ValueAnimator.ofInt(0, i);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(1500L);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$animateCallout$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                TextView textView2 = textView;
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                textView2.setText(animation.getAnimatedValue().toString());
            }
        });
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupChart() {
        if (getContext() != null) {
            RelativeLayout dashboard_fragment_chart_no_block_view = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_no_block_view);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_no_block_view, "dashboard_fragment_chart_no_block_view");
            dashboard_fragment_chart_no_block_view.setVisibility(8);
            LinearLayout dashboard_fragment_one_month_view = (LinearLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_one_month_view);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_one_month_view, "dashboard_fragment_one_month_view");
            dashboard_fragment_one_month_view.setVisibility(8);
            TextView dashboard_fragment_lifetime_label = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_label);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_label, "dashboard_fragment_lifetime_label");
            dashboard_fragment_lifetime_label.setVisibility(0);
            TextView dashboard_fragment_lifetime_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_tv);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_tv, "dashboard_fragment_lifetime_tv");
            dashboard_fragment_lifetime_tv.setVisibility(0);
            RelativeLayout dashboard_fragment_chart_root = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_root);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_root, "dashboard_fragment_chart_root");
            dashboard_fragment_chart_root.setVisibility(0);
            ((LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart)).animateY(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
            ((LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart)).animateX(5);
            ((LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart)).setOnChartValueSelectedListener(this);
            LineChart dashboard_fragment_chart = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart, "dashboard_fragment_chart");
            AdvancedDashboardHelper advancedDashboardHelper = AdvancedDashboardHelper.INSTANCE;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            AdvancedDashboardHelper advancedDashboardHelper2 = AdvancedDashboardHelper.INSTANCE;
            DashboardData dashboardData2 = dashboardData;
            if (dashboardData2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("dashboardData");
            }
            dashboard_fragment_chart.setData(advancedDashboardHelper.getLineChartData(context, advancedDashboardHelper2.getEntriesFromDashboardData(dashboardData2)));
            LineChart dashboard_fragment_chart2 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart2, "dashboard_fragment_chart");
            LineData lineData = (LineData) dashboard_fragment_chart2.getData();
            Intrinsics.checkExpressionValueIsNotNull(lineData, "dashboard_fragment_chart.data");
            float round = (float) (Math.round(((lineData.getYMax() * 1.5f) * 1.15d) / 2.0f) * 2);
            LineChart dashboard_fragment_chart3 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart3, "dashboard_fragment_chart");
            LineData lineData2 = (LineData) dashboard_fragment_chart3.getData();
            Intrinsics.checkExpressionValueIsNotNull(lineData2, "dashboard_fragment_chart.data");
            if (lineData2.getEntryCount() > 7) {
                LineChart dashboard_fragment_chart4 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart4, "dashboard_fragment_chart");
                LineData lineData3 = (LineData) dashboard_fragment_chart4.getData();
                Intrinsics.checkExpressionValueIsNotNull(lineData3, "dashboard_fragment_chart.data");
                lastEntry = lineData3.getEntryCount() - 1;
            }
            AdvancedDashboardHelper advancedDashboardHelper3 = AdvancedDashboardHelper.INSTANCE;
            Context context2 = getContext();
            if (context2 == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context2, "context!!");
            LineChart dashboard_fragment_chart5 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart5, "dashboard_fragment_chart");
            advancedDashboardHelper3.setupLineChartView(context2, dashboard_fragment_chart5, lastEntry, round);
            TextView dashboard_fragment_ymax = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_ymax);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_ymax, "dashboard_fragment_ymax");
            LineChart dashboard_fragment_chart6 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart6, "dashboard_fragment_chart");
            YAxis axisLeft = dashboard_fragment_chart6.getAxisLeft();
            Intrinsics.checkExpressionValueIsNotNull(axisLeft, "dashboard_fragment_chart.axisLeft");
            dashboard_fragment_ymax.setText(String.valueOf((int) axisLeft.getAxisMaximum()));
            TextView dashboard_fragment_ymid = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_ymid);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_ymid, "dashboard_fragment_ymid");
            LineChart dashboard_fragment_chart7 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart7, "dashboard_fragment_chart");
            YAxis axisLeft2 = dashboard_fragment_chart7.getAxisLeft();
            Intrinsics.checkExpressionValueIsNotNull(axisLeft2, "dashboard_fragment_chart.axisLeft");
            dashboard_fragment_ymid.setText(String.valueOf((int) (axisLeft2.getAxisMaximum() / 2)));
            StringBuilder sb = new StringBuilder();
            sb.append("calcYAxisMax: ");
            sb.append(round);
            sb.append(", chartYMax:");
            LineChart dashboard_fragment_chart8 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart8, "dashboard_fragment_chart");
            YAxis axisLeft3 = dashboard_fragment_chart8.getAxisLeft();
            Intrinsics.checkExpressionValueIsNotNull(axisLeft3, "dashboard_fragment_chart.axisLeft");
            sb.append(axisLeft3.getAxisMaximum());
            sb.append(", chartYMin:");
            LineChart dashboard_fragment_chart9 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart9, "dashboard_fragment_chart");
            YAxis axisLeft4 = dashboard_fragment_chart9.getAxisLeft();
            Intrinsics.checkExpressionValueIsNotNull(axisLeft4, "dashboard_fragment_chart.axisLeft");
            sb.append(axisLeft4.getAxisMinimum());
            sb.append(", chart_YMin:");
            LineChart dashboard_fragment_chart10 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart10, "dashboard_fragment_chart");
            sb.append(dashboard_fragment_chart10.getAxisLeft().mAxisMinimum);
            sb.append(", chart_YMax:");
            LineChart dashboard_fragment_chart11 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart11, "dashboard_fragment_chart");
            sb.append(dashboard_fragment_chart11.getAxisLeft().mAxisMaximum);
            Timber.m37d(sb.toString(), new Object[0]);
            LineChart dashboard_fragment_chart12 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart12, "dashboard_fragment_chart");
            LineData lineData4 = (LineData) dashboard_fragment_chart12.getData();
            Intrinsics.checkExpressionValueIsNotNull(lineData4, "dashboard_fragment_chart.data");
            float xMax = lineData4.getXMax();
            if (lastEntry == -1) {
                LineChart lineChart = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
                LineChart dashboard_fragment_chart13 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart13, "dashboard_fragment_chart");
                LineData lineData5 = (LineData) dashboard_fragment_chart13.getData();
                Intrinsics.checkExpressionValueIsNotNull(lineData5, "dashboard_fragment_chart.data");
                lineChart.highlightValue(lineData5.getXMax(), 0, true);
            } else {
                LineChart lineChart2 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
                LineChart dashboard_fragment_chart14 = (LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart14, "dashboard_fragment_chart");
                LineData lineData6 = (LineData) dashboard_fragment_chart14.getData();
                Intrinsics.checkExpressionValueIsNotNull(lineData6, "dashboard_fragment_chart.data");
                lineChart2.highlightValue(lineData6.getXMax() - 1, 0, true);
            }
            ((LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart)).moveViewToX(xMax);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupNoBlocksView() {
        RelativeLayout dashboard_fragment_chart_root = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_root);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_root, "dashboard_fragment_chart_root");
        dashboard_fragment_chart_root.setVisibility(8);
        LinearLayout dashboard_fragment_one_month_view = (LinearLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_one_month_view);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_one_month_view, "dashboard_fragment_one_month_view");
        dashboard_fragment_one_month_view.setVisibility(8);
        TextView dashboard_fragment_lifetime_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_tv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_tv, "dashboard_fragment_lifetime_tv");
        dashboard_fragment_lifetime_tv.setVisibility(8);
        TextView dashboard_fragment_lifetime_label = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_label);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_label, "dashboard_fragment_lifetime_label");
        dashboard_fragment_lifetime_label.setVisibility(8);
        RelativeLayout dashboard_fragment_chart_no_block_view = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_no_block_view);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_no_block_view, "dashboard_fragment_chart_no_block_view");
        dashboard_fragment_chart_no_block_view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupOneMonthView() {
        RelativeLayout dashboard_fragment_chart_root = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_root);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_root, "dashboard_fragment_chart_root");
        dashboard_fragment_chart_root.setVisibility(8);
        RelativeLayout dashboard_fragment_chart_no_block_view = (RelativeLayout) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart_no_block_view);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_chart_no_block_view, "dashboard_fragment_chart_no_block_view");
        dashboard_fragment_chart_no_block_view.setVisibility(8);
        TextView dashboard_fragment_lifetime_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_tv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_tv, "dashboard_fragment_lifetime_tv");
        dashboard_fragment_lifetime_tv.setVisibility(8);
        TextView dashboard_fragment_lifetime_label = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_label);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_label, "dashboard_fragment_lifetime_label");
        dashboard_fragment_lifetime_label.setVisibility(8);
        CallStatsRealm callStatsRealm = CallStatsRealm.INSTANCE;
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        int count = (int) callStatsRealm.getCount(realm);
        if (count > 10) {
            TextView dashboard_fragment_one_month_callout = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_one_month_callout);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_one_month_callout, "dashboard_fragment_one_month_callout");
            CallStatsRealm callStatsRealm2 = CallStatsRealm.INSTANCE;
            Realm realm2 = getRealm();
            Intrinsics.checkExpressionValueIsNotNull(realm2, "realm");
            animateCallout(dashboard_fragment_one_month_callout, (int) callStatsRealm2.getCount(realm2));
            return;
        }
        TextView dashboard_fragment_one_month_callout2 = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_one_month_callout);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_one_month_callout2, "dashboard_fragment_one_month_callout");
        dashboard_fragment_one_month_callout2.setText(String.valueOf(count));
    }

    private final void setupToolbar() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.setDetailToolbarTitle(C1566R.string.dashboard_fragment_toolbar_title);
            detailActivity.enableToolbarMenu(false);
            detailActivity.enableFab(false);
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.advanced_dashboard_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public AdvancedDashboardFragment newInstance() {
        return new AdvancedDashboardFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        setupToolbar();
        AdvancedDashboardHelper advancedDashboardHelper = AdvancedDashboardHelper.INSTANCE;
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        dashboardData = advancedDashboardHelper.createDashboardData(realm);
        return inflate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // com.github.mikephil.charting.listener.OnChartValueSelectedListener
    public void onNothingSelected() {
        TextView dashboard_fragment_month_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_month_tv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_month_tv, "dashboard_fragment_month_tv");
        dashboard_fragment_month_tv.setText("");
        selectedMonthYear = null;
        AdvancedDashboardPagerAdapter advancedDashboardPagerAdapter = this.pagerAdapter;
        if (advancedDashboardPagerAdapter != null) {
            advancedDashboardPagerAdapter.updateFragments();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.github.mikephil.charting.listener.OnChartValueSelectedListener
    public void onValueSelected(@Nullable Entry entry, @Nullable Highlight highlight) {
        Integer num = null;
        if (entry == null || ((int) entry.getX()) != lastEntry) {
            DashboardData dashboardData2 = dashboardData;
            if (dashboardData2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("dashboardData");
            }
            AdvancedDashboardHelper.MonthYear startMonthYear = dashboardData2.getStartMonthYear();
            if (entry != null) {
                num = Integer.valueOf((int) entry.getX());
            }
            selectedMonthYear = startMonthYear.plus(num);
            TextView dashboard_fragment_month_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_month_tv);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_month_tv, "dashboard_fragment_month_tv");
            dashboard_fragment_month_tv.setText(String.valueOf(selectedMonthYear));
        } else {
            TextView dashboard_fragment_month_tv2 = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_month_tv);
            Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_month_tv2, "dashboard_fragment_month_tv");
            dashboard_fragment_month_tv2.setText("");
            selectedMonthYear = null;
        }
        AdvancedDashboardPagerAdapter advancedDashboardPagerAdapter = this.pagerAdapter;
        if (advancedDashboardPagerAdapter != null) {
            advancedDashboardPagerAdapter.updateFragments();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((LineChart) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_chart)).setNoDataText("");
        new Handler().postDelayed(new Runnable() { // from class: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$onViewCreated$1
            @Override // java.lang.Runnable
            public final void run() {
                AdvancedDashboardPagerAdapter advancedDashboardPagerAdapter;
                AdvancedDashboardFragment$listener$1 advancedDashboardFragment$listener$1;
                AdvancedDashboardFragment$listener$1 advancedDashboardFragment$listener$12;
                Realm realm;
                Realm realm2;
                AdvancedDashboardFragment.this.pagerAdapter = new AdvancedDashboardPagerAdapter(AdvancedDashboardFragment.this.getChildFragmentManager(), AdvancedDashboardFragment.Companion.getDashboardData().getData().isEmpty());
                ViewPager dashboard_fragment_pager = (ViewPager) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_pager);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_pager, "dashboard_fragment_pager");
                advancedDashboardPagerAdapter = AdvancedDashboardFragment.this.pagerAdapter;
                dashboard_fragment_pager.setAdapter(advancedDashboardPagerAdapter);
                advancedDashboardFragment$listener$1 = AdvancedDashboardFragment.this.listener;
                ((ViewPager) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_pager)).removeOnPageChangeListener(advancedDashboardFragment$listener$1);
                advancedDashboardFragment$listener$12 = AdvancedDashboardFragment.this.listener;
                ((ViewPager) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_pager)).addOnPageChangeListener(advancedDashboardFragment$listener$12);
                ((TabLayout) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_tablayout)).setupWithViewPager((ViewPager) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_pager));
                TabLayout dashboard_fragment_tablayout = (TabLayout) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_tablayout);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_tablayout, "dashboard_fragment_tablayout");
                dashboard_fragment_tablayout.setTabGravity(0);
                ViewPager dashboard_fragment_pager2 = (ViewPager) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_pager);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_pager2, "dashboard_fragment_pager");
                dashboard_fragment_pager2.setCurrentItem(0);
                int length = AdvancedDashboardPage.Companion.getICONS().length;
                for (int i = 0; i < length; i++) {
                    View inflate = AdvancedDashboardFragment.this.getLayoutInflater().inflate(C1566R.C1571layout.dashboard_tab, (ViewGroup) null);
                    ((ImageView) inflate.findViewById(C1566R.C1569id.dashboard_tab_icon)).setBackgroundResource(AdvancedDashboardPage.Companion.getICONS()[i].intValue());
                    TabLayout.Tab tabAt = ((TabLayout) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_tablayout)).getTabAt(i);
                    if (tabAt != null) {
                        tabAt.setCustomView(inflate);
                    }
                }
                CallStatsRealm callStatsRealm = CallStatsRealm.INSTANCE;
                realm = AdvancedDashboardFragment.this.getRealm();
                Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
                if (((int) callStatsRealm.getCount(realm)) == 0) {
                    AdvancedDashboardFragment.this.setupNoBlocksView();
                } else {
                    List<Pair<AdvancedDashboardHelper.MonthYear, Integer>> data = AdvancedDashboardFragment.Companion.getDashboardData().getData();
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(data, 10));
                    Iterator<T> it = data.iterator();
                    while (it.hasNext()) {
                        arrayList.add((AdvancedDashboardHelper.MonthYear) ((Pair) it.next()).getFirst());
                    }
                    if (CollectionsKt.distinct(arrayList).size() == 1) {
                        AdvancedDashboardFragment.this.setupOneMonthView();
                    } else {
                        AdvancedDashboardFragment.this.setupChart();
                    }
                }
                AdvancedDashboardFragment advancedDashboardFragment = AdvancedDashboardFragment.this;
                TextView dashboard_fragment_lifetime_tv = (TextView) AdvancedDashboardFragment.this._$_findCachedViewById(C1566R.C1569id.dashboard_fragment_lifetime_tv);
                Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_lifetime_tv, "dashboard_fragment_lifetime_tv");
                CallStatsRealm callStatsRealm2 = CallStatsRealm.INSTANCE;
                realm2 = AdvancedDashboardFragment.this.getRealm();
                Intrinsics.checkExpressionValueIsNotNull(realm2, "realm");
                advancedDashboardFragment.animateCallout(dashboard_fragment_lifetime_tv, (int) callStatsRealm2.getCount(realm2));
            }
        }, 100L);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }
}
