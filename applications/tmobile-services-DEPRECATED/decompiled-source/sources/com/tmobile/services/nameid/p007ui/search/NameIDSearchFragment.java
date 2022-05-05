package com.tmobile.services.nameid.p007ui.search;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchItem;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDProgressDialog;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.WidgetUtils;
import com.tmobile.tmoid.agent.utils.Utils;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��ó\u0001\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\b*\u0003c\u0089\u0001\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\b\u008f\u0001\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J/\u0010\u001a\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001d\"\u0004\b��\u0010\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010!\u001a\b\u0012\u0004\u0012\u00028��0\u001d\"\u0004\b��\u0010\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001dH\u0016¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\"\u0010\u0012J-\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010\u0006J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010\u0006J\u000f\u0010.\u001a\u00020\u0004H\u0016¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0004H\u0002¢\u0006\u0004\b/\u0010\u0006J\u000f\u00100\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\u0006J/\u00105\u001a\u00020\u00042\n\b\u0001\u00102\u001a\u0004\u0018\u0001012\b\b\u0002\u00103\u001a\u00020\u00102\b\b\u0002\u00104\u001a\u00020\u0010H\u0002¢\u0006\u0004\b5\u00106J\u001b\u00108\u001a\u00020\u00042\n\b\u0001\u00107\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0004\b8\u00109J\u0019\u0010<\u001a\u00020\u00042\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0010H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0010H\u0016¢\u0006\u0004\bA\u0010\u0012J\u000f\u0010B\u001a\u00020\u0004H\u0016¢\u0006\u0004\bB\u0010\u0006J\u000f\u0010C\u001a\u00020\u0004H\u0016¢\u0006\u0004\bC\u0010\u0006J\u0019\u0010E\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0004H\u0016¢\u0006\u0004\bG\u0010\u0006J\u000f\u0010H\u001a\u00020\u0004H\u0016¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010I\u001a\u00020\u0004H\u0016¢\u0006\u0004\bI\u0010\u0006J\u000f\u0010J\u001a\u00020\u0004H\u0016¢\u0006\u0004\bJ\u0010\u0006J\u000f\u0010K\u001a\u00020\u0004H\u0016¢\u0006\u0004\bK\u0010\u0006J\u000f\u0010L\u001a\u00020\u0010H\u0016¢\u0006\u0004\bL\u0010\u0012J\u000f\u0010M\u001a\u00020\u0004H\u0016¢\u0006\u0004\bM\u0010\u0006J\u0017\u0010O\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u0010H\u0016¢\u0006\u0004\bO\u0010@J)\u0010S\u001a\u00020\u00042\u0018\u0010R\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020Q0P0\u001dH\u0016¢\u0006\u0004\bS\u0010TJ\u001f\u0010W\u001a\u00020\u00042\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\u001d\u0010\\\u001a\u00020\u00042\f\u0010[\u001a\b\u0012\u0004\u0012\u00020Z0YH\u0016¢\u0006\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020\f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010a\u001a\u00020`8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010d\u001a\u00020c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010eR\u0016\u0010g\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010j\u001a\u00020i8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010m\u001a\u00020l8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010o\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010r\u001a\u00020q8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010t\u001a\u0002018\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\bt\u0010uR\u0016\u0010y\u001a\u00020v8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bw\u0010xR\u001d\u0010\u007f\u001a\u00020z8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~R\u001a\u0010\u0081\u0001\u001a\u00030\u0080\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0084\u0001\u001a\u00030\u0083\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u0087\u0001\u001a\u00030\u0086\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u008a\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0019\u0010\u008c\u0001\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u008e\u0001\u001a\u00020f8\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010h¨\u0006\u0090\u0001"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchFragment;", "com/tmobile/services/nameid/ui/search/NameIDSearch$View", "com/tmobile/services/nameid/MainActivity$MainActivitySearchHandler", "Landroidx/fragment/app/Fragment;", "", "collapseView", "()V", "dismissKeyboard", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "getQueryObservable", "()Lio/reactivex/subjects/BehaviorSubject;", "", "e164Number", "goToCallerDetails", "(Ljava/lang/String;)V", "", "isExpanded", "()Z", "isManageSearch", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "type", "Lcom/tmobile/services/nameid/model/Caller;", "caller", "manageFromSearch", "(Ljava/lang/String;Lcom/tmobile/services/nameid/model/CallerSetting$Action;Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;Lcom/tmobile/services/nameid/model/Caller;)V", "T", "Lio/reactivex/Observable;", "obs", "observeOnMainThread", "(Lio/reactivex/Observable;)Lio/reactivex/Observable;", "observeOnNewThread", "onBackPressed", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onDestroy", "onResume", "onStop", "requestContactPermission", "resetSearch", "", Constants.ScionAnalytics.PARAM_LABEL, "active", "allCaps", "setActionButtonText", "(Ljava/lang/Integer;ZZ)V", "desc", "setDescriptionText", "(Ljava/lang/Integer;)V", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;", "info", "setFabSearchInfo", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;)V", "recentOnly", "setIsRecentOnly", "(Z)V", "shouldRequestContactPermission", "showCompleteSearchString", "showContactPermissionMissing", Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION, "showDisplay", "(Ljava/lang/Boolean;)V", "showEmptySearchString", "showInactiveUserLanding", "showInactiveUserUpgrade", "showIncompleteSearchString", "showInvalidNumber", "showNoNetwork", "showPendingDialog", "isTrial", "showPendingUser", "Lkotlin/Pair;", "", "observable", "showSearchingDialog", "(Lio/reactivex/Observable;)V", "Lkotlin/Function0;", "listener", "showSubscribeDialog", "(Lkotlin/Function0;)V", "", "Lcom/tmobile/services/nameid/model/SearchItem;", FirebaseAnalytics.Param.ITEMS, "showSuggestionList", "(Ljava/util/List;)V", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "actionButton", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "com/tmobile/services/nameid/ui/search/NameIDSearchFragment$adapterClickListener$1", "adapterClickListener", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchFragment$adapterClickListener$1;", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "description", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "Landroid/widget/LinearLayout;", "displayView", "Landroid/widget/LinearLayout;", "Lkotlinx/coroutines/CoroutineScope;", "fragmentScope", "Lkotlinx/coroutines/CoroutineScope;", "hasDialog", "Z", "Landroid/widget/ImageView;", "icon", "Landroid/widget/ImageView;", "layoutResId", "I", "Lcom/tmobile/services/nameid/MainActivity;", "getMainActivity", "()Lcom/tmobile/services/nameid/MainActivity;", "mainActivity", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "getPresenter", "()Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter;", "presenter", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter;", "recyclerAdapter", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchAdapter;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchBar;", "searchBar", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchBar;", "com/tmobile/services/nameid/ui/search/NameIDSearchFragment$searchBarExpandListener$1", "searchBarExpandListener", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchFragment$searchBarExpandListener$1;", "shadowView", "Landroid/view/View;", "title", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchFragment */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchFragment.class */
public final class NameIDSearchFragment extends Fragment implements NameIDSearch.View, MainActivity.MainActivitySearchHandler {

