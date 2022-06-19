.class public final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0016\u0012\n\u0012\u0008\u0018\u00010\u0002R\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u00014B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0008\u0010 \u001a\u00020\u0013H\u0016J\u001e\u0010!\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010%\u001a\u00020$2\u000c\u0010&\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0014J\u001e\u0010\'\u001a\u00020$2\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0014\u0010+\u001a\u00060\u0002R\u00020\u00002\u0006\u0010,\u001a\u00020-H\u0014J\u0008\u0010.\u001a\u00020$H\u0016J\u0006\u0010/\u001a\u00020$J\u0008\u00100\u001a\u00020\u0008H\u0016J\u001a\u00101\u001a\u00020$2\u0008\u00102\u001a\u0004\u0018\u00010\u00032\u0006\u00103\u001a\u00020\u0008H\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;",
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;",
        "Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;",
        "",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V",
        "alreadyBounded",
        "",
        "avoidYouData",
        "",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "avoidYouFragment",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;",
        "avoidYouVisibilityTracker",
        "Lcom/mopub/mobileads/InlineVisibilityTracker;",
        "mode",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;",
        "numberOfItems",
        "",
        "shouldShowAvoidYouAnimation",
        "shouldShowYouAvoidAnimation",
        "unansweredCallsMultiTask",
        "Lcom/callapp/contacts/framework/util/MultiTaskRunner;",
        "youAvoidData",
        "youAvoidFragment",
        "youAvoidVisibilityTracker",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getPriority",
        "getWhoICalledTheMostData",
        "Lkotlin/Pair;",
        "onAnalyticsRefreshCard",
        "",
        "onBindViewHolder",
        "unansweredCallsCardCardHolder",
        "onContactChanged",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "changedFields",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "refreshCardData",
        "showShouldExpandButton",
        "updateCardData",
        "data",
        "forceRefresh",
        "UnansweredCallsCardCardHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private alreadyBounded:Z

.field private avoidYouData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private avoidYouFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private avoidYouVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private final numberOfItems:I

.field private shouldShowAvoidYouAnimation:Z

.field private shouldShowYouAvoidAnimation:Z

.field private unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

.field private youAvoidData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private youAvoidFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private youAvoidVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0057

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidData:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouData:Ljava/util/List;

    .line 46
    new-instance p1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    const/4 p1, 0x3

    .line 47
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->numberOfItems:I

    return-void
.end method

.method public static final synthetic access$getAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->alreadyBounded:Z

    return p0
.end method

.method public static final synthetic access$getAvoidYouData$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getAvoidYouFragment$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getAvoidYouVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowAvoidYouAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowAvoidYouAnimation:Z

    return p0
.end method

.method public static final synthetic access$getShouldShowYouAvoidAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowYouAvoidAnimation:Z

    return p0
.end method

.method public static final synthetic access$getYouAvoidData$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getYouAvoidFragment$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getYouAvoidVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$setAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->alreadyBounded:Z

    return-void
.end method

.method public static final synthetic access$setAvoidYouData$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Ljava/util/List;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouData:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setAvoidYouFragment$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-void
.end method

.method public static final synthetic access$setAvoidYouVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method

.method public static final synthetic access$setShouldShowAvoidYouAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowAvoidYouAnimation:Z

    return-void
.end method

.method public static final synthetic access$setShouldShowYouAvoidAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowYouAvoidAnimation:Z

    return-void
.end method

.method public static final synthetic access$setYouAvoidData$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Ljava/util/List;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidData:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setYouAvoidFragment$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-void
.end method

.method public static final synthetic access$setYouAvoidVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method


# virtual methods
.method public final getHeaderTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1201ce

    .line 64
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.s\u2026nswered_and_missed_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "EnumSet.of(ContactField.phone)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    const/16 v0, 0x82

    return v0
.end method

