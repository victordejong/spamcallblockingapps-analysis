package com.tmobile.services.nameid.Settings.categorymanager;

import android.widget.CompoundButton;
import android.widget.Switch;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter;
import com.tmobile.services.nameid.Settings.categorymanager.CategoryManager;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� 72\u00020\u0001:\u00017B\u001f\u0012\u0006\u00104\u001a\u000200\u0012\u0006\u0010)\u001a\u00020\f\u0012\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b5\u00106J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ%\u0010!\u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010%\u001a\u00020\u00042\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0004H\u0002¢\u0006\u0004\b'\u0010(R\u0019\u0010)\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b)\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R$\u00102\u001a\u0010\u0012\f\u0012\n 1*\u0004\u0018\u000100000/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103¨\u00068"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerPresenter;", "com/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter", "", "bucketId", "", "createCategoriesList", "(I)V", "", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListInterface;", "categoryListItems", "determineCategoryScrollTo", "(ILjava/util/List;)I", "", "checked", "determineDispostion", "(Z)I", "", "getBucketString", "(I)Ljava/lang/String;", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;", "item", "Landroid/widget/Switch;", "theSwitch", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "listener", "onCategoryToggled", "(Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;Landroid/widget/Switch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponse", "onMetroUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/LicenseResponseItem;)V", FirebaseAnalytics.Param.ITEMS, "bucketIdToScrollTo", "onSetVisible", "(Ljava/util/List;I)V", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatus", "onUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/TmoUserStatus;)V", "refreshList", "()V", "isMetro", "Z", "()Z", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "userState", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$View;", "kotlin.jvm.PlatformType", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$View;ZLcom/tmobile/services/nameid/utility/SubscriptionHelper$State;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerPresenter.class */
public final class CategoryManagerPresenter implements CategoryManager.Presenter {

    /* renamed from: a */
    private final WeakReference<CategoryManager.View> f12921a;

    /* renamed from: b */
    private final boolean f12922b;

    /* renamed from: c */
    private SubscriptionHelper.State f12923c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerPresenter$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerPresenter$Companion.class */
    private static final class Companion {
        private Companion() {
        }
    }

