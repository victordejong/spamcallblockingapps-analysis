package com.tmobile.services.nameid.p007ui.search;

import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchItem;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.SearchHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.rxkotlin.ObservablesKt;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��:\u0001?B\u0017\u0012\u0006\u0010<\u001a\u000208\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b=\u0010>J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00032\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\r\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b\u0019\u0010\u0017J\r\u0010\u001a\u001a\u00020\u0003¢\u0006\u0004\b\u001a\u0010\u0017J\r\u0010\u001b\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u0017J\r\u0010\u001c\u001a\u00020\u0003¢\u0006\u0004\b\u001c\u0010\u0017J\u0015\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J\u0013\u0010%\u001a\u00020\u0001*\u00020\u0001H\u0002¢\u0006\u0004\b%\u0010&J\u0013\u0010'\u001a\u00020\u000e*\u00020\u0001H\u0002¢\u0006\u0004\b'\u0010(R\u0016\u0010)\u001a\u00020\u00018\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010+\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00101\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010*R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R$\u0010:\u001a\u0010\u0012\f\u0012\n 9*\u0004\u0018\u00010808078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006@"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter;", "", "e164Number", "", "goToCallerDetails", "(Ljava/lang/String;)V", "Lcom/tmobile/services/nameid/model/Caller;", "caller", "handleManageSearch", "(Ljava/lang/String;Lcom/tmobile/services/nameid/model/Caller;)V", "Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;", "response", "handleSearchResponse", "(Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;)V", "", "isManageSearch", "()Z", "Lio/reactivex/Observable;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "query", "observeQuery", "(Lio/reactivex/Observable;)V", "onActionButtonClicked", "()V", "onQuerySubmitted", "onViewCollapsed", "onViewExpanded", "onViewResumed", "onViewStopped", "Lcom/tmobile/services/nameid/model/SearchItem;", "item", "openSearchItem", "(Lcom/tmobile/services/nameid/model/SearchItem;)V", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;", "info", "setFromFab", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;)V", "formatNumberForLookup", "(Ljava/lang/String;)Ljava/lang/String;", "isNotSearchableNumber", "(Ljava/lang/String;)Z", "LOG_TAG", "Ljava/lang/String;", "fabSearchInfo", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Model;", "model", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Model;", "Lio/reactivex/disposables/CompositeDisposable;", "queryDisposables", "Lio/reactivex/disposables/CompositeDisposable;", "queryText", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter$SearchStatus;", "searchStatus", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter$SearchStatus;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$View;", "kotlin.jvm.PlatformType", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearch$View;Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Model;)V", "SearchStatus", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchPresenter.class */
public final class NameIDSearchPresenter {

    /* renamed from: b */
    private final WeakReference<NameIDSearch.View> f14209b;

    /* renamed from: d */
    private NameIDSearch.ManageFabSearchInfo f14211d;

    /* renamed from: g */
    private final NameIDSearch.Model f14214g;

    /* renamed from: a */
    private final String f14208a = "NameIDSearchPresenter#";

    /* renamed from: c */
    private SearchStatus f14210c = SearchStatus.EMPTY;

    /* renamed from: e */
    private String f14212e = "";

    /* renamed from: f */
    private CompositeDisposable f14213f = new CompositeDisposable();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchPresenter$SearchStatus;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "EMPTY", "INCOMPLETE", "COMPLETE", "SUGGESTION_LIST", "INACTIVE_LANDING", "INACTIVE_UPGRADE", "PENDING", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$SearchStatus */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchPresenter$SearchStatus.class */
    public enum SearchStatus {
        EMPTY,
        INCOMPLETE,
        COMPLETE,
        SUGGESTION_LIST,
        INACTIVE_LANDING,
        INACTIVE_UPGRADE,
        PENDING
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$WhenMappings */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchPresenter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14215a;

        static {
            int[] iArr = new int[SearchStatus.values().length];
            f14215a = iArr;
            iArr[SearchStatus.COMPLETE.ordinal()] = 1;
            f14215a[SearchStatus.INACTIVE_LANDING.ordinal()] = 2;
            f14215a[SearchStatus.INACTIVE_UPGRADE.ordinal()] = 3;
        }
    }