.method public final getWhoICalledTheMostData()Lkotlin/n;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/n<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 161
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v1, "datePeriod"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1122
    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v0, v2, v10}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v0, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v2, "getQuery(datePeriod).equ\u2026isExclude).build().find()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    check-cast v0, Ljava/lang/Iterable;

    .line 1286
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 1287
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1288
    move-object v5, v3

    check-cast v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 1123
    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v4

    .line 1290
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1293
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 1297
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1125
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1126
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1127
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v11, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1128
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 1300
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 1301
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 1128
    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v12

    sget-object v13, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1302
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 1300
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 1303
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 1304
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 1132
    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v12

    sget-object v13, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v12, v13, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_7

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1305
    :cond_9
    check-cast v7, Ljava/util/List;

    .line 1303
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1134
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1138
    :cond_a
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    check-cast v1, Ljava/util/Map;

    .line 162
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v0, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 165
    iget-object v0, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 2062
    iget-object v0, v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 167
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 170
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->q(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    :cond_b
    move-object v0, v3

    :goto_6
    if-eqz v2, :cond_c

    .line 171
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/a/n;->q(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 173
    :cond_c
    new-instance v14, Lkotlin/jvm/internal/ab$c;

    invoke-direct {v14}, Lkotlin/jvm/internal/ab$c;-><init>()V

    iput v10, v14, Lkotlin/jvm/internal/ab$c;->a:I

    if-eqz v0, :cond_d

    .line 174
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 175
    iget v2, v14, Lkotlin/jvm/internal/ab$c;->a:I

    add-int/2addr v2, v0

    iput v2, v14, Lkotlin/jvm/internal/ab$c;->a:I

    :cond_d
    if-eqz v3, :cond_e

    .line 177
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 178
    iget v2, v14, Lkotlin/jvm/internal/ab$c;->a:I

    add-int/2addr v2, v0

    iput v2, v14, Lkotlin/jvm/internal/ab$c;->a:I

    .line 181
    :cond_e
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v10

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v11

    const/4 v3, 0x2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v15

    .line 182
    new-instance v16, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 386
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 185
    invoke-static {v0}, Lkotlin/a/ai;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 387
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$$special$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$$special$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 185
    iget v1, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->numberOfItems:I

    invoke-static {v0, v1}, Lkotlin/a/n;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v18

    .line 186
    move-object/from16 v0, v18

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 187
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v8, v0, :cond_f

    .line 188
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Iterable;

    .line 388
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/n;

    .line 3000
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 388
    check-cast v1, Ljava/lang/String;

    .line 4000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 388
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 189
    iget-object v7, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    new-instance v20, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;

    move-object/from16 v0, v20

    move-object/from16 v3, p0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v14

    move-object v10, v7

    move-object v7, v12

    move-object v11, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;ILcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/callapp/contacts/loader/api/ContactLoader;Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/ab$c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v10, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move-object v8, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    move-object v11, v8

    .line 248
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v11, v0, :cond_11

    .line 249
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Iterable;

    .line 390
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/n;

    .line 5000
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 390
    check-cast v1, Ljava/lang/String;

    .line 6000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 390
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 250
    iget-object v8, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    new-instance v19, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;

    move-object/from16 v0, v19

    move-object/from16 v3, p0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v14

    move-object v7, v12

    move-object/from16 v20, v10

    move-object v10, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;-><init>(Ljava/lang/String;ILcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/callapp/contacts/loader/api/ContactLoader;Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/ab$c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v19

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v10, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move-object/from16 v10, v20

    goto :goto_9

    :cond_10
    move-object v11, v8

    .line 302
    :cond_11
    iget v0, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->numberOfItems:I

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 303
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const v2, 0x7f0701ff

    const-string v3, "CallAppApplication.get()"

    const v4, 0x7f0a0233

    const v5, 0x7f06010f

    const v6, 0x7f1204c9

    const v7, 0x7f06001b

    if-ne v11, v1, :cond_12

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_12

    .line 306
    new-instance v8, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    move-object/from16 v21, v8

    .line 307
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x0

    const/high16 v27, 0x40800000    # 4.0f

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0xffd6

    const/16 v40, 0x0

    .line 306
    invoke-direct/range {v21 .. v40}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x1

    new-array v7, v10, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    .line 313
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v22, v7

    const-string v8, "Arrays.asList(outerCircle)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    move-object/from16 v21, v7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 317
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 318
    sget-object v35, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07006b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    .line 320
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 323
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const v42, 0xbdc2e

    const/16 v43, 0x0

    .line 315
    invoke-direct/range {v21 .. v43}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 325
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    const v7, 0x7f06001b

    goto/16 :goto_a

    .line 328
    :cond_12
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v11, v1, :cond_13

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_13

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v22, v7

    const-string v8, "Collections.emptyList()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    move-object/from16 v21, v7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 336
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 337
    sget-object v35, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 338
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const v8, 0x7f06001b

    .line 339
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 340
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 342
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const v42, 0x9dcae

    const/16 v43, 0x0

    .line 334
    invoke-direct/range {v21 .. v43}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_7

    .line 347
    :cond_14
    iget-object v0, v9, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->unansweredCallsMultiTask:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 348
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .line 393
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    :cond_15
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 395
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_16

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    :cond_16
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, v12, v13}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 152
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->refreshCardData()V

    return-void
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->alreadyBounded:Z

    if-eqz p1, :cond_2

    .line 101
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.isPremium.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getDataLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getEmptyLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getDataLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getEmptyLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getEmptyImg()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080672

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getEmptyImg()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080673

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getYouAvoidTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120458

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getAvoidYouTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1207e8

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getYouAvoidTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getAvoidYouTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getYouAvoidSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1201cf

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getAvoidYouSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1201b1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getYouAvoidSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getAvoidYouSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getYouAvoidDivider()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;->getAvoidYouDivider()Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    :cond_2
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowYouAvoidAnimation:Z

    if-eqz p1, :cond_3

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 134
    :cond_3
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->shouldShowAvoidYouAnimation:Z

    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;)V

    return-void
.end method

.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "+",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "changedFields"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a0ae1

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 73
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v4, 0x7f0a00fd

    invoke-interface {v2, v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 75
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const-string v9, "presentersContainer"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v4

    move-object v15, v1

    check-cast v15, Landroid/view/View;

    const v3, 0x7f0a00ff

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x14

    const/16 v8, 0x1f4

    move-object v3, v2

    move-object v5, v15

    invoke-direct/range {v3 .. v8}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 76
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$1;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)V

    check-cast v3, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 85
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v11

    const v3, 0x7f0a0ae3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x14

    const/16 v1, 0x1f4

    move-object v10, v2

    move-object v12, v15

    move-object v3, v15

    move v15, v1

    invoke-direct/range {v10 .. v15}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 86
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)V

    check-cast v1, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 95
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;

    invoke-direct {v1, v0, v3}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Landroid/view/View;)V

    return-object v1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 158
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public final refreshCardData()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->updateCardData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->getWhoICalledTheMostData()Lkotlin/n;

    move-result-object p1

    .line 1027
    iget-object p2, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 141
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->youAvoidData:Ljava/util/List;

    .line 1028
    iget-object p1, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 142
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->avoidYouData:Ljava/util/List;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->showCard(Z)V

    return-void
.end method