    public CategoryManagerPresenter(@NotNull CategoryManager.View view, boolean z, @NotNull SubscriptionHelper.State userState) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(userState, "userState");
        this.f12922b = z;
        this.f12923c = userState;
        this.f12921a = new WeakReference<>(view);
    }

    /* renamed from: f */
    private final int m7276f(int i, List<? extends CategoriesAdapter.CategoryListInterface> list) {
        if (i < 0 || i == CategorySetting.BucketId.SCAM.getValue()) {
            return 0;
        }
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (!(list.get(i2) instanceof CategoriesAdapter.ProtectionListItem)) {
                    Object obj = list.get(i2);
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter.CategoryListItem");
                    } else if (((CategoriesAdapter.CategoryListItem) obj).m7316a() == i) {
                        return i2;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: g */
    private final int m7275g(boolean z) {
        return z ? CallerSetting.Action.VOICEMAIL.getValue() : CallerSetting.Action.APPROVED.getValue();
    }

    /* renamed from: h */
    private final String m7274h(int i) {
        return i == CategorySetting.BucketId.NUISANCE.getValue() ? "nuisance" : i == CategorySetting.BucketId.TELEMARKETING.getValue() ? "telemarketing" : i == CategorySetting.BucketId.POLITICAL.getValue() ? "political" : i == CategorySetting.BucketId.SURVEY.getValue() ? "survey" : i == CategorySetting.BucketId.CHARITY.getValue() ? "charity" : i == CategorySetting.BucketId.PRISON.getValue() ? "prison_jail" : "unknown";
    }

    /* renamed from: i */
    private final void m7273i() {
        ArrayList<CategoriesAdapter.CategoryListInterface> arrayList = new ArrayList<>();
        boolean m = SubscriptionHelper.m5315m(this.f12923c);
        CategoryManager.View view = this.f12921a.get();
        if (view != null) {
            view.mo7292j(arrayList, m);
        }
        CategoryManager.View view2 = this.f12921a.get();
        if (view2 != null) {
            view2.mo7291k0(arrayList, m);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.Presenter
    /* renamed from: a */
    public void mo7281a(@Nullable LicenseResponseItem licenseResponseItem) {
        LogUtil.m5643d("CategoryManagerPresenteronMetroUserStatusUpdate", "received Metro user status update");
        if (licenseResponseItem == null || !licenseResponseItem.isValid()) {
            if (this.f12922b) {
                this.f12923c = SubscriptionHelper.State.NONE;
                CategoryManager.View view = this.f12921a.get();
                if (view != null) {
                    view.mo7290o0(false);
                }
            }
        } else if (this.f12922b) {
            SubscriptionHelper.State state = SubscriptionHelper.m5326b(licenseResponseItem);
            Intrinsics.m1831d(state, "state");
            this.f12923c = state;
            CategoryManager.View view2 = this.f12921a.get();
            if (view2 != null) {
                view2.mo7290o0(SubscriptionHelper.m5315m(state));
            }
            m7273i();
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.Presenter
    /* renamed from: b */
    public void mo7280b(@Nullable TmoUserStatus tmoUserStatus) {
        LogUtil.m5643d("CategoryManagerPresenteronuserStatusUpdate", "received user status update");
        if (tmoUserStatus == null || !tmoUserStatus.isValid()) {
            if (!this.f12922b) {
                this.f12923c = SubscriptionHelper.State.NONE;
                CategoryManager.View view = this.f12921a.get();
                if (view != null) {
                    view.mo7290o0(false);
                }
            }
            LogUtil.m5632o("CategoryManagerPresenter", "User status is invalid or empty, treating user an INACTIVE");
            return;
        }
        SubscriptionHelper.State state = SubscriptionHelper.State.NONE;
        if (tmoUserStatus.isValid()) {
            state = SubscriptionHelper.m5322f(tmoUserStatus);
            Intrinsics.m1831d(state, "SubscriptionHelper.getSt…IgnorePending(userStatus)");
        }
        if (!this.f12922b) {
            this.f12923c = state;
            CategoryManager.View view2 = this.f12921a.get();
            if (view2 != null) {
                view2.mo7290o0(SubscriptionHelper.m5315m(state));
            }
            m7273i();
        }
        LogUtil.m5632o("CategoryManagerPresenter#onUserStatusUpdate", "state: " + state);
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.Presenter
    /* renamed from: c */
    public void mo7279c(@NotNull CategoriesAdapter.CategoryListItem item, @Nullable Switch r9, @NotNull CompoundButton.OnCheckedChangeListener listener) {
        boolean z;
        Intrinsics.m1830e(item, "item");
        Intrinsics.m1830e(listener, "listener");
        if (r9 != null && !BuildUtils.m5852b()) {
            String str = r9.isChecked() ? "disable_" : "enable_";
            AnalyticsWrapper.m5883E("CategoriesFragment", str + m7274h(item.m7316a()));
        }
        if (!Feature.CATEGORY_BLOCK.isOwned(this.f12923c)) {
            LogUtil.m5632o("CategoryManagerPresenter#onCategoryEnabled", "category change (" + item.f12878a + ") not allowed for user, showing subscribe.");
            if (SubscriptionHelper.m5302z() || SubscriptionHelper.m5321g(null)) {
                CategoryManager.View view = this.f12921a.get();
                if (view != null) {
                    view.mo7294b();
                }
            } else if (!SubscriptionHelper.m5310r(this.f12923c) || !BuildUtils.m5850d()) {
                CategoryManager.View view2 = this.f12921a.get();
                if (view2 != null) {
                    view2.mo7313B(null);
                }
            } else {
                CategoryManager.View view3 = this.f12921a.get();
                if (view3 != null) {
                    view3.mo7312E0();
                }
            }
        } else {
            if (r9 != null) {
                r9.setChecked(!r9.isChecked());
                z = r9.isChecked();
            } else {
                z = false;
            }
            LogUtil.m5632o("CategoryManagerPresenter#onCategoryEnabled", "category (" + item.f12878a + ") changed to on? " + z);
            CategoryManager.View view4 = this.f12921a.get();
            if (view4 != null) {
                view4.mo7295Z(item.m7316a(), m7274h(item.m7316a()), z, m7275g(z), SubscriptionHelper.m5310r(this.f12923c));
            }
        }
        if (r9 != null) {
            r9.setOnCheckedChangeListener(listener);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.Presenter
    /* renamed from: d */
    public void mo7278d(int i) {
        ArrayList<CategoriesAdapter.CategoryListInterface> arrayList = new ArrayList<>();
        boolean m = SubscriptionHelper.m5315m(this.f12923c);
        CategoryManager.View view = this.f12921a.get();
        if (view != null) {
            view.mo7292j(arrayList, m);
        }
        CategoryManager.View view2 = this.f12921a.get();
        if (view2 != null) {
            view2.mo7291k0(arrayList, m);
        }
        CategoryManager.View view3 = this.f12921a.get();
        if (view3 != null) {
            view3.mo7293c0(m7276f(i, arrayList));
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.Presenter
    /* renamed from: e */
    public void mo7277e(@NotNull List<? extends CategoriesAdapter.CategoryListInterface> items, int i) {
        Intrinsics.m1830e(items, "items");
        CategoryManager.View view = this.f12921a.get();
        if (view != null) {
            view.mo7293c0(m7276f(i, items));
        }
    }
}
