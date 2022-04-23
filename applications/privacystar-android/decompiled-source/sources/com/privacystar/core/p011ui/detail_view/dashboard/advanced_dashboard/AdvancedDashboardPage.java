package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.p001v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.PSFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper;
import com.privacystar.core.p011ui.widgets.CustomDashboardCircle;
import com.privacystar.core.util.OffenderUtil;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.cli.HelpFormatter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\b\b&\u0018�� #2\u00020\u00012\u00020\u0002:\u0005\"#$%&B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0004J\b\u0010\f\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0004J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0004J\u001c\u0010\u001b\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020\u0017H\u0004J\b\u0010!\u001a\u00020\u0017H&R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006'"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "Lcom/privacystar/core/ui/PSFragment;", "Ljava/util/Observer;", "()V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "getPosition", "()I", "getCategoryBlocks", "isMonthSelected", "", "category", "getLayoutId", "getTotalBlocks", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "", "setupView", "categoryBlocked", "totalBlocked", "update", "o", "Ljava/util/Observable;", HelpFormatter.DEFAULT_ARG_NAME, "", "updateCirclePage", "updater", "BlockListDashboardPage", "Companion", "NuisanceDashboardPage", "OtherDashboardPage", "ScamDashboardPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage.class */
public abstract class AdvancedDashboardPage extends PSFragment implements Observer {
    private HashMap _$_findViewCache;
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Integer[] TITLES = {Integer.valueOf((int) C1566R.string.dashboard_scam_title), Integer.valueOf((int) C1566R.string.dashboard_category_nuisance), Integer.valueOf((int) C1566R.string.dashboard_category_block_list), Integer.valueOf((int) C1566R.string.dashboard_category_other)};
    @NotNull
    private static final Integer[] ICONS = {Integer.valueOf((int) C1566R.C1568drawable.ic_dashboard_scam), Integer.valueOf((int) C1566R.C1568drawable.ic_dashboard_nuisance), Integer.valueOf((int) C1566R.C1568drawable.ic_dashboard_pbl), Integer.valueOf((int) C1566R.C1568drawable.ic_dashboard_other)};

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$BlockListDashboardPage;", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "()V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "getPosition", "()I", "updater", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage$BlockListDashboardPage */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$BlockListDashboardPage.class */
    public static final class BlockListDashboardPage extends AdvancedDashboardPage {
        private HashMap _$_findViewCache;
        private final int position = 2;

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void _$_clearFindViewByIdCache() {
            if (this._$_findViewCache != null) {
                this._$_findViewCache.clear();
            }
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
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

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public int getPosition() {
            return this.position;
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage, android.support.p001v4.app.Fragment
        public /* synthetic */ void onDestroyView() {
            AdvancedDashboardPage.super.onDestroyView();
            _$_clearFindViewByIdCache();
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void updater() {
            updateCirclePage();
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0005R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$Companion;", "", "()V", "ICONS", "", "", "getICONS", "()[Ljava/lang/Integer;", "[Ljava/lang/Integer;", "TITLES", "getTITLES", "getIcon", "Landroid/graphics/drawable/Drawable;", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "getTitle", "", "newInstance", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Integer[] getICONS() {
            return AdvancedDashboardPage.ICONS;
        }

        @NotNull
        public final Drawable getIcon(int i) {
            Drawable drawable = PSApplication.context().getDrawable(getICONS()[i].intValue());
            Intrinsics.checkExpressionValueIsNotNull(drawable, "PSApplication.context().…Drawable(ICONS[position])");
            return drawable;
        }

        @NotNull
        public final Integer[] getTITLES() {
            return AdvancedDashboardPage.TITLES;
        }

        @NotNull
        public final String getTitle(int i) {
            Context context = PSApplication.context();
            Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
            String string = context.getResources().getString(getTITLES()[i].intValue());
            Intrinsics.checkExpressionValueIsNotNull(string, "PSApplication.context().…tString(TITLES[position])");
            return string;
        }

        @NotNull
        public final AdvancedDashboardPage newInstance(int i) {
            ScamDashboardPage scamDashboardPage;
            switch (i) {
                case 0:
                    scamDashboardPage = new ScamDashboardPage();
                    break;
                case 1:
                    scamDashboardPage = new NuisanceDashboardPage();
                    break;
                case 2:
                    scamDashboardPage = new BlockListDashboardPage();
                    break;
                case 3:
                    scamDashboardPage = new OtherDashboardPage();
                    break;
                default:
                    scamDashboardPage = new ScamDashboardPage();
                    break;
            }
            return scamDashboardPage;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$NuisanceDashboardPage;", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "()V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "getPosition", "()I", "updater", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage$NuisanceDashboardPage */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$NuisanceDashboardPage.class */
    public static final class NuisanceDashboardPage extends AdvancedDashboardPage {
        private HashMap _$_findViewCache;
        private final int position = 1;

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void _$_clearFindViewByIdCache() {
            if (this._$_findViewCache != null) {
                this._$_findViewCache.clear();
            }
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
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

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public int getPosition() {
            return this.position;
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage, android.support.p001v4.app.Fragment
        public /* synthetic */ void onDestroyView() {
            AdvancedDashboardPage.super.onDestroyView();
            _$_clearFindViewByIdCache();
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void updater() {
            updateCirclePage();
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$OtherDashboardPage;", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "()V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "getPosition", "()I", "updateOtherCirclePage", "", "updater", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage$OtherDashboardPage */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$OtherDashboardPage.class */
    public static final class OtherDashboardPage extends AdvancedDashboardPage {
        private HashMap _$_findViewCache;
        private final int position = 3;

        private final void updateOtherCirclePage() {
            if (((TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_title)) != null && ((TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_number)) != null && ((CustomDashboardCircle) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_progress)) != null) {
                int categoryBlocks = getCategoryBlocks(AdvancedDashboardFragment.Companion.isMonthSelected(), OffenderUtil.EOffenderCategory.SCAM_LIKELY.getValue());
                Timber.m37d("scam blocks: " + categoryBlocks, new Object[0]);
                int categoryBlocks2 = getCategoryBlocks(AdvancedDashboardFragment.Companion.isMonthSelected(), OffenderUtil.EOffenderCategory.LIVE_TELESALES.getValue());
                Timber.m37d("tele blocks: " + categoryBlocks2, new Object[0]);
                int categoryBlocks3 = getCategoryBlocks(AdvancedDashboardFragment.Companion.isMonthSelected(), 0);
                Timber.m37d("pnb blocks: " + categoryBlocks3, new Object[0]);
                int totalBlocks = getTotalBlocks(AdvancedDashboardFragment.Companion.isMonthSelected());
                Timber.m37d("total blocks: " + totalBlocks, new Object[0]);
                StringBuilder sb = new StringBuilder();
                sb.append("other blocks: ");
                int i = totalBlocks - ((categoryBlocks + categoryBlocks2) + categoryBlocks3);
                sb.append(i);
                Timber.m37d(sb.toString(), new Object[0]);
                setupView(getPosition(), i, totalBlocks);
            }
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void _$_clearFindViewByIdCache() {
            if (this._$_findViewCache != null) {
                this._$_findViewCache.clear();
            }
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
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

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public int getPosition() {
            return this.position;
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage, android.support.p001v4.app.Fragment
        public /* synthetic */ void onDestroyView() {
            AdvancedDashboardPage.super.onDestroyView();
            _$_clearFindViewByIdCache();
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void updater() {
            updateOtherCirclePage();
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$ScamDashboardPage;", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage;", "()V", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "getPosition", "()I", "updater", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage$ScamDashboardPage */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardPage$ScamDashboardPage.class */
    public static final class ScamDashboardPage extends AdvancedDashboardPage {
        private HashMap _$_findViewCache;
        private final int position;

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void _$_clearFindViewByIdCache() {
            if (this._$_findViewCache != null) {
                this._$_findViewCache.clear();
            }
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
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

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public int getPosition() {
            return this.position;
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage, android.support.p001v4.app.Fragment
        public /* synthetic */ void onDestroyView() {
            AdvancedDashboardPage.super.onDestroyView();
            _$_clearFindViewByIdCache();
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardPage
        public void updater() {
            updateCirclePage();
        }
    }

    private final int getLayoutId() {
        return C1566R.C1571layout.dashboard_circle_page;
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

    protected final int getCategoryBlocks(boolean z, int i) {
        int i2;
        if (z) {
            AdvancedDashboardHelper advancedDashboardHelper = AdvancedDashboardHelper.INSTANCE;
            AdvancedDashboardFragment.DashboardData dashboardData = AdvancedDashboardFragment.Companion.getDashboardData();
            AdvancedDashboardHelper.MonthYear selectedMonthYear = AdvancedDashboardFragment.Companion.getSelectedMonthYear();
            if (selectedMonthYear == null) {
                Intrinsics.throwNpe();
            }
            i2 = advancedDashboardHelper.getCategoryBlocksInMonth(dashboardData, selectedMonthYear, i);
        } else {
            i2 = AdvancedDashboardHelper.INSTANCE.getTotalCategoryBlocks(AdvancedDashboardFragment.Companion.getDashboardData(), i);
        }
        return i2;
    }

    public abstract int getPosition();

    protected final int getTotalBlocks(boolean z) {
        int i;
        if (z) {
            AdvancedDashboardHelper advancedDashboardHelper = AdvancedDashboardHelper.INSTANCE;
            AdvancedDashboardFragment.DashboardData dashboardData = AdvancedDashboardFragment.Companion.getDashboardData();
            AdvancedDashboardHelper.MonthYear selectedMonthYear = AdvancedDashboardFragment.Companion.getSelectedMonthYear();
            if (selectedMonthYear == null) {
                Intrinsics.throwNpe();
            }
            i = advancedDashboardHelper.getTotalBlocksInMonth(dashboardData, selectedMonthYear);
        } else {
            i = AdvancedDashboardHelper.INSTANCE.getTotalBlocks(AdvancedDashboardFragment.Companion.getDashboardData());
        }
        return i;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutId(), viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        update(null, null);
    }

    protected final void setupView(int i, int i2, int i3) {
        TextView dashboard_circle_title = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_title);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_circle_title, "dashboard_circle_title");
        dashboard_circle_title.setText(Companion.getTitle(i));
        TextView dashboard_circle_number = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_number);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_circle_number, "dashboard_circle_number");
        dashboard_circle_number.setText(String.valueOf(i2));
        CustomDashboardCircle dashboard_circle_progress = (CustomDashboardCircle) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_progress);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_circle_progress, "dashboard_circle_progress");
        float f = 0.0f;
        dashboard_circle_progress.setProgress(0.0f);
        if (i3 != 0) {
            f = (i2 / i3) * 100;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((CustomDashboardCircle) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_progress), NotificationCompat.CATEGORY_PROGRESS, f);
        Intrinsics.checkExpressionValueIsNotNull(ofFloat, "ObjectAnimator.ofFloat(d…ess, \"progress\", percent)");
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(1500L);
        animatorSet.play(ofFloat);
        animatorSet.start();
    }

    @Override // java.util.Observer
    public void update(@Nullable Observable observable, @Nullable Object obj) {
        updater();
    }

    protected final void updateCirclePage() {
        int i;
        if (((TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_title)) != null && ((TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_number)) != null && ((CustomDashboardCircle) _$_findCachedViewById(C1566R.C1569id.dashboard_circle_progress)) != null) {
            switch (getPosition()) {
                case 0:
                    i = OffenderUtil.EOffenderCategory.SCAM_LIKELY.getValue();
                    break;
                case 1:
                    i = OffenderUtil.EOffenderCategory.LIVE_TELESALES.getValue();
                    break;
                default:
                    i = 0;
                    break;
            }
            int categoryBlocks = getCategoryBlocks(AdvancedDashboardFragment.Companion.isMonthSelected(), i);
            int totalBlocks = getTotalBlocks(AdvancedDashboardFragment.Companion.isMonthSelected());
            Timber.m37d("SelectedTabIndex=" + getPosition() + ", CategoryBlocked=" + categoryBlocks + ", TotalBlocked=" + totalBlocks + ", ID=" + i + ", Month=" + AdvancedDashboardFragment.Companion.getSelectedMonthYear(), new Object[0]);
            setupView(getPosition(), categoryBlocks, totalBlocks);
        }
    }

    public abstract void updater();
}