    public NameIDSearchPresenter(@NotNull NameIDSearch.View view, @NotNull NameIDSearch.Model model) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        this.f14214g = model;
        this.f14209b = new WeakReference<>(view);
    }

    /* renamed from: i */
    private final String m5930i(String str) {
        String a = PhoneNumberHelper.m5418a(PhoneNumberHelper.m5416c(str));
        Intrinsics.m1831d(a, "PhoneNumberHelper.addLeading1(stripped)");
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m5929j(String str) {
        NameIDSearch.View view = this.f14209b.get();
        if (view != null) {
            view.mo5979e(str);
        }
        NameIDSearch.View view2 = this.f14209b.get();
        if (view2 != null) {
            view2.mo5985U();
        }
    }

    /* renamed from: k */
    private final void m5928k(String str, Caller caller) {
        String str2 = this.f14208a;
        LogUtil.m5643d(str2, " manage search for #[" + str + "] & caller [" + caller.getName() + ']');
        NameIDSearch.View view = this.f14209b.get();
        if (view != null) {
            NameIDSearch.Model model = this.f14214g;
            NameIDSearch.ManageFabSearchInfo manageFabSearchInfo = this.f14211d;
            Manage.ActivityType activityType = null;
            CallerSetting.Action l = model.mo5944l(manageFabSearchInfo != null ? manageFabSearchInfo.m6041a() : null);
            if (!this.f14214g.mo5954b() || l == CallerSetting.Action.APPROVED) {
                NameIDSearch.Model model2 = this.f14214g;
                NameIDSearch.ManageFabSearchInfo manageFabSearchInfo2 = this.f14211d;
                if (manageFabSearchInfo2 != null) {
                    activityType = manageFabSearchInfo2.m6040b();
                }
                MessageUserPreference.CommEventType q = model2.mo5939q(activityType);
                if (l != CallerSetting.Action.NONE) {
                    view.mo5976k(str, l, q, caller);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public final void m5927l(SearchHelper.SearchResponse searchResponse) {
        SearchStatus searchStatus;
        String str = this.f14208a;
        LogUtil.m5643d(str, "handling search response for query [" + searchResponse.m5355b() + "] with " + searchResponse.m5356a().size() + " results");
        NameIDSearch.View view = this.f14209b.get();
        if (view != null) {
            boolean z = true;
            if (!Intrinsics.m1834a(this.f14212e, searchResponse.m5355b())) {
                String str2 = this.f14208a;
                LogUtil.m5643d(str2, "query received '" + searchResponse.m5355b() + "' not up to date ('" + this.f14212e + "')");
                return;
            }
            if (!m5926m() || searchResponse.m5356a().size() <= 0) {
                if (this.f14212e.length() != 0) {
                    z = false;
                }
                if (z) {
                    if (this.f14214g.mo5954b()) {
                        view.mo5971r();
                        searchStatus = SearchStatus.INACTIVE_LANDING;
                    } else {
                        view.mo5981a0();
                        searchStatus = SearchStatus.EMPTY;
                    }
                } else if (searchResponse.m5356a().isEmpty()) {
                    Boolean o = this.f14214g.mo5941o();
                    if (o != null) {
                        view.mo5966x(o.booleanValue());
                        searchStatus = SearchStatus.PENDING;
                    } else if (this.f14214g.mo5954b()) {
                        view.mo5965x0();
                        searchStatus = SearchStatus.INACTIVE_UPGRADE;
                    } else if (m5925n(this.f14212e)) {
                        view.mo5977i();
                        searchStatus = SearchStatus.INCOMPLETE;
                    } else {
                        view.mo5975l();
                        searchStatus = SearchStatus.COMPLETE;
                    }
                } else {
                    List<SearchItem> a = searchResponse.m5356a();
                    Intrinsics.m1831d(a, "response.items");
                    view.mo5990R(a);
                    searchStatus = SearchStatus.SUGGESTION_LIST;
                }
            } else {
                List<SearchItem> a2 = searchResponse.m5356a();
                Intrinsics.m1831d(a2, "response.items");
                view.mo5990R(a2);
                searchStatus = SearchStatus.SUGGESTION_LIST;
            }
            this.f14210c = searchStatus;
            String str3 = this.f14208a;
            LogUtil.m5643d(str3, "view should now be " + this.f14210c);
        }
    }

    /* renamed from: n */
    private final boolean m5925n(String str) {
        return !PhoneNumberHelper.m5404o(m5930i(str));
    }

    /* renamed from: o */
    private final void m5924o(final Observable<NameIDSearch.Query> observable) {
        String str = this.f14208a;
        LogUtil.m5643d(str, "Hooking up query, manage search = " + m5926m());
        NameIDSearch.View view = this.f14209b.get();
        if (view != null) {
            if (!this.f14213f.isDisposed()) {
                this.f14213f.dispose();
            }
            CompositeDisposable compositeDisposable = new CompositeDisposable();
            this.f14213f = compositeDisposable;
            compositeDisposable.mo4425b(observable.subscribe(new Consumer<NameIDSearch.Query>(observable) { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$observeQuery$$inlined$let$lambda$1
                /* renamed from: a */
                public final void accept(NameIDSearch.Query query) {
                    String str2;
                    String str3;
                    str2 = NameIDSearchPresenter.this.f14208a;
                    LogUtil.m5643d(str2, "query query is now \"" + query.m6038b() + '\"');
                    NameIDSearchPresenter.this.f14212e = query.m6038b();
                    if (query.m6039a()) {
                        NameIDSearchPresenter nameIDSearchPresenter = NameIDSearchPresenter.this;
                        str3 = nameIDSearchPresenter.f14212e;
                        nameIDSearchPresenter.m5922q(str3);
                    }
                }
            }));
            Observable searchResponse = view.mo5993P(observable).switchMap(new Function<NameIDSearch.Query, ObservableSource<? extends SearchHelper.SearchResponse>>() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$observeQuery$$inlined$let$lambda$2
                /* renamed from: a */
                public final ObservableSource<? extends SearchHelper.SearchResponse> apply(@NotNull NameIDSearch.Query q) {
                    String str2;
                    Observable<SearchHelper.SearchResponse> observable2;
                    WeakReference weakReference;
                    NameIDSearch.Model model;
                    WeakReference weakReference2;
                    NameIDSearch.Model model2;
                    Intrinsics.m1830e(q, "q");
                    str2 = NameIDSearchPresenter.this.f14208a;
                    LogUtil.m5643d(str2, "getting search response for \"" + observable + '\"');
                    if (q.m6038b().length() == 0) {
                        weakReference2 = NameIDSearchPresenter.this.f14209b;
                        NameIDSearch.View view2 = (NameIDSearch.View) weakReference2.get();
                        if (view2 != null) {
                            view2.mo5978e0(true);
                        }
                        if (NameIDSearchPresenter.this.m5926m()) {
                            model2 = NameIDSearchPresenter.this.f14214g;
                            observable2 = model2.mo5942n();
                        } else {
                            observable2 = Observable.just(new SearchHelper.SearchResponse());
                            Intrinsics.m1831d(observable2, "Observable.just(SearchResponse())");
                        }
                    } else {
                        weakReference = NameIDSearchPresenter.this.f14209b;
                        NameIDSearch.View view3 = (NameIDSearch.View) weakReference.get();
                        if (view3 != null) {
                            view3.mo5978e0(false);
                        }
                        model = NameIDSearchPresenter.this.f14214g;
                        observable2 = model.mo5952d(q.m6038b());
                    }
                    return observable2;
                }
            }).map(new Function<SearchHelper.SearchResponse, SearchHelper.SearchResponse>(observable) { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$observeQuery$$inlined$let$lambda$3
                /* renamed from: a */
                public final SearchHelper.SearchResponse apply(@NotNull SearchHelper.SearchResponse response) {
                    NameIDSearch.Model model;
                    Intrinsics.m1830e(response, "response");
                    model = NameIDSearchPresenter.this.f14214g;
                    return model.mo5948h(response, NameIDSearchPresenter.this.m5926m());
                }
            });
            Intrinsics.m1831d(searchResponse, "searchResponse");
            this.f14213f.mo4425b(view.mo5970s0(searchResponse).subscribe(new Consumer<SearchHelper.SearchResponse>(observable) { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$observeQuery$$inlined$let$lambda$4
                /* renamed from: a */
                public final void accept(SearchHelper.SearchResponse it) {
                    NameIDSearchPresenter nameIDSearchPresenter = NameIDSearchPresenter.this;
                    Intrinsics.m1831d(it, "it");
                    nameIDSearchPresenter.m5927l(it);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final void m5922q(final String str) {
        String str2 = this.f14208a;
        LogUtil.m5643d(str2, "query submitted with value [" + str + ']');
        NameIDSearch.View view = this.f14209b.get();
        if (view == null) {
            return;
        }
        if (this.f14214g.mo5954b()) {
            NameIDSearch.View.DefaultImpls.m6037a(view, null, 1, null);
            view.mo5985U();
        } else if (this.f14214g.mo5941o() != null) {
            view.mo6006C();
            view.mo5985U();
        } else if (view.mo5968v0()) {
            view.mo5985U();
        } else if (m5925n(str)) {
            view.mo5969v();
        } else if (this.f14214g.mo5951e() || this.f14214g.mo5940p()) {
            final String c = this.f14214g.mo5953c(m5930i(str));
            this.f14214g.mo5949g(c);
            this.f14214g.mo5950f(c);
            if (this.f14214g.mo5946j(c)) {
                Observable<Long> timerObs = Observable.timer(500L, TimeUnit.MILLISECONDS);
                Observable<Caller> k = this.f14214g.mo5945k(c);
                if (k != null) {
                    Intrinsics.m1831d(timerObs, "timerObs");
                    Observable<Pair<Caller, Long>> minimumOneSecondLookup = ObservablesKt.m3258a(k, timerObs).observeOn(AndroidSchedulers.m4448c()).share();
                    Intrinsics.m1831d(minimumOneSecondLookup, "minimumOneSecondLookup");
                    view.mo5972p0(minimumOneSecondLookup);
                    this.f14213f.mo4425b(minimumOneSecondLookup.subscribe(new Consumer<Pair<? extends Caller, ? extends Long>>(c, this, str) { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$onQuerySubmitted$$inlined$let$lambda$2

                        /* renamed from: f */
                        final /* synthetic */ String f14222f;

                        /* renamed from: g */
                        final /* synthetic */ NameIDSearchPresenter f14223g;

                        /* renamed from: a */
                        public final void accept(Pair<? extends Caller, Long> pair) {
                            String str3;
                            str3 = this.f14223g.f14208a;
                            LogUtil.m5632o(str3, "Got lookup for " + this.f14222f);
                            this.f14223g.m5929j(this.f14222f);
                        }
                    }, new Consumer<Throwable>(c, this, str) { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchPresenter$onQuerySubmitted$$inlined$let$lambda$3

                        /* renamed from: f */
                        final /* synthetic */ String f14224f;

                        /* renamed from: g */
                        final /* synthetic */ NameIDSearchPresenter f14225g;

                        /* renamed from: a */
                        public final void accept(Throwable f) {
                            String str3;
                            str3 = this.f14225g.f14208a;
                            StringBuilder sb = new StringBuilder();
                            sb.append("lookup failed for ");
                            sb.append(this.f14224f);
                            sb.append(": ");
                            Intrinsics.m1831d(f, "f");
                            sb.append(f.getStackTrace());
                            LogUtil.m5631p(str3, sb.toString());
                            this.f14225g.m5929j(this.f14224f);
                        }
                    }));
                    return;
                }
                LogUtil.m5643d(this.f14208a, "Lookup observable was null. Not able to do lookup.");
                m5929j(c);
                return;
            }
            m5929j(c);
        } else {
            view.mo6005D0(new NameIDSearchPresenter$onQuerySubmitted$$inlined$let$lambda$1(this, str));
            view.mo5985U();
        }
    }

    /* renamed from: m */
    public final boolean m5926m() {
        return this.f14211d != null;
    }

    /* renamed from: p */
    public final void m5923p() {
        NameIDSearch.View view;
        String str = this.f14208a;
        LogUtil.m5639h(str, "Action button clicked while search status is [" + this.f14210c + ']');
        int i = WhenMappings.f14215a[this.f14210c.ordinal()];
        if (i == 1) {
            m5922q(this.f14212e);
        } else if ((i == 2 || i == 3) && (view = this.f14209b.get()) != null) {
            NameIDSearch.View.DefaultImpls.m6037a(view, null, 1, null);
            view.mo5985U();
        }
    }

    /* renamed from: r */
    public final void m5921r() {
        LogUtil.m5643d(this.f14208a, "disposing observables");
        this.f14211d = null;
        this.f14213f.dispose();
    }

    /* renamed from: s */
    public final void m5920s() {
        NameIDSearch.View view = this.f14209b.get();
        if (view != null) {
            LogUtil.m5643d(this.f14208a, "view expanded, getting query");
            m5924o(view.mo5967w0());
            if (view.mo5999K()) {
                view.mo6003H();
            }
        }
    }

    /* renamed from: t */
    public final void m5919t() {
        NameIDSearch.View view = this.f14209b.get();
        if (view != null && view.mo5980c()) {
            LogUtil.m5643d(this.f14208a, "resumed while view is expanded, observing search");
            m5924o(view.mo5967w0());
        }
    }

    /* renamed from: u */
    public final void m5918u() {
        LogUtil.m5643d(this.f14208a, "disposing observables");
        this.f14213f.dispose();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
        if (r11 != null) goto L_0x00d4;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018f  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5917v(@org.jetbrains.annotations.NotNull final com.tmobile.services.nameid.model.SearchItem r9) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.p007ui.search.NameIDSearchPresenter.m5917v(com.tmobile.services.nameid.model.SearchItem):void");
    }

    /* renamed from: w */
    public final void m5916w(@Nullable NameIDSearch.ManageFabSearchInfo manageFabSearchInfo) {
        String str = this.f14208a;
        StringBuilder sb = new StringBuilder();
        sb.append("Searching from fab = ");
        sb.append(manageFabSearchInfo != null);
        LogUtil.m5643d(str, sb.toString());
        this.f14211d = manageFabSearchInfo;
    }
}
