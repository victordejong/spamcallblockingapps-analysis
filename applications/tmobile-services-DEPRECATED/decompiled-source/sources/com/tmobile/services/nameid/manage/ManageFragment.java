package com.tmobile.services.nameid.manage;

import android.app.Application;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.manage.ManageTabAdapter;
import com.tmobile.services.nameid.manage.tabs.BlockFragment;
import com.tmobile.services.nameid.manage.tabs.FavoritesFragment;
import com.tmobile.services.nameid.manage.tabs.VoicemailFragment;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ö\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� k2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002klB\u0007¢\u0006\u0004\bj\u0010\u0007J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0007J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\u0016J-\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0007J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0007J\u0019\u0010*\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u0019\u0010,\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b,\u0010+J\u0019\u0010-\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b-\u0010+J\u000f\u0010.\u001a\u00020\u0005H\u0002¢\u0006\u0004\b.\u0010\u0007J\u001d\u00102\u001a\u00020\u00052\f\u00101\u001a\b\u0012\u0004\u0012\u0002000/H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0005H\u0002¢\u0006\u0004\b8\u0010\u0007J\u0017\u0010;\u001a\u00020\u00052\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0007J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000bH\u0016¢\u0006\u0004\b>\u0010\u0016J\u000f\u0010?\u001a\u00020\u0005H\u0016¢\u0006\u0004\b?\u0010\u0007R\u0018\u0010A\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010Q\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010S\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bS\u0010TR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020U\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010IR\u001a\u0010X\u001a\u00060WR\u00020��8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010YR\u001d\u0010_\u001a\u00020Z8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^R\u001d\u0010d\u001a\u00020`8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\ba\u0010\\\u001a\u0004\bb\u0010cR\u001e\u0010f\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010IR\u0018\u0010h\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010i¨\u0006m"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageFragment;", "com/tmobile/services/nameid/manage/Manage$View", "Lcom/tmobile/services/nameid/TabFragmentInterface;", "com/google/android/material/tabs/TabLayout$OnTabSelectedListener", "Landroidx/fragment/app/Fragment;", "", "colorFab", "()V", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "determineLastPageShown", "()Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "getCurrentTab", "()Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "getTabType", "()Lcom/tmobile/services/nameid/MainActivity$Tabs;", "tab", "goToTab", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;)V", "greyOutFab", "hideHeader", "newPage", "logPageChange", "(Lcom/tmobile/services/nameid/NameIDPage$ManageTab;)V", "logUserActivity", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onPause", "onResume", "Lcom/google/android/material/tabs/TabLayout$Tab;", "p0", "onTabReselected", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "onTabSelected", "onTabUnselected", "outputAccessibility", "", "Lcom/tmobile/services/nameid/model/UserPreference;", FirebaseAnalytics.Param.ITEMS, "publishSortedListUpdate", "(Ljava/util/List;)V", "", "headerText", "setHeader", "(I)V", "setTitle", "", "visible", "setVisible", "(Z)V", "showHeader", "showSearch", "showSubscribeModal", "Lcom/tmobile/services/nameid/manage/ManageTabAdapter;", "adapter", "Lcom/tmobile/services/nameid/manage/ManageTabAdapter;", "Lcom/google/android/material/tabs/TabLayout;", "callerSettingTypeTabLayout", "Lcom/google/android/material/tabs/TabLayout;", "Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/model/CallerSetting;", "callerSettings", "Lio/realm/RealmResults;", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "fab", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "Lio/realm/Realm;", "globalRealm", "Lio/realm/Realm;", "Landroid/widget/TextView;", "header", "Landroid/widget/TextView;", "headerBorder", "Landroid/view/View;", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponses", "Lcom/tmobile/services/nameid/manage/ManageFragment$ContactListener;", "listener", "Lcom/tmobile/services/nameid/manage/ManageFragment$ContactListener;", "Lcom/tmobile/services/nameid/manage/ManageViewModel;", "model$delegate", "Lkotlin/Lazy;", "getModel", "()Lcom/tmobile/services/nameid/manage/ManageViewModel;", "model", "Lcom/tmobile/services/nameid/manage/Manage$Presenter;", "presenter$delegate", "getPresenter", "()Lcom/tmobile/services/nameid/manage/Manage$Presenter;", "presenter", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatuses", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "<init>", "Companion", "ContactListener", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageFragment.class */
public final class ManageFragment extends Fragment implements Manage.View, TabFragmentInterface, TabLayout.OnTabSelectedListener {

    /* renamed from: t */
    public static final Companion f13507t = new Companion(null);

    /* renamed from: f */
    private final Lazy f13508f;

    /* renamed from: g */
    private final Lazy f13509g;

    /* renamed from: h */
    private TabLayout f13510h;

    /* renamed from: i */
    private FloatingActionButton f13511i;

    /* renamed from: j */
    private ViewPager f13512j;

    /* renamed from: k */
    private TextView f13513k;

    /* renamed from: l */
    private View f13514l;

    /* renamed from: m */
    private Realm f13515m;

    /* renamed from: n */
    private RealmResults<TmoUserStatus> f13516n;

    /* renamed from: o */
    private RealmResults<LicenseResponseItem> f13517o;

    /* renamed from: p */
    private RealmResults<CallerSetting> f13518p;

    /* renamed from: q */
    private final ContactListener f13519q = new ContactListener();

    /* renamed from: r */
    private ManageTabAdapter f13520r;

    /* renamed from: s */
    private HashMap f13521s;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageFragment$Companion;", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "determineLastPageShown", "()Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final NameIDPage.ManageTab m6537a() {
            String g = PreferenceUtils.m5390g("PREF_LAST_MANAGE_PAGE");
            return Intrinsics.m1834a(g, NameIDPage.ManageTab.BlockTab.f12678b.m7485a()) ? NameIDPage.ManageTab.BlockTab.f12678b : Intrinsics.m1834a(g, NameIDPage.ManageTab.VoicemailTab.f12680b.m7485a()) ? NameIDPage.ManageTab.VoicemailTab.f12680b : Intrinsics.m1834a(g, NameIDPage.ManageTab.FavoritesTab.f12679b.m7485a()) ? NameIDPage.ManageTab.FavoritesTab.f12679b : NameIDPage.ManageTab.BlockTab.f12678b;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageFragment$ContactListener;", "com/tmobile/services/nameid/utility/ContactLookup$ContactUpdateListener", "", "onUpdate", "()V", "<init>", "(Lcom/tmobile/services/nameid/manage/ManageFragment;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageFragment$ContactListener.class */
    private final class ContactListener extends ContactLookup.ContactUpdateListener {
        public ContactListener() {
        }

        @Override // com.tmobile.services.nameid.utility.ContactLookup.ContactUpdateListener
        /* renamed from: b */
        public void mo5819b() {
            RealmResults realmResults = ManageFragment.this.f13518p;
            if (realmResults != null && realmResults.isValid()) {
                Manage.Presenter N0 = ManageFragment.this.m6557N0();
                RealmResults realmResults2 = ManageFragment.this.f13518p;
                N0.mo6530g(realmResults2 != null ? CollectionsKt___CollectionsKt.m2133U(realmResults2) : null);
            }
        }
    }

    public ManageFragment() {
        Lazy a;
        Lazy a2;
        a = LazyKt__LazyJVMKt.m2487a(new ManageFragment$presenter$2(this));
        this.f13508f = a;
        a2 = LazyKt__LazyJVMKt.m2487a(new ManageFragment$model$2(this));
        this.f13509g = a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public final Manage.PNBTab m6560L0() {
        TabLayout tabLayout = this.f13510h;
        return Manage.PNBTab.f13500d.m6568a(tabLayout != null ? tabLayout.getSelectedTabPosition() : 0);
    }

    /* renamed from: M0 */
    private final ManageViewModel m6559M0() {
        return (ManageViewModel) this.f13509g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public final Manage.Presenter m6557N0() {
        return (Manage.Presenter) this.f13508f.getValue();
    }

    /* renamed from: O0 */
    private final void m6555O0() {
        if (getContext() != null) {
            String string = getString(C1517R.string.con_desc_manage);
            Context context = getContext();
            Intrinsics.m1832c(context);
            MainActivity.m7572q0(string, context);
        }
    }

    /* renamed from: P0 */
    private final void m6554P0() {
        MainActivity mainActivity;
        if ((getContext() instanceof MainActivity) && (mainActivity = (MainActivity) getContext()) != null && mainActivity.m7571r(mo6305F0())) {
            mainActivity.m7625N0(C1517R.string.fragment_manage_title);
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    @NotNull
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.MANAGE;
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: G */
    public void mo6567G() {
        TextView textView = this.f13513k;
        if (textView != null) {
            textView.setVisibility(8);
            View view = this.f13514l;
            if (view != null) {
                view.setVisibility(8);
            } else {
                Intrinsics.m1814u("headerBorder");
                throw null;
            }
        } else {
            Intrinsics.m1814u("header");
            throw null;
        }
    }

    /* renamed from: G0 */
    public void m6566G0() {
        HashMap hashMap = this.f13521s;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: J */
    public void mo6563J() {
        TextView textView = this.f13513k;
        if (textView != null) {
            textView.setVisibility(0);
            View view = this.f13514l;
            if (view != null) {
                view.setVisibility(0);
            } else {
                Intrinsics.m1814u("headerBorder");
                throw null;
            }
        } else {
            Intrinsics.m1814u("header");
            throw null;
        }
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    /* renamed from: N */
    public void mo6558N(@Nullable TabLayout.Tab tab) {
        if (tab != null && isVisible()) {
            m6557N0().mo6532e(tab.m8942f());
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: O */
    public void mo6556O(@NotNull Manage.PNBTab tab) {
        Intrinsics.m1830e(tab, "tab");
        AnalyticsWrapper.m5883E(ManageFragment.class.getSimpleName(), tab.m6571b());
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: S */
    public void mo6553S(@NotNull Manage.PNBTab tab) {
        Intrinsics.m1830e(tab, "tab");
        LogUtil.m5643d("ManageFragment", "goToTab -> " + tab.m6571b());
        ViewPager viewPager = this.f13512j;
        if (viewPager != null) {
            viewPager.setCurrentItem(tab.m6569d(), false);
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: X */
    public void mo6552X(int i) {
        TextView textView = this.f13513k;
        if (textView != null) {
            textView.setText(i);
        } else {
            Intrinsics.m1814u("header");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    @NotNull
    /* renamed from: f0 */
    public NameIDPage.ManageTab mo6551f0() {
        return f13507t.m6537a();
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: h */
    public void mo6550h(@NotNull List<? extends UserPreference> items) {
        Intrinsics.m1830e(items, "items");
        m6559M0().m6515g(items);
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: i0 */
    public void mo6549i0() {
        WidgetUtils.m5235f0(getActivity(), getChildFragmentManager(), null, null);
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: l0 */
    public void mo6548l0() {
        FloatingActionButton floatingActionButton;
        if (getContext() != null && (floatingActionButton = this.f13511i) != null) {
            Context context = getContext();
            Intrinsics.m1832c(context);
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.m19675d(context, C1517R.C1518color.grey_12)));
        }
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: n */
    public void mo6547n() {
        FloatingActionButton floatingActionButton;
        if (getContext() != null && (floatingActionButton = this.f13511i) != null) {
            Context context = getContext();
            Intrinsics.m1832c(context);
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.m19675d(context, C1517R.C1518color.fab_color)));
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        LogUtil.m5643d("ManageFragmentonCreateView", "called");
        View inflate = inflater.inflate(C1517R.layout.fragment_manage, viewGroup, false);
        this.f13510h = (TabLayout) inflate.findViewById(C1517R.C1520id.manage_caller_setting_type_tab_layout);
        this.f13511i = (FloatingActionButton) inflate.findViewById(C1517R.C1520id.manage_fab);
        this.f13512j = (ViewPager) inflate.findViewById(C1517R.C1520id.manage_viewpager);
        View findViewById = inflate.findViewById(C1517R.C1520id.manage_caller_setting_type_header);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.m…ller_setting_type_header)");
        this.f13513k = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(C1517R.C1520id.manage_caller_setting_type_header_border);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.m…tting_type_header_border)");
        this.f13514l = findViewById2;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
        ManageTabAdapter manageTabAdapter = new ManageTabAdapter(childFragmentManager);
        this.f13520r = manageTabAdapter;
        if (manageTabAdapter != null) {
            FavoritesFragment favoritesFragment = new FavoritesFragment();
            String string = getString(C1517R.string.manage_allow_tab_title);
            Intrinsics.m1831d(string, "getString(R.string.manage_allow_tab_title)");
            manageTabAdapter.m6520a(new ManageTabAdapter.ManageTabInfo(favoritesFragment, 0, string));
        }
        ManageTabAdapter manageTabAdapter2 = this.f13520r;
        if (manageTabAdapter2 != null) {
            BlockFragment blockFragment = new BlockFragment();
            String string2 = getString(C1517R.string.manage_block_tab_title);
            Intrinsics.m1831d(string2, "getString(R.string.manage_block_tab_title)");
            manageTabAdapter2.m6520a(new ManageTabAdapter.ManageTabInfo(blockFragment, 1, string2));
        }
        ManageTabAdapter manageTabAdapter3 = this.f13520r;
        if (manageTabAdapter3 != null) {
            VoicemailFragment voicemailFragment = new VoicemailFragment();
            String string3 = getString(C1517R.string.manage_voicemail_tab_title);
            Intrinsics.m1831d(string3, "getString(R.string.manage_voicemail_tab_title)");
            manageTabAdapter3.m6520a(new ManageTabAdapter.ManageTabInfo(voicemailFragment, 2, string3));
        }
        ViewPager viewPager = this.f13512j;
        if (viewPager != null) {
            viewPager.setAdapter(this.f13520r);
        }
        TabLayout tabLayout = this.f13510h;
        if (tabLayout != null) {
            tabLayout.setupWithViewPager(this.f13512j);
        }
        TabLayout tabLayout2 = this.f13510h;
        if (tabLayout2 != null) {
            tabLayout2.m8984c(this);
        }
        FloatingActionButton floatingActionButton = this.f13511i;
        if (floatingActionButton != null) {
            floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.manage.ManageFragment$onCreateView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Manage.PNBTab L0;
                    TabLayout tabLayout3;
                    String simpleName = ManageFragment.this.getClass().getSimpleName();
                    StringBuilder sb = new StringBuilder();
                    L0 = ManageFragment.this.m6560L0();
                    sb.append(L0.m6571b());
                    sb.append(" ADD");
                    AnalyticsWrapper.m5883E(simpleName, sb.toString());
                    if (!WidgetUtils.m5241c0(ManageFragment.this.getContext(), ManageFragment.this.getChildFragmentManager())) {
                        Manage.Presenter N0 = ManageFragment.this.m6557N0();
                        tabLayout3 = ManageFragment.this.f13510h;
                        N0.mo6534c(tabLayout3 != null ? tabLayout3.getSelectedTabPosition() : 0);
                    }
                }
            });
        }
        if (getContext() != null) {
            Context context = getContext();
            if (context != null) {
                this.f13515m = ((MainActivity) context).m7593f();
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
            }
        }
        m6554P0();
        m6557N0().mo6531f();
        LogUtil.m5639h("ManageFragmentonCreateView", "view created");
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m6566G0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        RealmResults<CallerSetting> realmResults;
        RealmResults<LicenseResponseItem> realmResults2;
        RealmResults<TmoUserStatus> realmResults3;
        super.onPause();
        RealmResults<TmoUserStatus> realmResults4 = this.f13516n;
        if (realmResults4 != null) {
            Intrinsics.m1832c(realmResults4);
            if (realmResults4.isValid() && (realmResults3 = this.f13516n) != null) {
                realmResults3.m2870B();
            }
        }
        RealmResults<LicenseResponseItem> realmResults5 = this.f13517o;
        if (realmResults5 != null) {
            Intrinsics.m1832c(realmResults5);
            if (realmResults5.isValid() && (realmResults2 = this.f13517o) != null) {
                realmResults2.m2870B();
            }
        }
        RealmResults<CallerSetting> realmResults6 = this.f13518p;
        if (realmResults6 != null) {
            Intrinsics.m1832c(realmResults6);
            if (realmResults6.isValid() && (realmResults = this.f13518p) != null) {
                realmResults.m2870B();
            }
        }
        ContactLookup.m5824d().m5821g(this.f13519q);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x014e, code lost:
        if (r6 != null) goto L_0x0158;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.manage.ManageFragment.onResume():void");
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: q */
    public void mo6546q(@NotNull NameIDPage.ManageTab newPage) {
        Intrinsics.m1830e(newPage, "newPage");
        LogUtil.m5643d("ManageFragmentonTabSelected", "got tab change " + newPage);
        FragmentActivity activity = getActivity();
        Application application = activity != null ? activity.getApplication() : null;
        if (application != null) {
            ((MainApplication) application).m7551E(getActivity(), newPage);
            PreferenceUtils.m5383n("PREF_LAST_MANAGE_PAGE", newPage.m7485a());
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainApplication");
    }

    @Override // com.tmobile.services.nameid.manage.Manage.View
    /* renamed from: s */
    public void mo6545s(@NotNull Manage.PNBTab tab) {
        Intrinsics.m1830e(tab, "tab");
        Context context = getContext();
        if (context != null) {
            ((MainActivity) context).m7605X0(tab, Manage.ActivityType.CALLS);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        LogUtil.m5643d("ManageFragment", "setVisible -> " + z);
        if (z) {
            m6554P0();
            m6555O0();
            Context context = getContext();
            if (context != null) {
                ((MainActivity) context).m7639G0(-1);
                m6557N0().mo6531f();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
        }
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    /* renamed from: t */
    public void mo6544t(@Nullable TabLayout.Tab tab) {
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    /* renamed from: u0 */
    public void mo6543u0(@Nullable TabLayout.Tab tab) {
    }
}
