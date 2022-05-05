package com.tmobile.services.nameid.p007ui.search;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchItem;
import com.tmobile.services.nameid.utility.SearchHelper;
import io.reactivex.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018��:\u0006\u0003\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch;", "<init>", "()V", "AdapterClickListener", "ManageFabSearchInfo", "Model", "OnSearchExpandListener", "Query", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch.class */
public final class NameIDSearch {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$AdapterClickListener;", "Lkotlin/Any;", "Lcom/tmobile/services/nameid/model/SearchItem;", "item", "", "onItemClick", "(Lcom/tmobile/services/nameid/model/SearchItem;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$AdapterClickListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$AdapterClickListener.class */
    public interface AdapterClickListener {
        /* renamed from: a */
        void mo5964a(@NotNull SearchItem searchItem);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018��B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0001\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\t\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0003R\u0019\u0010\b\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006¨\u0006\u001c"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "component1", "()Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "component2", "()Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "page", "type", "copy", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;Lcom/tmobile/services/nameid/manage/Manage$ActivityType;)Lcom/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "getPage", "Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "getType", "<init>", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;Lcom/tmobile/services/nameid/manage/Manage$ActivityType;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$ManageFabSearchInfo */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$ManageFabSearchInfo.class */
    public static final class ManageFabSearchInfo {
        @NotNull

        /* renamed from: a */
        private final Manage.PNBTab f14140a;
        @NotNull

        /* renamed from: b */
        private final Manage.ActivityType f14141b;

        public ManageFabSearchInfo(@NotNull Manage.PNBTab page, @NotNull Manage.ActivityType type) {
            Intrinsics.m1830e(page, "page");
            Intrinsics.m1830e(type, "type");
            this.f14140a = page;
            this.f14141b = type;
        }

        @NotNull
        /* renamed from: a */
        public final Manage.PNBTab m6041a() {
            return this.f14140a;
        }

        @NotNull
        /* renamed from: b */
        public final Manage.ActivityType m6040b() {
            return this.f14141b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ManageFabSearchInfo)) {
                return false;
            }
            ManageFabSearchInfo manageFabSearchInfo = (ManageFabSearchInfo) obj;
            return Intrinsics.m1834a(this.f14140a, manageFabSearchInfo.f14140a) && Intrinsics.m1834a(this.f14141b, manageFabSearchInfo.f14141b);
        }

        public int hashCode() {
            Manage.PNBTab pNBTab = this.f14140a;
            int i = 0;
            int hashCode = pNBTab != null ? pNBTab.hashCode() : 0;
            Manage.ActivityType activityType = this.f14141b;
            if (activityType != null) {
                i = activityType.hashCode();
            }
            return (hashCode * 31) + i;
        }

        @NotNull
        public String toString() {
            return "ManageFabSearchInfo(page=" + this.f14140a + ", type=" + this.f14141b + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\f\u001a\u00020\u0002H&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002H&¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH&¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\rH&¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H&¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0004H&¢\u0006\u0004\b%\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H&¢\u0006\u0004\b(\u0010$J\u0017\u0010)\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b)\u0010\u0006J3\u0010-\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00022\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020*2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020*H&¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b/\u0010\u0006J\u001f\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010\r2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b1\u0010\u000fJ\u0017\u00102\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b2\u0010\u0013J\u0017\u00103\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b3\u0010\u0013¨\u00064"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Model;", "Lkotlin/Any;", "", "e164Number", "", "addCallerFromSearch", "(Ljava/lang/String;)Z", "Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;", "response", "isManageSearch", "cleanUpSearchResponse", "(Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;Z)Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;", "query", "Lio/reactivex/Observable;", "doQuery", "(Ljava/lang/String;)Lio/reactivex/Observable;", Constants.FirelogAnalytics.PARAM_EVENT, "", "fireEvent", "(Ljava/lang/String;)V", "number", "formatNumberE164", "(Ljava/lang/String;)Ljava/lang/String;", "Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "activityType", "Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "getActivityPageType", "(Lcom/tmobile/services/nameid/manage/Manage$ActivityType;)Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "managePage", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getManagePageAction", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;)Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getRecentActivity", "()Lio/reactivex/Observable;", "isNumberLookupFeatureOwned", "()Z", "isSubscriptionInactive", "isSubscriptionPending", "()Ljava/lang/Boolean;", "isSubscriptionReducedMetro", "isUnknownNumber", "", "params", "values", "logFirebaseEvent", "(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V", "needLookupForSearchedNumber", "Lcom/tmobile/services/nameid/model/Caller;", "performLookup", "saveSearchedNumber", "userActivityEvent", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$Model */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$Model.class */
    public interface Model {
        /* renamed from: a */
        void mo5955a(@NotNull String str);

        /* renamed from: b */
        boolean mo5954b();

        @NotNull
        /* renamed from: c */
        String mo5953c(@NotNull String str);

        @NotNull
        /* renamed from: d */
        Observable<SearchHelper.SearchResponse> mo5952d(@NotNull String str);

        /* renamed from: e */
        boolean mo5951e();

        /* renamed from: f */
        boolean mo5950f(@NotNull String str);

        /* renamed from: g */
        void mo5949g(@NotNull String str);

        @NotNull
        /* renamed from: h */
        SearchHelper.SearchResponse mo5948h(@NotNull SearchHelper.SearchResponse searchResponse, boolean z);

        /* renamed from: i */
        void mo5947i(@NotNull String str, @NotNull String[] strArr, @NotNull String[] strArr2);

        /* renamed from: j */
        boolean mo5946j(@NotNull String str);

        @Nullable
        /* renamed from: k */
        Observable<Caller> mo5945k(@NotNull String str);

        @NotNull
        /* renamed from: l */
        CallerSetting.Action mo5944l(@Nullable Manage.PNBTab pNBTab);

        /* renamed from: m */
        void mo5943m(@NotNull String str);

        @NotNull
        /* renamed from: n */
        Observable<SearchHelper.SearchResponse> mo5942n();

        @Nullable
        /* renamed from: o */
        Boolean mo5941o();

        /* renamed from: p */
        boolean mo5940p();

        @NotNull
        /* renamed from: q */
        MessageUserPreference.CommEventType mo5939q(@Nullable Manage.ActivityType activityType);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$OnSearchExpandListener;", "Lkotlin/Any;", "", "onSearchCollapse", "()V", "onSearchExpand", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$OnSearchExpandListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$OnSearchExpandListener.class */
    public interface OnSearchExpandListener {
        /* renamed from: e */
        void mo5961e();

        /* renamed from: h */
        void mo5960h();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018��B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0001\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\t\u001a\u00020��2\b\b\u0002\u0010\u0007\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0001HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0003R\u0019\u0010\b\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0015\u001a\u0004\b\u0016\u0010\u0003¨\u0006\u0019"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "", "component1", "()Ljava/lang/String;", "", "component2", "()Z", "text", "submit", "copy", "(Ljava/lang/String;Z)Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Z", "getSubmit", "Ljava/lang/String;", "getText", "<init>", "(Ljava/lang/String;Z)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$Query */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$Query.class */
    public static final class Query {
        @NotNull

        /* renamed from: a */
        private final String f14142a;

        /* renamed from: b */
        private final boolean f14143b;

        public Query(@NotNull String text, boolean z) {
            Intrinsics.m1830e(text, "text");
            this.f14142a = text;
            this.f14143b = z;
        }

        /* renamed from: a */
        public final boolean m6039a() {
            return this.f14143b;
        }

        @NotNull
        /* renamed from: b */
        public final String m6038b() {
            return this.f14142a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Query)) {
                return false;
            }
            Query query = (Query) obj;
            return Intrinsics.m1834a(this.f14142a, query.f14142a) && this.f14143b == query.f14143b;
        }

        public int hashCode() {
            String str = this.f14142a;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f14143b;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        @NotNull
        public String toString() {
            return "Query(text=" + this.f14142a + ", submit=" + this.f14143b + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u000f\u0010\u0010J/\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0006\"\u0004\b��\u0010\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0006H&¢\u0006\u0004\b\u001b\u0010\u001cJ)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\u0006\"\u0004\b��\u0010\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0006H&¢\u0006\u0004\b\u001d\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000eH&¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000eH&¢\u0006\u0004\b!\u0010\u0010J\u000f\u0010\"\u001a\u00020\u0002H&¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0002H&¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0002H&¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0002H&¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0002H&¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0002H&¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0002H&¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u000eH&¢\u0006\u0004\b)\u0010\u0010J\u000f\u0010*\u001a\u00020\u0002H&¢\u0006\u0004\b*\u0010\u0004J\u0017\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u000eH&¢\u0006\u0004\b,\u0010 J)\u00100\u001a\u00020\u00022\u0018\u0010/\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020.0-0\u0006H&¢\u0006\u0004\b0\u00101J!\u00104\u001a\u00020\u00022\u0010\b\u0002\u00103\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u000102H&¢\u0006\u0004\b4\u00105J\u001d\u00109\u001a\u00020\u00022\f\u00108\u001a\b\u0012\u0004\u0012\u00020706H&¢\u0006\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearch$View;", "Lkotlin/Any;", "", "collapseView", "()V", "dismissKeyboard", "Lio/reactivex/Observable;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "getQueryObservable", "()Lio/reactivex/Observable;", "", "e164Number", "goToCallerDetails", "(Ljava/lang/String;)V", "", "isExpanded", "()Z", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "type", "Lcom/tmobile/services/nameid/model/Caller;", "caller", "manageFromSearch", "(Ljava/lang/String;Lcom/tmobile/services/nameid/model/CallerSetting$Action;Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;Lcom/tmobile/services/nameid/model/Caller;)V", "T", "obs", "observeOnMainThread", "(Lio/reactivex/Observable;)Lio/reactivex/Observable;", "observeOnNewThread", "recentOnly", "setIsRecentOnly", "(Z)V", "shouldRequestContactPermission", "showCompleteSearchString", "showContactPermissionMissing", "showEmptySearchString", "showInactiveUserLanding", "showInactiveUserUpgrade", "showIncompleteSearchString", "showInvalidNumber", "showNoNetwork", "showPendingDialog", "isTrial", "showPendingUser", "Lkotlin/Pair;", "", "observable", "showSearchingDialog", "(Lio/reactivex/Observable;)V", "Lkotlin/Function0;", "listener", "showSubscribeDialog", "(Lkotlin/Function0;)V", "", "Lcom/tmobile/services/nameid/model/SearchItem;", FirebaseAnalytics.Param.ITEMS, "showSuggestionList", "(Ljava/util/List;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$View */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$View.class */
    public interface View {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearch$View$DefaultImpls */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearch$View$DefaultImpls.class */
        public static final class DefaultImpls {
            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: a */
            public static /* synthetic */ void m6037a(View view, Function0 function0, int i, Object obj) {
                if (obj == null) {
                    if ((i & 1) != 0) {
                        function0 = null;
                    }
                    view.mo6005D0(function0);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSubscribeDialog");
            }
        }

        /* renamed from: C */
        void mo6006C();

        /* renamed from: D0 */
        void mo6005D0(@Nullable Function0<Unit> function0);

        /* renamed from: H */
        void mo6003H();

        /* renamed from: K */
        boolean mo5999K();

        @NotNull
        /* renamed from: P */
        <T> Observable<T> mo5993P(@NotNull Observable<T> observable);

        /* renamed from: R */
        void mo5990R(@NotNull List<? extends SearchItem> list);

        /* renamed from: U */
        void mo5985U();

        /* renamed from: a0 */
        void mo5981a0();

        /* renamed from: c */
        boolean mo5980c();

        /* renamed from: e */
        void mo5979e(@NotNull String str);

        /* renamed from: e0 */
        void mo5978e0(boolean z);

        /* renamed from: i */
        void mo5977i();

        /* renamed from: k */
        void mo5976k(@NotNull String str, @NotNull CallerSetting.Action action, @NotNull MessageUserPreference.CommEventType commEventType, @NotNull Caller caller);

        /* renamed from: l */
        void mo5975l();

        /* renamed from: p0 */
        void mo5972p0(@NotNull Observable<Pair<Caller, Long>> observable);

        /* renamed from: r */
        void mo5971r();

        @NotNull
        /* renamed from: s0 */
        <T> Observable<T> mo5970s0(@NotNull Observable<T> observable);

        /* renamed from: v */
        void mo5969v();

        /* renamed from: v0 */
        boolean mo5968v0();

        @NotNull
        /* renamed from: w0 */
        Observable<Query> mo5967w0();

        /* renamed from: x */
        void mo5966x(boolean z);

        /* renamed from: x0 */
        void mo5965x0();
    }
}
