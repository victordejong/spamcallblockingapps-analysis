package com.callapp.contacts.activity.analytics.cards;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.callapp.contacts.activity.analytics.circleGraph.data.CircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin;
import com.callapp.contacts.activity.analytics.progressGraph.data.FavoriteCallersData;
import com.callapp.contacts.activity.analytics.progressGraph.data.ProfilePictureProgressBarData;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDurationGraphFragment;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.GraphFragment;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.b.a;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001IB\u000f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020\u001bJ\b\u0010.\u001a\u00020/H\u0016J\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020201H\u0016J\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\b\u00104\u001a\u00020\u001bH\u0016J\u001e\u00105\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u001406J\u001e\u00107\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0'\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0'06J\u0010\u00108\u001a\u0002092\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010:\u001a\u0002092\b\u0010;\u001a\u0004\u0018\u00010\u0002H\u0014J\u001e\u0010<\u001a\u0002092\u0006\u0010=\u001a\u00020>2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020201H\u0016J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020BH\u0014J\b\u0010C\u001a\u000209H\u0016J\b\u0010D\u001a\u000209H\u0002J\b\u0010E\u001a\u00020\bH\u0016J\u001a\u0010F\u001a\u0002092\b\u0010G\u001a\u0004\u0018\u00010\u00032\u0006\u0010H\u001a\u00020\bH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082D¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010$\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010%\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010)\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020(0'X\u0082\u000e¢\u0006\u0002\n��¨\u0006J"}, d2 = {"Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;", "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;", "Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;", "", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V", "alreadyBounded", "", "frequentCallersMultiTaskRunner", "Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "graphFragmentFrequentCallersA", "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;", "graphFragmentFrequentCallersB", "graphFragmentLongestCalls", "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;", "graphFragmentTotalCallTime", "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;", "longestCallMultiTaskRunner", "longestCallsData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "longestVisibilityTracker", "Lcom/mopub/mobileads/InlineVisibilityTracker;", "mode", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;", "numberOfItems", "", "shouldShowLongestAnimation", "shouldShowTotalAnimation", "shouldShowWhoCallMeAnimation", "shouldShowWhoICallAnimation", "totalCallTImeMultiTaskRunner", "totalCallTimeGraph", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "totalCallTimeList", "totalVisibilityTracker", "whoCallMeVisibilityTracker", "whoCalledMeTheMostData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "whoICallVisibilityTracker", "whoICalledTheMostData", "getColorByIndex", "", "index", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getLongestCalls", "getPriority", "getTotalCallTimeData", "Lkotlin/Pair;", "getWhoICalledTheMostData", "onAnalyticsRefreshCard", "", "onBindViewHolder", "hitListsCardHolder", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "onDestroy", "refreshCardData", "showShouldExpandButton", "updateCardData", "data", "forceRefresh", "HitListsCardHolder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/HitListsCard.class */
public final class HitListsCard extends AnalyticsWrapperCard<HitListsCardHolder, Object> {
    private boolean alreadyBounded;
    private CircleGraphFragment graphFragmentFrequentCallersA;
    private CircleGraphFragment graphFragmentFrequentCallersB;
    private GraphFragment graphFragmentLongestCalls;
    private CallDurationGraphFragment graphFragmentTotalCallTime;
    private InlineVisibilityTracker longestVisibilityTracker;
    private PresentersContainer.MODE mode;
    private boolean shouldShowLongestAnimation;
    private boolean shouldShowTotalAnimation;
    private boolean shouldShowWhoCallMeAnimation;
    private boolean shouldShowWhoICallAnimation;
    private InlineVisibilityTracker totalVisibilityTracker;
    private InlineVisibilityTracker whoCallMeVisibilityTracker;
    private InlineVisibilityTracker whoICallVisibilityTracker;
    private List<MultiCircleGraphData> whoICalledTheMostData = new ArrayList();
    private List<MultiCircleGraphData> whoCalledMeTheMostData = new ArrayList();
    private MultiTaskRunner totalCallTImeMultiTaskRunner = new MultiTaskRunner();
    private MultiTaskRunner longestCallMultiTaskRunner = new MultiTaskRunner();
    private MultiTaskRunner frequentCallersMultiTaskRunner = new MultiTaskRunner();
    private ArrayList<FavoriteCallersData> longestCallsData = new ArrayList<>();
    private ArrayList<FavoriteCallersData> totalCallTimeList = new ArrayList<>();
    private ArrayList<ProfilePictureProgressBarData> totalCallTimeGraph = new ArrayList<>();
    private final int numberOfItems = 3;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\bR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\u0016\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u000eR\u0011\u0010\u0018\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\bR\u0011\u0010\u001a\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\bR\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b!\u0010\bR\u0011\u0010\"\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b#\u0010\bR\u0011\u0010$\u001a\u00020\u001d¢\u0006\b\n��\u001a\u0004\b%\u0010\u001fR\u0011\u0010&\u001a\u00020\u001d¢\u0006\b\n��\u001a\u0004\b'\u0010\u001fR\u0011\u0010(\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b)\u0010\bR\u0011\u0010*\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b+\u0010\b¨\u0006,"}, d2 = {"Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;", "", "root", "Landroid/view/View;", "(Landroid/view/View;)V", "callTimeSubTitle", "Landroid/widget/TextView;", "getCallTimeSubTitle", "()Landroid/widget/TextView;", "callTimeTitle", "getCallTimeTitle", "dataLayout", "Landroid/widget/LinearLayout;", "getDataLayout", "()Landroid/widget/LinearLayout;", "dividerCallTime", "getDividerCallTime", "()Landroid/view/View;", "dividerFavorite", "getDividerFavorite", "dividerFrequent", "getDividerFrequent", "emptyLayout", "getEmptyLayout", "favoriteSubTitle", "getFavoriteSubTitle", "favoriteTitle", "getFavoriteTitle", "firstPlaceHolder", "Landroid/widget/ImageView;", "getFirstPlaceHolder", "()Landroid/widget/ImageView;", "frequentSubTitle", "getFrequentSubTitle", "frequentTitle", "getFrequentTitle", "secondPlaceHolder", "getSecondPlaceHolder", "thirdPlaceHolder", "getThirdPlaceHolder", "whoCallMe", "getWhoCallMe", "whoICall", "getWhoICall", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder.class */
    public static final class HitListsCardHolder {

        /* renamed from: a  reason: collision with root package name */
        private final TextView f10749a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f10750b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10751c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10752d;
        private final TextView e;
        private final TextView f;
        private final LinearLayout g;
        private final LinearLayout h;
        private final TextView i;
        private final TextView j;
        private final View k;
        private final View l;
        private final View m;
        private final ImageView n;
        private final ImageView o;
        private final ImageView p;

        public HitListsCardHolder(View root) {
            p.d(root, "root");
            View findViewById = root.findViewById(2131362792);
            p.b(findViewById, "root.findViewById(R.id.favorite_title)");
            this.f10749a = (TextView) findViewById;
            View findViewById2 = root.findViewById(2131362791);
            p.b(findViewById2, "root.findViewById(R.id.favorite_sub_title)");
            this.f10750b = (TextView) findViewById2;
            View findViewById3 = root.findViewById(2131362875);
            p.b(findViewById3, "root.findViewById(R.id.frequent_title)");
            this.f10751c = (TextView) findViewById3;
            View findViewById4 = root.findViewById(2131362874);
            p.b(findViewById4, "root.findViewById(R.id.frequent_sub_title)");
            this.f10752d = (TextView) findViewById4;
            View findViewById5 = root.findViewById(2131362237);
            p.b(findViewById5, "root.findViewById(R.id.call_time_title)");
            this.e = (TextView) findViewById5;
            View findViewById6 = root.findViewById(2131362236);
            p.b(findViewById6, "root.findViewById(R.id.call_time_sub_title)");
            this.f = (TextView) findViewById6;
            View findViewById7 = root.findViewById(2131362521);
            p.b(findViewById7, "root.findViewById(R.id.data_layout)");
            this.g = (LinearLayout) findViewById7;
            View findViewById8 = root.findViewById(2131362694);
            p.b(findViewById8, "root.findViewById(R.id.empty_layout)");
            this.h = (LinearLayout) findViewById8;
            View findViewById9 = root.findViewById(2131364560);
            p.b(findViewById9, "root.findViewById(R.id.who_i_call_title)");
            this.i = (TextView) findViewById9;
            View findViewById10 = root.findViewById(2131364559);
            p.b(findViewById10, "root.findViewById(R.id.who_call_me_title)");
            this.j = (TextView) findViewById10;
            View findViewById11 = root.findViewById(2131362617);
            p.b(findViewById11, "root.findViewById(R.id.divider_favorite)");
            this.k = findViewById11;
            View findViewById12 = root.findViewById(2131362618);
            p.b(findViewById12, "root.findViewById(R.id.divider_frequent)");
            this.l = findViewById12;
            View findViewById13 = root.findViewById(2131362616);
            p.b(findViewById13, "root.findViewById(R.id.divider_call_time)");
            this.m = findViewById13;
            View findViewById14 = root.findViewById(2131362823);
            p.b(findViewById14, "root.findViewById(R.id.firstPlaceHolder)");
            this.n = (ImageView) findViewById14;
            View findViewById15 = root.findViewById(2131363786);
            p.b(findViewById15, "root.findViewById(R.id.secondPlaceHolder)");
            this.o = (ImageView) findViewById15;
            View findViewById16 = root.findViewById(2131364114);
            p.b(findViewById16, "root.findViewById(R.id.thirdPlaceHolder)");
            this.p = (ImageView) findViewById16;
        }

        public final TextView getCallTimeSubTitle() {
            return this.f;
        }

        public final TextView getCallTimeTitle() {
            return this.e;
        }

        public final LinearLayout getDataLayout() {
            return this.g;
        }

        public final View getDividerCallTime() {
            return this.m;
        }

        public final View getDividerFavorite() {
            return this.k;
        }

        public final View getDividerFrequent() {
            return this.l;
        }

        public final LinearLayout getEmptyLayout() {
            return this.h;
        }

        public final TextView getFavoriteSubTitle() {
            return this.f10750b;
        }

        public final TextView getFavoriteTitle() {
            return this.f10749a;
        }

        public final ImageView getFirstPlaceHolder() {
            return this.n;
        }

        public final TextView getFrequentSubTitle() {
            return this.f10752d;
        }

        public final TextView getFrequentTitle() {
            return this.f10751c;
        }

        public final ImageView getSecondPlaceHolder() {
            return this.o;
        }

        public final ImageView getThirdPlaceHolder() {
            return this.p;
        }

        public final TextView getWhoCallMe() {
            return this.j;
        }

        public final TextView getWhoICall() {
            return this.i;
        }
    }

    public HitListsCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558482);
    }

    private final void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(null, true);
        }
    }

    public final int[] getColorByIndex(int i) {
        if (i == 0) {
            return CallAppApplication.get().getResources().getIntArray(2130903058);
        }
        if (i == 1) {
            return CallAppApplication.get().getResources().getIntArray(2130903059);
        }
        if (i != 2) {
            return null;
        }
        return CallAppApplication.get().getResources().getIntArray(2130903060);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        String string = Activities.getString(2131886527);
        p.b(string, "Activities.getString(R.string.card_hit_list_title)");
        return string;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        EnumSet of = EnumSet.of(ContactField.phone);
        p.b(of, "EnumSet.of(ContactField.phone)");
        return of;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* JADX WARN: Type inference failed for: r30v1, types: [long] */
    /* JADX WARN: Type inference failed for: r30v3 */
    /* JADX WARN: Type inference failed for: r30v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<com.callapp.contacts.activity.analytics.progressGraph.data.FavoriteCallersData> getLongestCalls() {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.HitListsCard.getLongestCalls():java.util.ArrayList");
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        return 120;
    }

    public final n<ArrayList<ProfilePictureProgressBarData>, ArrayList<FavoriteCallersData>> getTotalCallTimeData() {
        float f;
        Collection<Integer> values;
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        this.totalCallTImeMultiTaskRunner.d();
        this.totalCallTImeMultiTaskRunner.f14417b.clear();
        AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f10896a;
        LinkedHashMap<String, Integer> a2 = AnalyticsDataManagerKotlin.Companion.a(AnalyticsDataManager.DatePeriod.CURRENT);
        final ab.b bVar = new ab.b();
        bVar.f36777a = 100.0f;
        if (a2.size() > 0) {
            p.b(a2.values(), "totalDurationByPhoneNumber.values");
            bVar.f36777a = ((Number) kotlin.a.n.a((Iterable<? extends Object>) values)).intValue();
        }
        if (a2.size() > 1) {
            Collection<Integer> values2 = a2.values();
            p.b(values2, "totalDurationByPhoneNumber.values");
            f = ((Number) kotlin.a.n.c((Iterable<? extends Object>) values2)).intValue();
        } else {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        float f2 = bVar.f36777a * 0.4f;
        final float f3 = (f <= BitmapDescriptorFactory.HUE_RED || f >= f2) ? BitmapDescriptorFactory.HUE_RED : bVar.f36777a - f2;
        bVar.f36777a += f3;
        final ReentrantLock reentrantLock = new ReentrantLock();
        final int i = 0;
        for (Object obj : ai.d(a2)) {
            if (i < 0) {
                kotlin.a.n.a();
            }
            n nVar = (n) obj;
            final String str = (String) nVar.f36810a;
            final int intValue = ((Number) nVar.f36811b).intValue();
            final ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
            this.totalCallTImeMultiTaskRunner.a(new Task() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData contactData = ContactLoader.this.load(str);
                    try {
                        reentrantLock.lock();
                        ArrayList arrayList3 = arrayList2;
                        p.b(contactData, "contactData");
                        arrayList3.add(new FavoriteCallersData(contactData.getPhotoUrl(), null, contactData.getFullName(), str, contactData.getDeviceId(), Integer.valueOf(intValue), null, 100.0f, 3, ThemeUtils.getColor(2131099785), null, true, 1090, null));
                        ArrayList arrayList4 = arrayList;
                        float f4 = bVar.f36777a;
                        String photoUrl = contactData.getPhotoUrl();
                        String fullName = contactData.getFullName();
                        String a3 = contactData.getPhone().a();
                        arrayList4.add(new ProfilePictureProgressBarData(photoUrl, fullName, contactData.getDeviceId(), a3, null, Float.valueOf(intValue + f3), f4, 2, this.getColorByIndex(i), false, 528, null));
                    } finally {
                        reentrantLock.unlock();
                    }
                }
            });
            i++;
        }
        this.totalCallTImeMultiTaskRunner.a();
        int size = this.numberOfItems - a2.size();
        float f4 = bVar.f36777a;
        if (size == 1) {
            Collection<Integer> values3 = a2.values();
            p.b(values3, "totalDurationByPhoneNumber.values");
            f4 = ((Number) kotlin.a.n.h(values3).get(1)).intValue();
        }
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new ProfilePictureProgressBarData(null, null, 0L, null, null, Float.valueOf(f4 / (i2 + 0.6f)), bVar.f36777a, 2, CallAppApplication.get().getResources().getIntArray(2130903061), false, 543, null));
            arrayList2.add(new FavoriteCallersData(null, null, null, null, 0L, 0, null, 100.0f, 3, ThemeUtils.getColor(2131099918), null, true, 1119, null));
        }
        ArrayList arrayList3 = arrayList2;
        if (arrayList3.size() > 1) {
            kotlin.a.n.a((List) arrayList3, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a(((FavoriteCallersData) t2).getCallTimeDuration(), ((FavoriteCallersData) t).getCallTimeDuration());
                }
            });
        }
        ArrayList arrayList4 = arrayList;
        if (arrayList4.size() > 1) {
            kotlin.a.n.a((List) arrayList4, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a(((ProfilePictureProgressBarData) t2).getProgress(), ((ProfilePictureProgressBarData) t).getProgress());
                }
            });
        }
        ((FavoriteCallersData) kotlin.a.n.g((List<? extends Object>) arrayList3)).setShowSeparator(false);
        return new n<>(arrayList, arrayList2);
    }

    public final n<List<MultiCircleGraphData>, List<MultiCircleGraphData>> getWhoICalledTheMostData() {
        Collection values;
        AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f10896a;
        AnalyticsDataManager.DatePeriod datePeriod = AnalyticsDataManager.DatePeriod.CURRENT;
        p.d(datePeriod, "datePeriod");
        HashMap hashMap = new HashMap();
        List<AnalyticsCallsData> c2 = AnalyticsDataManagerKotlin.Companion.c(datePeriod).a(AnalyticsCallsData_.isIncognito, false).a(AnalyticsCallsData_.isExclude, false).c().a(AnalyticsCallsData_.isExclude).a().c();
        p.b(c2, "getQuery(datePeriod).equ…isExclude).build().find()");
        List<AnalyticsCallsData> list = c2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            AnalyticsCallsData it2 = (AnalyticsCallsData) obj;
            p.b(it2, "it");
            String phoneAsGlobal = it2.getPhoneAsGlobal();
            Object obj2 = linkedHashMap.get(phoneAsGlobal);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(phoneAsGlobal, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : iterable) {
                AnalyticsCallsData it3 = (AnalyticsCallsData) obj3;
                p.b(it3, "it");
                if (it3.getCallType() == AnalyticsCallsData.CallType.INCOMING) {
                    arrayList2.add(obj3);
                }
            }
            int size = arrayList2.size();
            if (size > 0) {
                hashMap2.put(entry.getKey(), Integer.valueOf(size));
            }
            Iterable iterable2 = (Iterable) entry.getValue();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj4 : iterable2) {
                AnalyticsCallsData it4 = (AnalyticsCallsData) obj4;
                p.b(it4, "it");
                if (it4.getCallType() == AnalyticsCallsData.CallType.OUTGOING) {
                    arrayList3.add(obj4);
                }
            }
            int size2 = arrayList3.size();
            if (size2 > 0) {
                hashMap3.put(entry.getKey(), Integer.valueOf(size2));
            }
        }
        hashMap.put(AnalyticsCallsData.CallType.INCOMING, hashMap2);
        hashMap.put(AnalyticsCallsData.CallType.OUTGOING, hashMap3);
        HashMap hashMap4 = hashMap;
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList arrayList5 = new ArrayList();
        this.frequentCallersMultiTaskRunner.d();
        this.frequentCallersMultiTaskRunner.f14417b.clear();
        Map map = (Map) hashMap4.get(AnalyticsCallsData.CallType.OUTGOING);
        Map map2 = (Map) hashMap4.get(AnalyticsCallsData.CallType.INCOMING);
        Integer valueOf = (map == null || (values = map.values()) == null) ? null : Integer.valueOf(kotlin.a.n.q(values));
        Integer num = null;
        if (map2 != null) {
            Collection values2 = map2.values();
            num = null;
            if (values2 != null) {
                num = Integer.valueOf(kotlin.a.n.q(values2));
            }
        }
        ab.c cVar = new ab.c();
        cVar.f36778a = 0;
        if (valueOf != null) {
            cVar.f36778a += valueOf.intValue();
        }
        if (num != null) {
            cVar.f36778a += num.intValue();
        }
        final ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
        final ReentrantLock reentrantLock = new ReentrantLock();
        final ab.c cVar2 = cVar;
        for (Map.Entry entry2 : hashMap4.entrySet()) {
            final AnalyticsCallsData.CallType callType = (AnalyticsCallsData.CallType) entry2.getKey();
            Map map3 = (Map) entry2.getValue();
            final int color = callType == AnalyticsCallsData.CallType.OUTGOING ? ThemeUtils.getColor(2131099916) : ThemeUtils.getColor(2131099931);
            List b2 = kotlin.a.n.b((Iterable) kotlin.a.n.a((Iterable) ai.d(map3), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$$special$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a(Integer.valueOf(((Number) ((n) t2).f36811b).intValue()), Integer.valueOf(((Number) ((n) t).f36811b).intValue()));
                }
            }), this.numberOfItems);
            AnalyticsCallsData.CallType callType2 = callType;
            cVar2 = cVar2;
            if (CollectionUtils.b(b2)) {
                Iterator it5 = b2.iterator();
                while (true) {
                    callType2 = callType;
                    cVar2 = cVar2;
                    if (!it5.hasNext()) {
                        break;
                    }
                    n nVar = (n) it5.next();
                    final String str = (String) nVar.f36810a;
                    final int intValue = ((Number) nVar.f36811b).intValue();
                    this.frequentCallersMultiTaskRunner.a(new Task() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1
                        @Override // com.callapp.contacts.manager.task.Task
                        public final void doTask() {
                            List list2;
                            final ContactData contactData = loadOnlyFromCache.load(str);
                            CircleGraphData circleGraphData = new CircleGraphData(color, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 100.0f, BitmapDescriptorFactory.HUE_RED, 4.0f, false, 0L, null, null, 0, 0, 0, false, null, false, 65494, null);
                            CircleGraphData circleGraphData2 = new CircleGraphData(color, BitmapDescriptorFactory.HUE_RED, cVar2.f36778a, BitmapDescriptorFactory.HUE_RED, intValue, 18.0f, true, 0L, null, null, 0, 0, 0, false, new PointF(20.0f, 20.0f), false, 49034, null);
                            if (intValue > BitmapDescriptorFactory.HUE_RED) {
                                list2 = Arrays.asList(circleGraphData, circleGraphData2);
                                p.b(list2, "Arrays.asList(outerCircle, innerCircle)");
                            } else {
                                list2 = Arrays.asList(circleGraphData);
                                p.b(list2, "Arrays.asList(outerCircle)");
                            }
                            Boolean bool = Boolean.TRUE;
                            int initialRange = (int) circleGraphData2.getInitialRange();
                            int i = color;
                            int i2 = intValue;
                            p.b(contactData, "contactData");
                            String photoUrl = contactData.getPhotoUrl();
                            String nameOrNumber = contactData.getNameOrNumber();
                            float dimension = CallAppApplication.get().getResources().getDimension(2131165291);
                            CallAppApplication callAppApplication = CallAppApplication.get();
                            p.b(callAppApplication, "CallAppApplication.get()");
                            MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(list2, null, null, null, String.valueOf(initialRange), nameOrNumber, Integer.valueOf(i), Float.valueOf(dimension), 2131362355, i2, null, photoUrl, contactData.getFullName(), bool, null, null, null, null, Float.valueOf(callAppApplication.getResources().getDimension(2131165695)), null, 771086, null);
                            multiCircleGraphData.setEvents(new CircleGraphEvents() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1.1
                                @Override // com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents
                                public final void a() {
                                    Context context = this.getContext();
                                    ContactData contactData2 = contactData;
                                    p.b(contactData2, "contactData");
                                    long deviceId = contactData2.getDeviceId();
                                    ContactData contactData3 = contactData;
                                    p.b(contactData3, "contactData");
                                    Phone phone = contactData3.getPhone();
                                    p.b(phone, "contactData.phone");
                                    Intent createIntent = ContactDetailsActivity.createIntent(context, deviceId, phone.getRawNumber(), null, true, null, "InsightsHitListCard", ENTRYPOINT.INSIGHTS);
                                    p.b(createIntent, "ContactDetailsActivity.c…rd\", ENTRYPOINT.INSIGHTS)");
                                    this.getContext().startActivity(createIntent);
                                }
                            });
                            try {
                                reentrantLock.lock();
                                if (callType == AnalyticsCallsData.CallType.INCOMING) {
                                    arrayList4.add(multiCircleGraphData);
                                } else {
                                    arrayList5.add(multiCircleGraphData);
                                }
                            } finally {
                                reentrantLock.unlock();
                            }
                        }
                    });
                }
            }
            int i = this.numberOfItems;
            int size3 = b2.size();
            for (int i2 = 0; i2 < i - size3; i2++) {
                List asList = Arrays.asList(new CircleGraphData(color, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 100.0f, BitmapDescriptorFactory.HUE_RED, 4.0f, false, 0L, null, null, 0, 0, 0, false, null, false, 65494, null));
                p.b(asList, "Arrays.asList(outerCircle)");
                Boolean bool = Boolean.TRUE;
                String string = Activities.getString(2131887305);
                int color2 = ThemeUtils.getColor(2131099919);
                float dimension = CallAppApplication.get().getResources().getDimension(2131165291);
                CallAppApplication callAppApplication = CallAppApplication.get();
                p.b(callAppApplication, "CallAppApplication.get()");
                MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(asList, null, null, null, string, null, Integer.valueOf(color2), Float.valueOf(dimension), 2131362355, 0, null, null, null, bool, null, null, null, null, Float.valueOf(callAppApplication.getResources().getDimension(2131165695)), null, 777262, null);
                if (callType2 == AnalyticsCallsData.CallType.INCOMING) {
                    arrayList4.add(multiCircleGraphData);
                } else {
                    arrayList5.add(multiCircleGraphData);
                }
            }
        }
        this.frequentCallersMultiTaskRunner.a();
        ArrayList arrayList6 = arrayList4;
        if (arrayList6.size() > 1) {
            kotlin.a.n.a((List) arrayList6, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a(Integer.valueOf(((MultiCircleGraphData) t2).getCircleGraphProgressValue()), Integer.valueOf(((MultiCircleGraphData) t).getCircleGraphProgressValue()));
                }
            });
        }
        ArrayList arrayList7 = arrayList5;
        if (arrayList7.size() > 1) {
            kotlin.a.n.a((List) arrayList7, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a(Integer.valueOf(((MultiCircleGraphData) t2).getCircleGraphProgressValue()), Integer.valueOf(((MultiCircleGraphData) t).getCircleGraphProgressValue()));
                }
            });
        }
        return new n<>(arrayList4, arrayList5);
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public final void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        p.d(mode, "mode");
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onBindViewHolder(HitListsCardHolder hitListsCardHolder) {
        GraphFragment graphFragment;
        CircleGraphFragment circleGraphFragment;
        CircleGraphFragment circleGraphFragment2;
        this.alreadyBounded = true;
        if (hitListsCardHolder != null) {
            Boolean bool = Prefs.cJ.get();
            p.b(bool, "Prefs.isPremium.get()");
            if (bool.booleanValue()) {
                hitListsCardHolder.getDataLayout().setVisibility(0);
                hitListsCardHolder.getEmptyLayout().setVisibility(8);
            } else {
                hitListsCardHolder.getDataLayout().setVisibility(8);
                hitListsCardHolder.getEmptyLayout().setVisibility(0);
                if (ThemeUtils.isThemeLight()) {
                    hitListsCardHolder.getFirstPlaceHolder().setImageResource(2131231366);
                    hitListsCardHolder.getSecondPlaceHolder().setImageResource(2131231368);
                    hitListsCardHolder.getThirdPlaceHolder().setImageResource(2131231370);
                } else {
                    hitListsCardHolder.getFirstPlaceHolder().setImageResource(2131231367);
                    hitListsCardHolder.getSecondPlaceHolder().setImageResource(2131231369);
                    hitListsCardHolder.getThirdPlaceHolder().setImageResource(2131231371);
                }
            }
            hitListsCardHolder.getFavoriteTitle().setText(Activities.getString(2131886972));
            hitListsCardHolder.getFavoriteSubTitle().setText(Activities.getString(2131886975));
            hitListsCardHolder.getFrequentTitle().setText(Activities.getString(2131886973));
            hitListsCardHolder.getFrequentSubTitle().setText(Activities.getString(2131886974));
            hitListsCardHolder.getCallTimeTitle().setText(Activities.getString(2131886971));
            hitListsCardHolder.getCallTimeSubTitle().setText(Activities.getString(2131886970));
            hitListsCardHolder.getWhoCallMe().setText(Activities.getString(2131886239));
            hitListsCardHolder.getWhoICall().setText(Activities.getString(2131886240));
            hitListsCardHolder.getFavoriteTitle().setTextColor(ThemeUtils.getColor(2131100140));
            hitListsCardHolder.getFrequentTitle().setTextColor(ThemeUtils.getColor(2131100140));
            hitListsCardHolder.getCallTimeTitle().setTextColor(ThemeUtils.getColor(2131100140));
            hitListsCardHolder.getCallTimeSubTitle().setTextColor(ThemeUtils.getColor(2131100108));
            hitListsCardHolder.getFrequentSubTitle().setTextColor(ThemeUtils.getColor(2131100108));
            hitListsCardHolder.getFavoriteSubTitle().setTextColor(ThemeUtils.getColor(2131100108));
            hitListsCardHolder.getWhoICall().setTextColor(ThemeUtils.getColor(2131100108));
            hitListsCardHolder.getWhoCallMe().setTextColor(ThemeUtils.getColor(2131100108));
            hitListsCardHolder.getDividerFavorite().setBackgroundColor(ThemeUtils.getColor(2131099891));
            hitListsCardHolder.getDividerFrequent().setBackgroundColor(ThemeUtils.getColor(2131099891));
            hitListsCardHolder.getDividerCallTime().setBackgroundColor(ThemeUtils.getColor(2131099891));
        }
        if (this.shouldShowWhoICallAnimation && (circleGraphFragment2 = this.graphFragmentFrequentCallersA) != null) {
            circleGraphFragment2.a(this.whoICalledTheMostData);
        }
        if (this.shouldShowWhoCallMeAnimation && (circleGraphFragment = this.graphFragmentFrequentCallersB) != null) {
            circleGraphFragment.a(this.whoCalledMeTheMostData);
        }
        if (this.shouldShowLongestAnimation && (graphFragment = this.graphFragmentLongestCalls) != null) {
            graphFragment.a(this.longestCallsData);
        }
        if (this.shouldShowTotalAnimation) {
            kotlin.a.n.d((List) this.totalCallTimeGraph);
            CallDurationGraphFragment callDurationGraphFragment = this.graphFragmentTotalCallTime;
            if (callDurationGraphFragment != null) {
                callDurationGraphFragment.a(this.totalCallTimeGraph, this.totalCallTimeList);
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contact, Set<? extends ContactField> changedFields) {
        p.d(contact, "contact");
        p.d(changedFields, "changedFields");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final HitListsCardHolder onCreateViewHolder(ViewGroup parent) {
        p.d(parent, "parent");
        Fragment findFragment = this.presentersContainer.findFragment(2131362920);
        Objects.requireNonNull(findFragment, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment");
        this.graphFragmentFrequentCallersA = (CircleGraphFragment) findFragment;
        Fragment findFragment2 = this.presentersContainer.findFragment(2131362921);
        Objects.requireNonNull(findFragment2, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment");
        this.graphFragmentFrequentCallersB = (CircleGraphFragment) findFragment2;
        Fragment findFragment3 = this.presentersContainer.findFragment(2131362919);
        Objects.requireNonNull(findFragment3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.fragment.GraphFragment");
        this.graphFragmentLongestCalls = (GraphFragment) findFragment3;
        Fragment findFragment4 = this.presentersContainer.findFragment(2131362917);
        Objects.requireNonNull(findFragment4, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDurationGraphFragment");
        this.graphFragmentTotalCallTime = (CallDurationGraphFragment) findFragment4;
        PresentersContainer presentersContainer = this.presentersContainer;
        p.b(presentersContainer, "presentersContainer");
        Context realContext = presentersContainer.getRealContext();
        ViewGroup viewGroup = parent;
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(realContext, viewGroup, parent.findViewById(2131362617), 20, 500);
        this.longestVisibilityTracker = inlineVisibilityTracker;
        p.a(inlineVisibilityTracker);
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$1
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
                r0 = r3.f10757a.graphFragmentLongestCalls;
             */
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onVisibilityChanged() {
                /*
                    r3 = this;
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 1
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setShouldShowLongestAnimation$p(r0, r1)
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    boolean r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getAlreadyBounded$p(r0)
                    if (r0 == 0) goto L_0x002c
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.callapp.contacts.activity.analytics.progressGraph.fragment.GraphFragment r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getGraphFragmentLongestCalls$p(r0)
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L_0x002c
                    r0 = r4
                    r1 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    java.util.ArrayList r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getLongestCallsData$p(r1)
                    java.util.List r1 = (java.util.List) r1
                    r0.a(r1)
                L_0x002c:
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.mopub.mobileads.InlineVisibilityTracker r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getLongestVisibilityTracker$p(r0)
                    r4 = r0
                    r0 = r4
                    kotlin.jvm.internal.p.a(r0)
                    r0 = r4
                    r0.destroy()
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 0
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setLongestVisibilityTracker$p(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$1.onVisibilityChanged():void");
            }
        });
        PresentersContainer presentersContainer2 = this.presentersContainer;
        p.b(presentersContainer2, "presentersContainer");
        InlineVisibilityTracker inlineVisibilityTracker2 = new InlineVisibilityTracker(presentersContainer2.getRealContext(), viewGroup, parent.findViewById(2131364560), 20, 500);
        this.whoICallVisibilityTracker = inlineVisibilityTracker2;
        p.a(inlineVisibilityTracker2);
        inlineVisibilityTracker2.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$2
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
                r0 = r3.f10758a.graphFragmentFrequentCallersA;
             */
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onVisibilityChanged() {
                /*
                    r3 = this;
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 1
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setShouldShowWhoICallAnimation$p(r0, r1)
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    boolean r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getAlreadyBounded$p(r0)
                    if (r0 == 0) goto L_0x0029
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getGraphFragmentFrequentCallersA$p(r0)
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L_0x0029
                    r0 = r4
                    r1 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    java.util.List r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getWhoICalledTheMostData$p(r1)
                    r0.a(r1)
                L_0x0029:
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.mopub.mobileads.InlineVisibilityTracker r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getWhoICallVisibilityTracker$p(r0)
                    r4 = r0
                    r0 = r4
                    kotlin.jvm.internal.p.a(r0)
                    r0 = r4
                    r0.destroy()
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 0
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setWhoICallVisibilityTracker$p(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$2.onVisibilityChanged():void");
            }
        });
        PresentersContainer presentersContainer3 = this.presentersContainer;
        p.b(presentersContainer3, "presentersContainer");
        InlineVisibilityTracker inlineVisibilityTracker3 = new InlineVisibilityTracker(presentersContainer3.getRealContext(), viewGroup, parent.findViewById(2131364559), 20, 500);
        this.whoCallMeVisibilityTracker = inlineVisibilityTracker3;
        p.a(inlineVisibilityTracker3);
        inlineVisibilityTracker3.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$3
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
                r0 = r3.f10759a.graphFragmentFrequentCallersB;
             */
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onVisibilityChanged() {
                /*
                    r3 = this;
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 1
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setShouldShowWhoCallMeAnimation$p(r0, r1)
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    boolean r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getAlreadyBounded$p(r0)
                    if (r0 == 0) goto L_0x0029
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getGraphFragmentFrequentCallersB$p(r0)
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L_0x0029
                    r0 = r4
                    r1 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    java.util.List r1 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getWhoCalledMeTheMostData$p(r1)
                    r0.a(r1)
                L_0x0029:
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    com.mopub.mobileads.InlineVisibilityTracker r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.access$getWhoCallMeVisibilityTracker$p(r0)
                    r4 = r0
                    r0 = r4
                    kotlin.jvm.internal.p.a(r0)
                    r0 = r4
                    r0.destroy()
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.HitListsCard r0 = com.callapp.contacts.activity.analytics.cards.HitListsCard.this
                    r1 = 0
                    com.callapp.contacts.activity.analytics.cards.HitListsCard.access$setWhoCallMeVisibilityTracker$p(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$3.onVisibilityChanged():void");
            }
        });
        PresentersContainer presentersContainer4 = this.presentersContainer;
        p.b(presentersContainer4, "presentersContainer");
        InlineVisibilityTracker inlineVisibilityTracker4 = new InlineVisibilityTracker(presentersContainer4.getRealContext(), viewGroup, parent.findViewById(2131362616), 20, 500);
        this.totalVisibilityTracker = inlineVisibilityTracker4;
        p.a(inlineVisibilityTracker4);
        inlineVisibilityTracker4.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.HitListsCard$onCreateViewHolder$4
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public final void onVisibilityChanged() {
                boolean z;
                InlineVisibilityTracker inlineVisibilityTracker5;
                ArrayList arrayList;
                CallDurationGraphFragment callDurationGraphFragment;
                ArrayList<ProfilePictureProgressBarData> arrayList2;
                ArrayList<FavoriteCallersData> arrayList3;
                HitListsCard.this.shouldShowTotalAnimation = true;
                z = HitListsCard.this.alreadyBounded;
                if (z) {
                    arrayList = HitListsCard.this.totalCallTimeGraph;
                    kotlin.a.n.d((List) arrayList);
                    callDurationGraphFragment = HitListsCard.this.graphFragmentTotalCallTime;
                    if (callDurationGraphFragment != null) {
                        arrayList2 = HitListsCard.this.totalCallTimeGraph;
                        arrayList3 = HitListsCard.this.totalCallTimeList;
                        callDurationGraphFragment.a(arrayList2, arrayList3);
                    }
                }
                inlineVisibilityTracker5 = HitListsCard.this.totalVisibilityTracker;
                p.a(inlineVisibilityTracker5);
                inlineVisibilityTracker5.destroy();
                HitListsCard.this.totalVisibilityTracker = null;
            }
        });
        return new HitListsCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public final void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.longestVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
        }
        InlineVisibilityTracker inlineVisibilityTracker2 = this.totalVisibilityTracker;
        if (inlineVisibilityTracker2 != null) {
            inlineVisibilityTracker2.destroy();
        }
        InlineVisibilityTracker inlineVisibilityTracker3 = this.whoCallMeVisibilityTracker;
        if (inlineVisibilityTracker3 != null) {
            inlineVisibilityTracker3.destroy();
        }
        InlineVisibilityTracker inlineVisibilityTracker4 = this.whoICallVisibilityTracker;
        if (inlineVisibilityTracker4 != null) {
            inlineVisibilityTracker4.destroy();
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final void updateCardData(Object obj, boolean z) {
        n<ArrayList<ProfilePictureProgressBarData>, ArrayList<FavoriteCallersData>> totalCallTimeData = getTotalCallTimeData();
        this.totalCallTimeGraph = totalCallTimeData.f36810a;
        this.totalCallTimeList = totalCallTimeData.f36811b;
        this.longestCallsData = getLongestCalls();
        n<List<MultiCircleGraphData>, List<MultiCircleGraphData>> whoICalledTheMostData = getWhoICalledTheMostData();
        this.whoICalledTheMostData = whoICalledTheMostData.f36811b;
        this.whoCalledMeTheMostData = whoICalledTheMostData.f36810a;
        showCard(true);
    }
}