    /* renamed from: g */
    private final Lazy f14175g;

    /* renamed from: i */
    private boolean f14177i;

    /* renamed from: j */
    private CoroutineScope f14178j;

    /* renamed from: k */
    private RecyclerView f14179k;

    /* renamed from: l */
    private NameIDSearchAdapter f14180l;

    /* renamed from: m */
    private LinearLayout f14181m;

    /* renamed from: n */
    private ImageView f14182n;

    /* renamed from: o */
    private NameIDTextView f14183o;

    /* renamed from: p */
    private NameIDTextView f14184p;

    /* renamed from: q */
    private NameIDButton f14185q;

    /* renamed from: r */
    private NameIDSearchBar f14186r;

    /* renamed from: s */
    private View f14187s;

    /* renamed from: v */
    private HashMap f14190v;

    /* renamed from: f */
    private final String f14174f = "NameIdSearchFragment#";

    /* renamed from: h */
    private final int f14176h = C1517R.layout.view_search;

    /* renamed from: t */
    private final NameIDSearchFragment$adapterClickListener$1 f14188t = new NameIDSearch.AdapterClickListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$adapterClickListener$1
        @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.AdapterClickListener
        /* renamed from: a */
        public void mo5964a(@NotNull SearchItem item) {
            NameIDSearchPresenter Q0;
            Intrinsics.m1830e(item, "item");
            Q0 = NameIDSearchFragment.this.m5991Q0();
            Q0.m5917v(item);
        }
    };

    /* renamed from: u */
    private final NameIDSearchFragment$searchBarExpandListener$1 f14189u = new NameIDSearch.OnSearchExpandListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$searchBarExpandListener$1
        @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.OnSearchExpandListener
        /* renamed from: e */
        public void mo5961e() {
            String str;
            NameIDSearchPresenter Q0;
            MainActivity P0;
            str = NameIDSearchFragment.this.f14174f;
            LogUtil.m5643d(str, "received event for collapsed search");
            Q0 = NameIDSearchFragment.this.m5991Q0();
            Q0.m5921r();
            NameIDSearchFragment.this.m5982W0(null);
            P0 = NameIDSearchFragment.this.m5992P0();
            P0.mo5961e();
        }

        @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.OnSearchExpandListener
        /* renamed from: h */
        public void mo5960h() {
            String str;
            MainActivity P0;
            NameIDSearchPresenter Q0;
            str = NameIDSearchFragment.this.f14174f;
            LogUtil.m5643d(str, "received event for expanded search");
            P0 = NameIDSearchFragment.this.m5992P0();
            P0.mo5960h();
            Q0 = NameIDSearchFragment.this.m5991Q0();
            Q0.m5920s();
        }
    };

    /* JADX WARN: Type inference failed for: r1v4, types: [com.tmobile.services.nameid.ui.search.NameIDSearchFragment$adapterClickListener$1] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.tmobile.services.nameid.ui.search.NameIDSearchFragment$searchBarExpandListener$1] */
    public NameIDSearchFragment() {
        Lazy a;
        a = LazyKt__LazyJVMKt.m2487a(new NameIDSearchFragment$presenter$2(this));
        this.f14175g = a;
    }

    /* renamed from: H0 */
    public static final /* synthetic */ CoroutineScope m6002H0(NameIDSearchFragment nameIDSearchFragment) {
        CoroutineScope coroutineScope = nameIDSearchFragment.f14178j;
        if (coroutineScope != null) {
            return coroutineScope;
        }
        Intrinsics.m1814u("fragmentScope");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public final MainActivity m5992P0() {
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            return (MainActivity) activity;
        }
        throw new IllegalStateException("Not attached to MainActivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q0 */
    public final NameIDSearchPresenter m5991Q0() {
        return (NameIDSearchPresenter) this.f14175g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S0 */
    public final void m5988S0() {
        MainActivity P0 = m5992P0();
        if (Build.VERSION.SDK_INT >= 23) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", Utils.m5072e(P0), null));
            startActivityForResult(intent, 1);
        }
    }

    /* renamed from: T0 */
    private final void m5986T0(@StringRes Integer num, boolean z, boolean z2) {
        if (num == null) {
            NameIDButton nameIDButton = this.f14185q;
            if (nameIDButton != null) {
                nameIDButton.setVisibility(8);
            } else {
                Intrinsics.m1814u("actionButton");
                throw null;
            }
        } else {
            NameIDButton nameIDButton2 = this.f14185q;
            if (nameIDButton2 != null) {
                nameIDButton2.setText(num.intValue());
                NameIDButton nameIDButton3 = this.f14185q;
                if (nameIDButton3 != null) {
                    nameIDButton3.setAllCaps(z2);
                    if (z) {
                        NameIDButton nameIDButton4 = this.f14185q;
                        if (nameIDButton4 != null) {
                            nameIDButton4.setVisibility(0);
                            NameIDButton nameIDButton5 = this.f14185q;
                            if (nameIDButton5 != null) {
                                nameIDButton5.setBackgroundTintList(getResources().getColorStateList(C1517R.C1518color.magenta_or_royal_purple));
                            } else {
                                Intrinsics.m1814u("actionButton");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("actionButton");
                            throw null;
                        }
                    } else if (!z) {
                        NameIDButton nameIDButton6 = this.f14185q;
                        if (nameIDButton6 != null) {
                            nameIDButton6.setVisibility(0);
                            NameIDButton nameIDButton7 = this.f14185q;
                            if (nameIDButton7 != null) {
                                nameIDButton7.setBackgroundTintList(getResources().getColorStateList(C1517R.C1518color.pale_gray));
                            } else {
                                Intrinsics.m1814u("actionButton");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("actionButton");
                            throw null;
                        }
                    }
                } else {
                    Intrinsics.m1814u("actionButton");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("actionButton");
                throw null;
            }
        }
    }

    /* renamed from: U0 */
    static /* synthetic */ void m5984U0(NameIDSearchFragment nameIDSearchFragment, Integer num, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        nameIDSearchFragment.m5986T0(num, z, z2);
    }

    /* renamed from: V0 */
    private final void m5983V0(@StringRes Integer num) {
        if (num != null) {
            NameIDTextView nameIDTextView = this.f14184p;
            if (nameIDTextView != null) {
                nameIDTextView.setVisibility(0);
                NameIDTextView nameIDTextView2 = this.f14184p;
                if (nameIDTextView2 != null) {
                    nameIDTextView2.setText(num.intValue());
                } else {
                    Intrinsics.m1814u("description");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("description");
                throw null;
            }
        } else {
            NameIDTextView nameIDTextView3 = this.f14184p;
            if (nameIDTextView3 != null) {
                nameIDTextView3.setVisibility(8);
            } else {
                Intrinsics.m1814u("description");
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W0 */
    public final void m5982W0(Boolean bool) {
        int i = 0;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        boolean z = true;
        boolean booleanValue2 = bool != null ? bool.booleanValue() : true;
        if (bool == null) {
            z = false;
        }
        LinearLayout linearLayout = this.f14181m;
        if (linearLayout != null) {
            linearLayout.setVisibility(booleanValue ? 0 : 8);
            RecyclerView recyclerView = this.f14179k;
            if (recyclerView != null) {
                recyclerView.setVisibility(booleanValue2 ^ true ? 0 : 8);
                View view = this.f14187s;
                if (view != null) {
                    if (!z) {
                        i = 8;
                    }
                    view.setVisibility(i);
                    return;
                }
                Intrinsics.m1814u("shadowView");
                throw null;
            }
            Intrinsics.m1814u("recyclerView");
            throw null;
        }
        Intrinsics.m1814u("displayView");
        throw null;
    }

    @Override // com.tmobile.services.nameid.MainActivity.MainActivitySearchHandler
    /* renamed from: A0 */
    public void mo6007A0() {
        NameIDSearchBar nameIDSearchBar = this.f14186r;
        if (nameIDSearchBar != null) {
            nameIDSearchBar.m6010h();
        } else {
            Intrinsics.m1814u("searchBar");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: C */
    public void mo6006C() {
        NameIDDialogBuilder i = NameIDDialogBuilder.f13943m.m6135i();
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
        i.m6160b(childFragmentManager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: D0 */
    public void mo6005D0(@Nullable final Function0<Unit> function0) {
        MainActivity P0 = m5992P0();
        WidgetUtils.SubscribeFromDialogListener subscribeFromDialogListener = function0;
        if (function0 != 0) {
            subscribeFromDialogListener = new WidgetUtils.SubscribeFromDialogListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$sam$com_tmobile_services_nameid_utility_WidgetUtils_SubscribeFromDialogListener$0
                @Override // com.tmobile.services.nameid.utility.WidgetUtils.SubscribeFromDialogListener
                /* renamed from: a */
                public final /* synthetic */ void mo5174a() {
                    Intrinsics.m1831d(Function0.this.invoke(), "invoke(...)");
                }
            };
        }
        P0.m7603Y0(subscribeFromDialogListener);
        Unit unit = Unit.f20447a;
        LogUtil.m5639h(this.f14174f, "Showing subscribe dialog");
    }

    /* renamed from: G0 */
    public void m6004G0() {
        HashMap hashMap = this.f14190v;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: H */
    public void mo6003H() {
        if (Build.VERSION.SDK_INT >= 23) {
            FragmentActivity activity = getActivity();
            LifecycleCoroutineScope a = activity != null ? LifecycleOwnerKt.m18232a(activity) : null;
            if (a != null) {
                BuildersKt__Builders_commonKt.m1370b(a, null, null, new NameIDSearchFragment$showContactPermissionMissing$1(this, null), 3, null);
            }
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: K */
    public boolean mo5999K() {
        return !m5992P0().m7624O();
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    @NotNull
    /* renamed from: P */
    public <T> Observable<T> mo5993P(@NotNull Observable<T> obs) {
        Intrinsics.m1830e(obs, "obs");
        Observable<T> observeOn = obs.observeOn(Schedulers.m3238c());
        Intrinsics.m1831d(observeOn, "obs.observeOn(Schedulers.single())");
        return observeOn;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: R */
    public void mo5990R(@NotNull List<? extends SearchItem> items) {
        Intrinsics.m1830e(items, "items");
        m5982W0(Boolean.FALSE);
        NameIDSearchAdapter nameIDSearchAdapter = this.f14180l;
        if (nameIDSearchAdapter != null) {
            nameIDSearchAdapter.m6026m(items);
        } else {
            Intrinsics.m1814u("recyclerAdapter");
            throw null;
        }
    }

    @NotNull
    /* renamed from: R0 */
    public BehaviorSubject<NameIDSearch.Query> mo5967w0() {
        NameIDSearchBar nameIDSearchBar = this.f14186r;
        if (nameIDSearchBar != null) {
            return nameIDSearchBar.getQueryObservable();
        }
        Intrinsics.m1814u("searchBar");
        throw null;
    }

    @Override // com.tmobile.services.nameid.MainActivity.MainActivitySearchHandler
    /* renamed from: T */
    public void mo5987T(@Nullable NameIDSearch.ManageFabSearchInfo manageFabSearchInfo) {
        if (manageFabSearchInfo != null) {
            NameIDSearchAdapter nameIDSearchAdapter = this.f14180l;
            if (nameIDSearchAdapter != null) {
                nameIDSearchAdapter.m6028k(true);
            } else {
                Intrinsics.m1814u("recyclerAdapter");
                throw null;
            }
        }
        m5991Q0().m5916w(manageFabSearchInfo);
        NameIDSearchBar nameIDSearchBar = this.f14186r;
        if (nameIDSearchBar != null) {
            nameIDSearchBar.m6012f();
        } else {
            Intrinsics.m1814u("searchBar");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: U */
    public void mo5985U() {
        NameIDSearchBar nameIDSearchBar = this.f14186r;
        if (nameIDSearchBar != null) {
            nameIDSearchBar.m6013e();
        } else {
            Intrinsics.m1814u("searchBar");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: a0 */
    public void mo5981a0() {
        ImageView imageView = this.f14182n;
        if (imageView != null) {
            imageView.setImageResource(C1517R.C1519drawable.ic_illustrations_lookup);
            NameIDTextView nameIDTextView = this.f14183o;
            if (nameIDTextView != null) {
                nameIDTextView.setText(C1517R.string.search_empty_title);
                m5983V0(Integer.valueOf((int) C1517R.string.search_empty_description));
                m5984U0(this, null, false, false, 6, null);
                m5982W0(Boolean.TRUE);
                return;
            }
            Intrinsics.m1814u("title");
            throw null;
        }
        Intrinsics.m1814u("icon");
        throw null;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: c */
    public boolean mo5980c() {
        NameIDSearchBar nameIDSearchBar = this.f14186r;
        if (nameIDSearchBar != null) {
            return nameIDSearchBar.getIsExpanded();
        }
        Intrinsics.m1814u("searchBar");
        throw null;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: e */
    public void mo5979e(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        m5992P0().m7648C(e164Number, true);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: e0 */
    public void mo5978e0(boolean z) {
        NameIDSearchAdapter nameIDSearchAdapter = this.f14180l;
        if (nameIDSearchAdapter != null) {
            nameIDSearchAdapter.m6027l(z);
        } else {
            Intrinsics.m1814u("recyclerAdapter");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: i */
    public void mo5977i() {
        ImageView imageView = this.f14182n;
        if (imageView != null) {
            imageView.setImageResource(C1517R.C1519drawable.ic_illustrations_lookup);
            NameIDTextView nameIDTextView = this.f14183o;
            if (nameIDTextView != null) {
                nameIDTextView.setText(C1517R.string.search_typing_number_title);
                m5983V0(Integer.valueOf((int) C1517R.string.search_typing_number_description));
                m5986T0(Integer.valueOf((int) C1517R.string.search_action_button_label), false, false);
                m5982W0(Boolean.TRUE);
                return;
            }
            Intrinsics.m1814u("title");
            throw null;
        }
        Intrinsics.m1814u("icon");
        throw null;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: k */
    public void mo5976k(@NotNull String e164Number, @NotNull CallerSetting.Action action, @NotNull MessageUserPreference.CommEventType type, @NotNull Caller caller) {
        Intrinsics.m1830e(e164Number, "e164Number");
        Intrinsics.m1830e(action, "action");
        Intrinsics.m1830e(type, "type");
        Intrinsics.m1830e(caller, "caller");
        m5992P0().m7580m0(e164Number, action, type, caller);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: l */
    public void mo5975l() {
        ImageView imageView = this.f14182n;
        if (imageView != null) {
            imageView.setImageResource(C1517R.C1519drawable.ic_illustrations_lookup);
            NameIDTextView nameIDTextView = this.f14183o;
            if (nameIDTextView != null) {
                nameIDTextView.setText(C1517R.string.search_complete_number_title);
                m5983V0(Integer.valueOf((int) C1517R.string.search_complete_number_description));
                m5986T0(Integer.valueOf((int) C1517R.string.search_action_button_label), true, false);
                m5982W0(Boolean.TRUE);
                return;
            }
            Intrinsics.m1814u("title");
            throw null;
        }
        Intrinsics.m1814u("icon");
        throw null;
    }

    @Override // com.tmobile.services.nameid.MainActivity.MainActivitySearchHandler
    /* renamed from: m */
    public boolean mo5974m() {
        return m5991Q0().m5926m();
    }

    @Override // com.tmobile.services.nameid.MainActivity.MainActivitySearchHandler
    /* renamed from: n0 */
    public boolean mo5973n0() {
        if (!mo5980c()) {
            return false;
        }
        mo5985U();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(this.f14176h, viewGroup, false);
        View findViewById = inflate.findViewById(C1517R.C1520id.recycler_view);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.recycler_view)");
        this.f14179k = (RecyclerView) findViewById;
        View findViewById2 = inflate.findViewById(C1517R.C1520id.display_view);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.display_view)");
        this.f14181m = (LinearLayout) findViewById2;
        View findViewById3 = inflate.findViewById(2131231220);
        Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.icon)");
        this.f14182n = (ImageView) findViewById3;
        View findViewById4 = inflate.findViewById(2131231748);
        Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.title)");
        this.f14183o = (NameIDTextView) findViewById4;
        View findViewById5 = inflate.findViewById(2131231097);
        Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.description)");
        this.f14184p = (NameIDTextView) findViewById5;
        View findViewById6 = inflate.findViewById(C1517R.C1520id.action);
        Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.action)");
        this.f14185q = (NameIDButton) findViewById6;
        View findViewById7 = inflate.findViewById(2131231553);
        Intrinsics.m1831d(findViewById7, "view.findViewById(R.id.search_bar)");
        this.f14186r = (NameIDSearchBar) findViewById7;
        View findViewById8 = inflate.findViewById(C1517R.C1520id.shadow);
        Intrinsics.m1831d(findViewById8, "view.findViewById(R.id.shadow)");
        this.f14187s = findViewById8;
        this.f14180l = new NameIDSearchAdapter(this.f14188t);
        RecyclerView recyclerView = this.f14179k;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            RecyclerView recyclerView2 = this.f14179k;
            if (recyclerView2 != null) {
                NameIDSearchAdapter nameIDSearchAdapter = this.f14180l;
                if (nameIDSearchAdapter != null) {
                    recyclerView2.setAdapter(nameIDSearchAdapter);
                    RecyclerView recyclerView3 = this.f14179k;
                    if (recyclerView3 != null) {
                        recyclerView3.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$onCreateView$1
                            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                            /* renamed from: a */
                            public void mo5963a(@NotNull RecyclerView recyclerView4, int i) {
                                MainActivity P0;
                                Intrinsics.m1830e(recyclerView4, "recyclerView");
                                super.mo5963a(recyclerView4, i);
                                if (i == 1) {
                                    P0 = NameIDSearchFragment.this.m5992P0();
                                    P0.m7607W0(false);
                                }
                            }
                        });
                        m5982W0(null);
                        NameIDSearchBar nameIDSearchBar = this.f14186r;
                        if (nameIDSearchBar != null) {
                            nameIDSearchBar.m6014d(this.f14189u);
                            NameIDButton nameIDButton = this.f14185q;
                            if (nameIDButton != null) {
                                nameIDButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$onCreateView$2
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        NameIDSearchPresenter Q0;
                                        Q0 = NameIDSearchFragment.this.m5991Q0();
                                        Q0.m5923p();
                                    }
                                });
                                return inflate;
                            }
                            Intrinsics.m1814u("actionButton");
                            throw null;
                        }
                        Intrinsics.m1814u("searchBar");
                        throw null;
                    }
                    Intrinsics.m1814u("recyclerView");
                    throw null;
                }
                Intrinsics.m1814u("recyclerAdapter");
                throw null;
            }
            Intrinsics.m1814u("recyclerView");
            throw null;
        }
        Intrinsics.m1814u("recyclerView");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        CoroutineScope coroutineScope = this.f14178j;
        if (coroutineScope != null) {
            if (coroutineScope != null) {
                CoroutineScopeKt.m1310c(coroutineScope, null, 1, null);
            } else {
                Intrinsics.m1814u("fragmentScope");
                throw null;
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m6004G0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m5991Q0().m5919t();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        m5991Q0().m5918u();
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: p0 */
    public void mo5972p0(@NotNull Observable<Pair<Caller, Long>> observable) {
        Intrinsics.m1830e(observable, "observable");
        NameIDProgressDialog.Companion companion = NameIDProgressDialog.f13974l;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
        final DialogFragment b = companion.m6114b(childFragmentManager);
        observable.delay(500L, TimeUnit.MILLISECONDS).subscribe(new Consumer<Pair<? extends Caller, ? extends Long>>() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showSearchingDialog$1
            /* renamed from: a */
            public final void accept(Pair<? extends Caller, Long> pair) {
                DialogFragment.this.dismissAllowingStateLoss();
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showSearchingDialog$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                DialogFragment.this.dismissAllowingStateLoss();
            }
        });
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: r */
    public void mo5971r() {
        int U;
        NameIDTextView nameIDTextView = this.f14183o;
        if (nameIDTextView != null) {
            nameIDTextView.setText(C1517R.string.search_inactive_landing_title);
            String string = getResources().getString(C1517R.string.search_inactive_landing_description_highlight);
            Intrinsics.m1831d(string, "resources.getString(R.st…ng_description_highlight)");
            String string2 = getResources().getString(C1517R.string.search_inactive_landing_description, string);
            Intrinsics.m1831d(string2, "resources.getString(R.st…g_description, highlight)");
            U = StringsKt__StringsKt.m1453U(string2, string, 0, false, 6, null);
            SpannableString spannableString = new SpannableString(string2);
            spannableString.setSpan(new ClickableSpan() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchFragment$showInactiveUserLanding$clickSpan$1
                @Override // android.text.style.ClickableSpan
                public void onClick(@NotNull View p0) {
                    NameIDSearchPresenter Q0;
                    Intrinsics.m1830e(p0, "p0");
                    Q0 = NameIDSearchFragment.this.m5991Q0();
                    Q0.m5923p();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(@NotNull TextPaint ds) {
                    Intrinsics.m1830e(ds, "ds");
                    ds.setUnderlineText(false);
                }
            }, U, string.length() + U, 33);
            spannableString.setSpan(new ForegroundColorSpan(ContextCompat.m19675d(requireContext(), C1517R.C1518color.magenta_or_royal_purple)), U, string.length() + U, 33);
            NameIDTextView nameIDTextView2 = this.f14184p;
            if (nameIDTextView2 != null) {
                nameIDTextView2.setVisibility(0);
                NameIDTextView nameIDTextView3 = this.f14184p;
                if (nameIDTextView3 != null) {
                    nameIDTextView3.setText(spannableString);
                    NameIDTextView nameIDTextView4 = this.f14184p;
                    if (nameIDTextView4 != null) {
                        nameIDTextView4.setMovementMethod(LinkMovementMethod.getInstance());
                        m5984U0(this, null, false, false, 6, null);
                        m5982W0(Boolean.TRUE);
                        return;
                    }
                    Intrinsics.m1814u("description");
                    throw null;
                }
                Intrinsics.m1814u("description");
                throw null;
            }
            Intrinsics.m1814u("description");
            throw null;
        }
        Intrinsics.m1814u("title");
        throw null;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    @NotNull
    /* renamed from: s0 */
    public <T> Observable<T> mo5970s0(@NotNull Observable<T> obs) {
        Intrinsics.m1830e(obs, "obs");
        Observable<T> observeOn = obs.observeOn(AndroidSchedulers.m4448c());
        Intrinsics.m1831d(observeOn, "obs.observeOn(AndroidSchedulers.mainThread())");
        return observeOn;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: v */
    public void mo5969v() {
        if (!this.f14177i) {
            this.f14177i = true;
            NameIDDialogBuilder p = NameIDDialogBuilder.f13943m.m6128p(new NameIDSearchFragment$showInvalidNumber$1(this));
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
            p.m6160b(childFragmentManager);
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: v0 */
    public boolean mo5968v0() {
        return WidgetUtils.m5241c0(requireContext(), getChildFragmentManager());
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: x */
    public void mo5966x(boolean z) {
        int i = z ? C1517R.string.search_pending_trial_header : C1517R.string.search_pending_subscription_header;
        NameIDTextView nameIDTextView = this.f14183o;
        if (nameIDTextView != null) {
            nameIDTextView.setText(i);
            m5983V0(Integer.valueOf((int) C1517R.string.search_pending_description));
            m5986T0(Integer.valueOf((int) C1517R.string.search_action_button_label), false, false);
            m5982W0(Boolean.TRUE);
            return;
        }
        Intrinsics.m1814u("title");
        throw null;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.View
    /* renamed from: x0 */
    public void mo5965x0() {
        ImageView imageView = this.f14182n;
        if (imageView != null) {
            imageView.setImageResource(C1517R.C1519drawable.ic_illustrations_trial);
            NameIDTextView nameIDTextView = this.f14183o;
            if (nameIDTextView != null) {
                nameIDTextView.setText(C1517R.string.search_inactive_upgrade_title);
                m5983V0(null);
                m5984U0(this, Integer.valueOf((int) C1517R.string.general_upgrade), false, false, 2, null);
                m5982W0(Boolean.TRUE);
                return;
            }
            Intrinsics.m1814u("title");
            throw null;
        }
        Intrinsics.m1814u("icon");
        throw null;
    }
}
