package com.tmobile.services.nameid.Settings.categorymanager;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Switch;
import androidx.annotation.StringRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter;
import com.tmobile.services.nameid.Settings.categorymanager.CategoryManager;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.ExtensionsKt;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.p009io.CloseableKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.HttpException;
import retrofit2.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001yB\u0007¢\u0006\u0004\bx\u0010AJ%\u0010\n\u001a\u00020\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ7\u0010\u0013\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\u0017\u001a\u00020\t2\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0015j\b\u0012\u0004\u0012\u00020\u0005`\u00162\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010&\u001a\u00020\t2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\fH\u0002¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020��¢\u0006\u0004\b,\u0010-J)\u00103\u001a\u00020\t2\u0006\u0010/\u001a\u00020.2\b\u00101\u001a\u0004\u0018\u0001002\u0006\u0010%\u001a\u000202H\u0002¢\u0006\u0004\b3\u00104J\u0019\u00107\u001a\u00020\t2\b\u00106\u001a\u0004\u0018\u000105H\u0016¢\u0006\u0004\b7\u00108J-\u0010>\u001a\u0004\u0018\u00010=2\u0006\u0010:\u001a\u0002092\b\u0010<\u001a\u0004\u0018\u00010;2\b\u00106\u001a\u0004\u0018\u000105H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\tH\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\tH\u0016¢\u0006\u0004\bB\u0010AJ\u0019\u0010D\u001a\u00020\t2\b\b\u0001\u0010C\u001a\u00020\fH\u0002¢\u0006\u0004\bD\u0010EJ\u0017\u0010G\u001a\u00020\t2\u0006\u0010F\u001a\u00020\fH\u0016¢\u0006\u0004\bG\u0010EJ\u000f\u0010H\u001a\u00020\tH\u0002¢\u0006\u0004\bH\u0010AJ\u000f\u0010I\u001a\u00020\tH\u0002¢\u0006\u0004\bI\u0010AJ\u0017\u0010K\u001a\u00020\t2\u0006\u0010J\u001a\u00020\u0007H\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bN\u0010LJ\u000f\u0010O\u001a\u00020\tH\u0016¢\u0006\u0004\bO\u0010AJ!\u0010T\u001a\u00020\t2\b\u0010Q\u001a\u0004\u0018\u00010P2\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\tH\u0016¢\u0006\u0004\bV\u0010AJ!\u0010W\u001a\u00020\t2\b\u0010Q\u001a\u0004\u0018\u00010P2\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\bW\u0010UJ\u001f\u0010[\u001a\u00020\t2\u0006\u0010X\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\b[\u0010\\R\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0018\u0010a\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010d\u001a\u00020c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u001e\u0010k\u001a\n\u0012\u0004\u0012\u00020j\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u001d\u0010r\u001a\u00020m8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010o\u001a\u0004\bp\u0010qR&\u0010t\u001a\u0012\u0012\u0004\u0012\u00020s0\u0015j\b\u0012\u0004\u0012\u00020s`\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010uR\u001e\u0010w\u001a\n\u0012\u0004\u0012\u00020v\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010l¨\u0006z"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment;", "Lcom/tmobile/services/nameid/TabFragmentInterface;", "com/tmobile/services/nameid/Settings/categorymanager/CategoryManager$View", "Landroidx/fragment/app/Fragment;", "", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListInterface;", FirebaseAnalytics.Param.ITEMS, "", "isActive", "", "addCategoriesToAdapter", "(Ljava/util/List;Z)V", "", "bucketId", "", "bucketIdString", "on", "disposition", "isPending", "applyCategorySetting", "(ILjava/lang/String;ZIZ)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "fillCategoryList", "(Ljava/util/ArrayList;Z)V", "Landroid/app/Activity;", "findActivityRef", "()Landroid/app/Activity;", "getCallCareStartShort", "()I", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "getTabType", "()Lcom/tmobile/services/nameid/MainActivity$Tabs;", "Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;", "listener", "goToSubscribe", "(Lcom/tmobile/services/nameid/utility/WidgetUtils$SubscribeFromDialogListener;)V", "oldOn", "oldDisposition", "handleUpdateFailData", "(IZI)V", "newInstance", "()Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment;", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;", "item", "Landroid/widget/Switch;", "theSwitch", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "onCategorySwitchToggled", "(Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem;Landroid/widget/Switch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onPause", "()V", "onStart", "stringRes", "outputAccessibility", "(I)V", "position", "scrollToCategoryPosition", "setShownFlag", "setTitle", "active", "setUserActiveStatus", "(Z)V", "visible", "setVisible", "showCallCareDialog", "Landroid/content/Context;", "context", "Landroidx/fragment/app/FragmentManager;", "childFragmentManager", "showCallCareError", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V", "showMetroPendingCategoryDialog", "showTryAgainError", "add", "", "fail", "showUpdateFailUI", "(ZLjava/lang/Throwable;)V", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter;", "categoriesAdapter", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "categoriesLayoutManager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView;", "categoriesList", "Landroidx/recyclerview/widget/RecyclerView;", "Lio/realm/Realm;", "globalRealm", "Lio/realm/Realm;", "Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponses", "Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter;", "presenter$delegate", "Lkotlin/Lazy;", "getPresenter", "()Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManager$Presenter;", "presenter", "Lio/reactivex/disposables/Disposable;", "uiUpdateDisposables", "Ljava/util/ArrayList;", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatuses", "<init>", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment.class */
public class CategoryManagerFragment extends Fragment implements TabFragmentInterface, CategoryManager.View {

    /* renamed from: o */
    private static final Companion f12887o = new Companion(null);

    /* renamed from: f */
    private final Lazy f12888f;

    /* renamed from: g */
    private RealmResults<TmoUserStatus> f12889g;

    /* renamed from: h */
    private RealmResults<LicenseResponseItem> f12890h;

    /* renamed from: i */
    private CategoriesAdapter f12891i;

    /* renamed from: j */
    private Realm f12892j;

    /* renamed from: k */
    private LinearLayoutManager f12893k;

    /* renamed from: l */
    private final ArrayList<Disposable> f12894l = new ArrayList<>();

    /* renamed from: m */
    private RecyclerView f12895m;

    /* renamed from: n */
    private HashMap f12896n;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoryManagerFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CategoryManagerFragment() {
        Lazy a;
        a = LazyKt__LazyJVMKt.m2487a(new CategoryManagerFragment$presenter$2(this));
        this.f12888f = a;
    }

    /* renamed from: L0 */
    private final Activity m7306L0() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* renamed from: M0 */
    private final int m7305M0() {
        return SubscriptionHelper.m5332B() ? C1517R.string.call_care_error_start_short_xp : C1517R.string.call_care_error_start_short;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public final CategoryManager.Presenter m7304N0() {
        return (CategoryManager.Presenter) this.f12888f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public final void m7303O0(final int i, final boolean z, final int i2) {
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(CategorySetting.class);
            Q0.m2885q("bucketId", Integer.valueOf(i));
            final CategorySetting categorySetting = (CategorySetting) Q0.m2916G();
            if (categorySetting != null) {
                LogUtil.m5632o("CategoryManagerFragment", "Update failed for bucketId: " + i + " disposition reset to " + i2);
                G0.m3067D0(new Realm.Transaction(this, i, i2, z) { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$handleUpdateFailData$$inlined$use$lambda$1

                    /* renamed from: b */
                    final /* synthetic */ int f12903b;

                    /* renamed from: c */
                    final /* synthetic */ boolean f12904c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12903b = i2;
                        this.f12904c = z;
                    }

                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        if (this.f12903b < 0) {
                            CategorySetting.this.deleteFromRealm();
                            return;
                        }
                        CategorySetting.this.setBlocked(this.f12904c);
                        CategorySetting.this.setDisposition(this.f12903b);
                    }
                });
            }
            if (this.f12891i != null) {
                CategoriesAdapter categoriesAdapter = this.f12891i;
                Intrinsics.m1832c(categoriesAdapter);
                categoriesAdapter.notifyDataSetChanged();
            }
            Unit unit = Unit.f20447a;
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public final void m7302P0(CategoriesAdapter.CategoryListItem categoryListItem, Switch r7, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        m7304N0().mo7279c(categoryListItem, r7, onCheckedChangeListener);
    }

    /* renamed from: Q0 */
    private final void m7301Q0(@StringRes int i) {
        String string = getString(i);
        Context context = getContext();
        Intrinsics.m1832c(context);
        MainActivity.m7572q0(string, context);
    }

    /* renamed from: R0 */
    private final void m7300R0() {
        PreferenceUtils.m5386k("PREF_HAS_SHOWN_CATEGORY_MANAGER", true);
    }

    /* renamed from: S0 */
    private final void m7299S0() {
        MainActivity mainActivity;
        if ((getContext() instanceof MainActivity) && (mainActivity = (MainActivity) getContext()) != null && mainActivity.m7571r(mo6305F0())) {
            mainActivity.m7625N0(C1517R.string.setting_category_manager_title);
        }
    }

    /* renamed from: T0 */
    private final void m7298T0(Context context, FragmentManager fragmentManager) {
        if (context == null || !isAdded()) {
            LogUtil.m5643d("CategoryManagerFragmentshowCallCareError", "cannot show dialog");
        } else {
            NameIDDialogBuilder.f13943m.m6141c(C1517R.string.category_error_header, m7305M0(), C1517R.string.call_care_error_end, C1517R.string.general_ok, context).m6160b(fragmentManager);
        }
    }

    /* renamed from: U0 */
    private final void m7297U0(Context context, FragmentManager fragmentManager) {
        if (context == null || !isAdded()) {
            LogUtil.m5643d("CategoryManagerFragmentshowTryAgainError", "cannot show dialog");
        } else {
            NameIDDialogBuilder.f13943m.m6136h(C1517R.string.unknown_error_title, C1517R.string.unknown_error_desc, context).m6160b(fragmentManager);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: B */
    public void mo7313B(@Nullable WidgetUtils.SubscribeFromDialogListener subscribeFromDialogListener) {
        WidgetUtils.m5235f0(getActivity(), getChildFragmentManager(), subscribeFromDialogListener, null);
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: E0 */
    public void mo7312E0() {
        WidgetUtils.m5243b0(getChildFragmentManager());
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    @NotNull
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: G0 */
    public void m7311G0() {
        HashMap hashMap = this.f12896n;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: V0 */
    public void m7296V0(boolean z, @NotNull Throwable fail) {
        Intrinsics.m1830e(fail, "fail");
        int code = fail instanceof HttpException ? ((HttpException) fail).code() : 0;
        String format = String.format("Category update failed with an error code of %d", Arrays.copyOf(new Object[]{Integer.valueOf(code)}, 1));
        Intrinsics.m1831d(format, "java.lang.String.format(this, *args)");
        LogUtil.m5639h("CategoryManagerFragment", format);
        if (isAdded()) {
            if (code == 403 || code == 408) {
                Context context = getContext();
                FragmentManager childFragmentManager = getChildFragmentManager();
                Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
                m7298T0(context, childFragmentManager);
                return;
            }
            Context context2 = getContext();
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.m1831d(childFragmentManager2, "childFragmentManager");
            m7297U0(context2, childFragmentManager2);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: Z */
    public void mo7295Z(final int i, @NotNull String bucketIdString, final boolean z, final int i2, final boolean z2) {
        Throwable th;
        Intrinsics.m1830e(bucketIdString, "bucketIdString");
        Context context = getContext();
        Intrinsics.m1832c(context);
        if (WidgetUtils.m5239d0(context, getChildFragmentManager(), false)) {
            CategoriesAdapter categoriesAdapter = this.f12891i;
            if (categoriesAdapter != null) {
                Intrinsics.m1832c(categoriesAdapter);
                categoriesAdapter.notifyDataSetChanged();
            }
            LogUtil.m5632o("CategoryManagerFragment", "Tried to change category setting, but user has no network");
            return;
        }
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.f20749f = -1;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.f20744f = false;
        final Ref.IntRef intRef2 = new Ref.IntRef();
        intRef2.f20749f = -1;
        if (z) {
            MainApplication.m7553C("category_pnb", new String[]{"result"}, new String[]{bucketIdString});
        }
        LogUtil.m5632o("CategoryManagerFragment", "Applying category '" + i + "' setting of disposition '" + i2 + '\'');
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(CategorySetting.class);
            Q0.m2885q("bucketId", Integer.valueOf(i));
            final CategorySetting categorySetting = (CategorySetting) Q0.m2916G();
            try {
                if (categorySetting != null) {
                    try {
                        intRef.f20749f = categorySetting.getBucketId();
                        booleanRef.f20744f = categorySetting.getBlocked();
                        intRef2.f20749f = categorySetting.getDisposition();
                        G0.m3067D0(new Realm.Transaction(i, intRef, booleanRef, intRef2, i2, z, z2) { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$applyCategorySetting$$inlined$use$lambda$1

                            /* renamed from: b */
                            final /* synthetic */ int f12898b;

                            /* renamed from: c */
                            final /* synthetic */ int f12899c;

                            /* renamed from: d */
                            final /* synthetic */ boolean f12900d;

                            /* renamed from: e */
                            final /* synthetic */ boolean f12901e;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f12899c = i2;
                                this.f12900d = z;
                                this.f12901e = z2;
                            }

                            @Override // io.realm.Realm.Transaction
                            /* renamed from: a */
                            public final void mo3037a(Realm realm) {
                                CategorySetting.this.setDisposition(this.f12899c);
                                CategorySetting.this.setBlocked(this.f12900d);
                                if (this.f12898b != CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
                                    CategorySetting.this.setPending(this.f12901e);
                                }
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            throw th;
                        } finally {
                            CloseableKt.m1887a(G0, th);
                        }
                    }
                } else {
                    final CategorySetting categorySetting2 = new CategorySetting();
                    categorySetting2.setBucketId(i);
                    categorySetting2.setBlocked(z);
                    categorySetting2.setDisposition(i2);
                    if (i != CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
                        categorySetting2.setPending(z2);
                    }
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$applyCategorySetting$1$2
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            realm.m3045v0(CategorySetting.this, new ImportFlag[0]);
                        }
                    });
                }
                Unit unit = Unit.f20447a;
                th = null;
                if (!z2) {
                    Observable<Response<Void>> h0 = ApiWrapper.m6774h0(i, z, i2);
                    if (h0 != null) {
                        Observable<Response<Void>> share = h0.share();
                        share.subscribe(CategoryManagerFragment$applyCategorySetting$2.f12910f, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$applyCategorySetting$3
                            /* renamed from: a */
                            public final void accept(Throwable th3) {
                                CategoryManagerFragment.this.m7303O0(intRef.f20749f, booleanRef.f20744f, intRef2.f20749f);
                            }
                        });
                        this.f12894l.add(share.subscribe(CategoryManagerFragment$applyCategorySetting$4.f12915f, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$applyCategorySetting$5
                            /* renamed from: a */
                            public final void accept(Throwable fail) {
                                CategoryManagerFragment categoryManagerFragment = CategoryManagerFragment.this;
                                Intrinsics.m1831d(fail, "fail");
                                categoryManagerFragment.m7296V0(false, fail);
                            }
                        }));
                        return;
                    }
                    LogUtil.m5632o("CategoryManagerFragment", "setCategory returned null - returning");
                    return;
                }
                LogUtil.m5632o("CategoryManagerFragment", "Category change is pending");
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: b */
    public void mo7294b() {
        Activity L0 = m7306L0();
        if (L0 != null) {
            FragmentManager supportFragmentManager = ((MainActivity) L0).getSupportFragmentManager();
            Intrinsics.m1831d(supportFragmentManager, "(activity as MainActivity).supportFragmentManager");
            NameIDDialogBuilder.f13943m.m6139e(L0).m6160b(supportFragmentManager);
            return;
        }
        LogUtil.m5631p("CategoryManagerFragmentshow", "Cannot show 'Call Care' dialog - activity was not found");
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: c0 */
    public void mo7293c0(int i) {
        LinearLayoutManager linearLayoutManager = this.f12893k;
        if (linearLayoutManager != null) {
            linearLayoutManager.m17650E2(i, 20);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: j */
    public void mo7292j(@NotNull ArrayList<CategoriesAdapter.CategoryListInterface> items, final boolean z) {
        Intrinsics.m1830e(items, "items");
        final FragmentActivity activity = getActivity();
        if (activity == null) {
            LogUtil.m5631p("CategoryManagerFragment#fillCategoryList", "Activity was null, returning");
            return;
        }
        items.add(new CategoriesAdapter.ProtectionListItem(C1517R.string.category_prem_prot_title, z ? C1517R.string.category_prem_prot_desc : C1517R.string.category_prem_prot_desc_inactive, z ? C1517R.string.general_learn_more : C1517R.string.category_prem_prot_upgrade, new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$fillCategoryList$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnalyticsWrapper.m5883E("CategoriesFragment", "premium_more_info");
                if (z) {
                    WidgetUtils.m5272A(activity, BuildUtils.m5851c() ? "https://www.t-mobile.com/apps/scam-shield-app" : "https://www.metrobyt-mobile.com/scam-shield-app");
                } else {
                    CategoryManagerFragment.this.mo7313B(null);
                }
            }
        }));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_nuisance_calls_title, CategorySetting.BucketId.NUISANCE.getValue()));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_telemarketing_calls_title, CategorySetting.BucketId.TELEMARKETING.getValue()));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_survey_calls_title, CategorySetting.BucketId.SURVEY.getValue()));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_political_calls_title, CategorySetting.BucketId.POLITICAL.getValue()));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_charity_calls_title, CategorySetting.BucketId.CHARITY.getValue()));
        items.add(new CategoriesAdapter.CategoryListItem(C1517R.string.onboarding_categories_prison_jail_title, CategorySetting.BucketId.PRISON.getValue()));
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: k0 */
    public void mo7291k0(@NotNull final List<? extends CategoriesAdapter.CategoryListInterface> items, boolean z) {
        Intrinsics.m1830e(items, "items");
        CategoriesAdapter categoriesAdapter = new CategoriesAdapter(items, Boolean.valueOf(z), new CategoriesAdapter.SwitchClickListener() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$addCategoriesToAdapter$1
            @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter.SwitchClickListener
            /* renamed from: a */
            public final void mo7289a(int i, Switch r7, CompoundButton.OnCheckedChangeListener checkListener) {
                Object obj = items.get(i);
                if (obj != null) {
                    CategoriesAdapter.CategoryListItem categoryListItem = (CategoriesAdapter.CategoryListItem) obj;
                    CategoryManagerFragment categoryManagerFragment = CategoryManagerFragment.this;
                    Intrinsics.m1831d(checkListener, "checkListener");
                    categoryManagerFragment.m7302P0(categoryListItem, r7, checkListener);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter.CategoryListItem");
            }
        });
        this.f12891i = categoriesAdapter;
        RecyclerView recyclerView = this.f12895m;
        if (recyclerView != null) {
            recyclerView.setAdapter(categoriesAdapter);
            RecyclerView recyclerView2 = this.f12895m;
            if (recyclerView2 != null) {
                recyclerView2.setHasFixedSize(false);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
                this.f12893k = linearLayoutManager;
                RecyclerView recyclerView3 = this.f12895m;
                if (recyclerView3 != null) {
                    recyclerView3.setLayoutManager(linearLayoutManager);
                } else {
                    Intrinsics.m1814u("categoriesList");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("categoriesList");
                throw null;
            }
        } else {
            Intrinsics.m1814u("categoriesList");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.Settings.categorymanager.CategoryManager.View
    /* renamed from: o0 */
    public void mo7290o0(boolean z) {
        CategoriesAdapter categoriesAdapter = this.f12891i;
        if (categoriesAdapter != null) {
            categoriesAdapter.m7318d(z);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("CategoryManagerFragment#onCreate", "created");
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(C1517R.layout.fragment_categories, viewGroup, false);
        View findViewById = inflate.findViewById(C1517R.C1520id.categories_recycler_view);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.categories_recycler_view)");
        this.f12895m = (RecyclerView) findViewById;
        int value = CategorySetting.BucketId.NONE.getValue();
        Context context = getContext();
        value = value;
        if (context != null) {
            if (context instanceof MainActivity) {
                MainActivity mainActivity = (MainActivity) context;
                this.f12892j = mainActivity.m7593f();
                value = mainActivity.m7564v();
                mainActivity.m7639G0(CategorySetting.BucketId.NONE.getValue());
            } else {
                LogUtil.m5631p("CategoryManagerFragment#onCreateView", "context is not of MainActivity");
            }
            EventManager.m5725a(context, "Category_View_Entered");
        }
        m7304N0().mo7278d(value);
        m7299S0();
        m7300R0();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m7311G0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        RealmResults<TmoUserStatus> realmResults = this.f12889g;
        if (realmResults != null && realmResults.isValid()) {
            realmResults.m2870B();
        }
        RealmResults<LicenseResponseItem> realmResults2 = this.f12890h;
        if (realmResults2 != null && realmResults2.isValid()) {
            realmResults2.m2870B();
        }
        Iterator<Disposable> it = this.f12894l.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        boolean H;
        RealmQuery Q0;
        super.onStart();
        Realm realm = this.f12892j;
        if (realm != null) {
            Intrinsics.m1832c(realm);
            if (!realm.isClosed()) {
                LogUtil.m5643d("CategoryManagerFragmentonStart", "Attaching listeners");
                Realm realm2 = this.f12892j;
                RealmResults<TmoUserStatus> E = (realm2 == null || (Q0 = realm2.m3053Q0(TmoUserStatus.class)) == null) ? null : Q0.m2918E();
                this.f12889g = E;
                if (E != null) {
                    E.m2865v(new RealmChangeListener<RealmResults<TmoUserStatus>>() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$onStart$$inlined$let$lambda$1
                        /* renamed from: b */
                        public final void mo2506a(RealmResults<TmoUserStatus> status) {
                            CategoryManager.Presenter N0;
                            N0 = CategoryManagerFragment.this.m7304N0();
                            Intrinsics.m1831d(status, "status");
                            N0.mo7280b(ExtensionsKt.m5716b(status));
                        }
                    });
                    LogUtil.m5643d("CategoryManagerFragmentonStart", "user status listener attached");
                    m7304N0().mo7280b(ExtensionsKt.m5716b(E));
                }
                H = StringsKt__StringsKt.m1466H("magenta", "metro", false, 2, null);
                if (H) {
                    Realm realm3 = this.f12892j;
                    RealmResults<LicenseResponseItem> realmResults = null;
                    if (realm3 != null) {
                        RealmQuery Q02 = realm3.m3053Q0(LicenseResponseItem.class);
                        realmResults = null;
                        if (Q02 != null) {
                            realmResults = Q02.m2918E();
                        }
                    }
                    this.f12890h = realmResults;
                    if (realmResults != null) {
                        realmResults.m2865v(new RealmChangeListener<RealmResults<LicenseResponseItem>>() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment$onStart$$inlined$let$lambda$2
                            /* renamed from: b */
                            public final void mo2506a(RealmResults<LicenseResponseItem> license) {
                                CategoryManager.Presenter N0;
                                N0 = CategoryManagerFragment.this.m7304N0();
                                Intrinsics.m1831d(license, "license");
                                N0.mo7281a(ExtensionsKt.m5717a(license));
                            }
                        });
                        LogUtil.m5643d("CategoryManagerFragmentonStart", "Metro user status listener attached");
                        m7304N0().mo7281a(ExtensionsKt.m5717a(realmResults));
                    }
                }
            }
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            m7299S0();
            m7301Q0(C1517R.string.con_desc_categories);
            CategoriesAdapter categoriesAdapter = this.f12891i;
            List<CategoriesAdapter.CategoryListInterface> list = null;
            if (categoriesAdapter != null) {
                list = null;
                if (categoriesAdapter != null) {
                    list = categoriesAdapter.m7319c();
                }
            }
            if (list != null) {
                CategoryManager.Presenter N0 = m7304N0();
                Context context = getContext();
                if (context != null) {
                    N0.mo7277e(list, ((MainActivity) context).m7564v());
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
            }
            LogUtil.m5631p("CategoryManagerFragment#setVisible", "category items were null");
        }
    }
}
