package com.tmobile.services.nameid.manage.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.manage.ManageViewModel;
import com.tmobile.services.nameid.manage.tabs.ManageTab;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bE\u0010\u000fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ-\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u000fJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u000fJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u001d\u0010\u001f\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u000fJ\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010\u0007J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0003H\u0002¢\u0006\u0004\b$\u0010\u0007J\u001d\u0010%\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\b%\u0010 R\u0016\u0010(\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00102\u001a\u00020/8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0016\u00104\u001a\u00020/8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b3\u00101R\u0016\u00106\u001a\u00020/8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b5\u00101R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u001d\u0010A\u001a\u00020=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u00109\u001a\u0004\b?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;", "com/tmobile/services/nameid/manage/tabs/ManageTab$View", "Landroidx/fragment/app/Fragment;", "", "e164Number", "", "doLookup", "(Ljava/lang/String;)V", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getManageAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "getManageTabType", "()Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "hideEmptyListView", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onStart", "onStop", "", "Lcom/tmobile/services/nameid/model/UserPreference;", "list", "setupList", "(Ljava/util/List;)V", "showEmptyListView", "startCallDetailsActivity", "uuid", "startCallDetailsActivityUuid", "updateList", "getLOG_TAG", "()Ljava/lang/String;", "LOG_TAG", "Lcom/tmobile/services/nameid/manage/tabs/CallTypeAdapter;", "callTypeAdapter", "Lcom/tmobile/services/nameid/manage/tabs/CallTypeAdapter;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "emptyContainer", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "getEmptyHeaderRes", "()I", "emptyHeaderRes", "getEmptyImageRes", "emptyImageRes", "getEmptySubtextRes", "emptySubtextRes", "Lcom/tmobile/services/nameid/manage/ManageViewModel;", "model$delegate", "Lkotlin/Lazy;", "getModel", "()Lcom/tmobile/services/nameid/manage/ManageViewModel;", "model", "Lcom/tmobile/services/nameid/manage/tabs/ManageTabPresenter;", "presenter$delegate", "getPresenter", "()Lcom/tmobile/services/nameid/manage/tabs/ManageTabPresenter;", "presenter", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/ManageTabFragment.class */
public abstract class ManageTabFragment extends Fragment implements ManageTab.View {

    /* renamed from: f */
    private final Lazy f13573f;

    /* renamed from: g */
    private final Lazy f13574g;

    /* renamed from: h */
    private RecyclerView f13575h;

    /* renamed from: i */
    private ConstraintLayout f13576i;

    /* renamed from: j */
    private CallTypeAdapter f13577j;

    /* renamed from: k */
    private HashMap f13578k;

    public ManageTabFragment() {
        Lazy a;
        Lazy a2;
        a = LazyKt__LazyJVMKt.m2487a(new ManageTabFragment$model$2(this));
        this.f13573f = a;
        a2 = LazyKt__LazyJVMKt.m2487a(new ManageTabFragment$presenter$2(this));
        this.f13574g = a2;
    }

    /* renamed from: O0 */
    private final ManageViewModel m6496O0() {
        return (ManageViewModel) this.f13573f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public final ManageTabPresenter m6495P0() {
        return (ManageTabPresenter) this.f13574g.getValue();
    }

    /* renamed from: Q0 */
    private final void m6494Q0(String str) {
        Context context = getContext();
        if (context != null) {
            ((MainActivity) context).m7646D(false, str);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: B0 */
    public void mo6500B0(@NotNull List<? extends UserPreference> list) {
        Intrinsics.m1830e(list, "list");
        LogUtil.m5643d(mo6473M0() + "#setupList", "Setting up list with " + list.size() + " items");
        this.f13577j = new CallTypeAdapter(list, new RecyclerViewClickListener() { // from class: com.tmobile.services.nameid.manage.tabs.ManageTabFragment$setupList$1
            @Override // com.tmobile.services.nameid.utility.RecyclerViewClickListener
            /* renamed from: a */
            public final void mo5380a(int i) {
                ManageTabPresenter P0;
                CallTypeAdapter callTypeAdapter;
                List<UserPreference> h;
                P0 = ManageTabFragment.this.m6495P0();
                callTypeAdapter = ManageTabFragment.this.f13577j;
                P0.m6481b((callTypeAdapter == null || (h = callTypeAdapter.m6508h()) == null) ? null : h.get(i - 1));
            }
        }, Intrinsics.m1834a(Manage.PNBTab.Block.f13504e, mo6472N0()));
        RecyclerView recyclerView = this.f13575h;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        RecyclerView recyclerView2 = this.f13575h;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.f13577j);
        }
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: F */
    public void mo6499F() {
        LogUtil.m5643d(mo6473M0() + "hideEmptyListView", "Hiding empty list view");
        RecyclerView recyclerView = this.f13575h;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
        ConstraintLayout constraintLayout = this.f13576i;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    /* renamed from: G0 */
    public void mo6477G0() {
        HashMap hashMap = this.f13578k;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: J0 */
    public abstract int mo6476J0();

    /* renamed from: K0 */
    public abstract int mo6475K0();

    /* renamed from: L0 */
    public abstract int mo6474L0();

    @NotNull
    /* renamed from: M0 */
    public abstract String mo6473M0();

    @NotNull
    /* renamed from: N0 */
    public abstract Manage.PNBTab mo6472N0();

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: W */
    public void mo6493W(@NotNull List<? extends UserPreference> list) {
        Intrinsics.m1830e(list, "list");
        LogUtil.m5643d(mo6473M0() + "#updateList", "updating list with " + list.size() + " items");
        CallTypeAdapter callTypeAdapter = this.f13577j;
        if (callTypeAdapter != null) {
            callTypeAdapter.m6503m(list);
        }
        CallTypeAdapter callTypeAdapter2 = this.f13577j;
        if (callTypeAdapter2 != null) {
            callTypeAdapter2.notifyDataSetChanged();
        }
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    @NotNull
    /* renamed from: b0 */
    public CallerSetting.Action mo6492b0() {
        return mo6472N0().m6572a();
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: o */
    public void mo6491o() {
        LogUtil.m5643d(mo6473M0() + "showEmptyListView", "showing empty list view");
        RecyclerView recyclerView = this.f13575h;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        ConstraintLayout constraintLayout = this.f13576i;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        TextView textView;
        TextView textView2;
        AppCompatImageView appCompatImageView;
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(C1517R.layout.fragment_manage_page, viewGroup, false);
        this.f13575h = (RecyclerView) inflate.findViewById(C1517R.C1520id.manage_page_recyclerview);
        this.f13576i = (ConstraintLayout) inflate.findViewById(C1517R.C1520id.manage_page_empty_container);
        Context context = getContext();
        if (context != null) {
            Drawable drawable = context.getDrawable(mo6475K0());
            if (!(inflate == null || (appCompatImageView = (AppCompatImageView) inflate.findViewById(C1517R.C1520id.manage_page_empty_list_icon)) == null)) {
                appCompatImageView.setImageDrawable(drawable);
            }
            if (!(inflate == null || (textView2 = (TextView) inflate.findViewById(C1517R.C1520id.manage_page_empty_list_text)) == null)) {
                textView2.setText(context.getString(mo6476J0()));
            }
            if (!(inflate == null || (textView = (TextView) inflate.findViewById(C1517R.C1520id.manage_page_empty_list_sub_text)) == null)) {
                textView.setText(context.getString(mo6474L0()));
            }
        }
        LogUtil.m5639h(mo6473M0() + "#onCreateView", "created view " + mo6472N0().m6571b());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo6477G0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LogUtil.m5643d(mo6473M0() + "onresume", "onResume called " + mo6472N0().m6571b());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m6496O0().m6516f().m18199h(this, new Observer<List<? extends UserPreference>>() { // from class: com.tmobile.services.nameid.manage.tabs.ManageTabFragment$onStart$1
            /* renamed from: b */
            public final void mo6485a(List<? extends UserPreference> sortedPNBList) {
                ManageTabPresenter P0;
                P0 = ManageTabFragment.this.m6495P0();
                Intrinsics.m1831d(sortedPNBList, "sortedPNBList");
                P0.m6480c(sortedPNBList);
            }
        });
        ManageTabPresenter P0 = m6495P0();
        List<UserPreference> e = m6496O0().m6516f().m18202e();
        if (e == null) {
            e = CollectionsKt__CollectionsKt.m2175f();
        }
        P0.m6479d(e);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        m6496O0().m6516f().m18197n(this);
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: w */
    public void mo6490w(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        String m = WidgetUtils.m5222m(e164Number);
        Intrinsics.m1831d(m, "WidgetUtils.getCallerUui…romE164Number(e164Number)");
        if (m.length() == 0) {
            LogUtil.m5632o(mo6473M0(), "Wanted to start call details but UUID was empty");
        } else {
            m6494Q0(m);
        }
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTab.View
    /* renamed from: y0 */
    public void mo6489y0(@NotNull final String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        if (WidgetUtils.m5268E(e164Number)) {
            String M0 = mo6473M0();
            LogUtil.m5632o(M0, "Wanted to do lookup, but number, '" + e164Number + "' is unknown");
            return;
        }
        Observable<Caller> i = ApiWrapper.m6773i(e164Number, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
        if (i != null) {
            i.subscribe(new Consumer<Caller>() { // from class: com.tmobile.services.nameid.manage.tabs.ManageTabFragment$doLookup$1
                /* renamed from: a */
                public final void accept(Caller caller) {
                    String M02 = ManageTabFragment.this.mo6473M0();
                    LogUtil.m5632o(M02, "Got lookup for " + e164Number);
                }
            }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.manage.tabs.ManageTabFragment$doLookup$2
                /* renamed from: a */
                public final void accept(Throwable th) {
                    String M02 = ManageTabFragment.this.mo6473M0();
                    LogUtil.m5641f(M02, "Lookup failed for " + e164Number, th);
                }
            });
        }
    }
}
