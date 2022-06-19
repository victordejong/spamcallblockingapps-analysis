.class public final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;",
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
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0001IB\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020\u001bJ\u0008\u0010.\u001a\u00020/H\u0016J\u000e\u00100\u001a\u0008\u0012\u0004\u0012\u00020201H\u0016J\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J\u0008\u00104\u001a\u00020\u001bH\u0016J\u001e\u00105\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u001406J\u001e\u00107\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\'\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\'06J\u0010\u00108\u001a\u0002092\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010:\u001a\u0002092\u0008\u0010;\u001a\u0004\u0018\u00010\u0002H\u0014J\u001e\u0010<\u001a\u0002092\u0006\u0010=\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020201H\u0016J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020BH\u0014J\u0008\u0010C\u001a\u000209H\u0016J\u0008\u0010D\u001a\u000209H\u0002J\u0008\u0010E\u001a\u00020\u0008H\u0016J\u001a\u0010F\u001a\u0002092\u0008\u0010G\u001a\u0004\u0018\u00010\u00032\u0006\u0010H\u001a\u00020\u0008H\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0008\u0012\u0004\u0012\u00020(0\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;",
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;",
        "Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;",
        "",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V",
        "alreadyBounded",
        "",
        "frequentCallersMultiTaskRunner",
        "Lcom/callapp/contacts/framework/util/MultiTaskRunner;",
        "graphFragmentFrequentCallersA",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;",
        "graphFragmentFrequentCallersB",
        "graphFragmentLongestCalls",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;",
        "graphFragmentTotalCallTime",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;",
        "longestCallMultiTaskRunner",
        "longestCallsData",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
        "longestVisibilityTracker",
        "Lcom/mopub/mobileads/InlineVisibilityTracker;",
        "mode",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;",
        "numberOfItems",
        "",
        "shouldShowLongestAnimation",
        "shouldShowTotalAnimation",
        "shouldShowWhoCallMeAnimation",
        "shouldShowWhoICallAnimation",
        "totalCallTImeMultiTaskRunner",
        "totalCallTimeGraph",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
        "totalCallTimeList",
        "totalVisibilityTracker",
        "whoCallMeVisibilityTracker",
        "whoCalledMeTheMostData",
        "",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "whoICallVisibilityTracker",
        "whoICalledTheMostData",
        "getColorByIndex",
        "",
        "index",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getLongestCalls",
        "getPriority",
        "getTotalCallTimeData",
        "Lkotlin/Pair;",
        "getWhoICalledTheMostData",
        "onAnalyticsRefreshCard",
        "",
        "onBindViewHolder",
        "hitListsCardHolder",
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
        "HitListsCardHolder",
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

.field private frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

.field private graphFragmentFrequentCallersA:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private graphFragmentFrequentCallersB:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private graphFragmentLongestCalls:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

.field private graphFragmentTotalCallTime:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

.field private longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

.field private longestCallsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
            ">;"
        }
    .end annotation
.end field

.field private longestVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private final numberOfItems:I

.field private shouldShowLongestAnimation:Z

.field private shouldShowTotalAnimation:Z

.field private shouldShowWhoCallMeAnimation:Z

.field private shouldShowWhoICallAnimation:Z

.field private totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

.field private totalCallTimeGraph:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
            ">;"
        }
    .end annotation
.end field

.field private totalCallTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
            ">;"
        }
    .end annotation
.end field

.field private totalVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private whoCallMeVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private whoCalledMeTheMostData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private whoICallVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private whoICalledTheMostData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0052

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICalledTheMostData:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCalledMeTheMostData:Ljava/util/List;

    .line 53
    new-instance p1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 54
    new-instance p1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 55
    new-instance p1, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p1}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallsData:Ljava/util/ArrayList;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeList:Ljava/util/ArrayList;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    const/4 p1, 0x3

    .line 64
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->numberOfItems:I

    return-void
.end method

.method public static final synthetic access$getAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->alreadyBounded:Z

    return p0
.end method

.method public static final synthetic access$getGraphFragmentFrequentCallersA$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersA:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getGraphFragmentFrequentCallersB$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersB:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getGraphFragmentLongestCalls$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentLongestCalls:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getGraphFragmentTotalCallTime$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentTotalCallTime:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

    return-object p0
.end method

.method public static final synthetic access$getLongestCallsData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallsData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getLongestVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowLongestAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowLongestAnimation:Z

    return p0
.end method

.method public static final synthetic access$getShouldShowTotalAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowTotalAnimation:Z

    return p0
.end method

.method public static final synthetic access$getShouldShowWhoCallMeAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoCallMeAnimation:Z

    return p0
.end method

.method public static final synthetic access$getShouldShowWhoICallAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoICallAnimation:Z

    return p0
.end method

.method public static final synthetic access$getTotalCallTimeGraph$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTotalCallTimeList$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTotalVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$getWhoCallMeVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCallMeVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$getWhoCalledMeTheMostData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCalledMeTheMostData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getWhoICallVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICallVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method public static final synthetic access$getWhoICalledTheMostData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICalledTheMostData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->alreadyBounded:Z

    return-void
.end method

.method public static final synthetic access$setGraphFragmentFrequentCallersA$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersA:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-void
.end method

.method public static final synthetic access$setGraphFragmentFrequentCallersB$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersB:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-void
.end method

.method public static final synthetic access$setGraphFragmentLongestCalls$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentLongestCalls:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    return-void
.end method

.method public static final synthetic access$setGraphFragmentTotalCallTime$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentTotalCallTime:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

    return-void
.end method

.method public static final synthetic access$setLongestCallsData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallsData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setLongestVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method

.method public static final synthetic access$setShouldShowLongestAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowLongestAnimation:Z

    return-void
.end method

.method public static final synthetic access$setShouldShowTotalAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowTotalAnimation:Z

    return-void
.end method

.method public static final synthetic access$setShouldShowWhoCallMeAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoCallMeAnimation:Z

    return-void
.end method

.method public static final synthetic access$setShouldShowWhoICallAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoICallAnimation:Z

    return-void
.end method

.method public static final synthetic access$setTotalCallTimeGraph$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setTotalCallTimeList$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setTotalVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method

.method public static final synthetic access$setWhoCallMeVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCallMeVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method

.method public static final synthetic access$setWhoCalledMeTheMostData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/List;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCalledMeTheMostData:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setWhoICallVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICallVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-void
.end method

.method public static final synthetic access$setWhoICalledTheMostData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/List;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICalledTheMostData:Ljava/util/List;

    return-void
.end method

.method private final refreshCardData()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->updateCardData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getColorByIndex(I)[I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    return-object p1

    .line 437
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    return-object p1

    .line 434
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1201bf

    .line 86
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.card_hit_list_title)"

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

    .line 82
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "EnumSet.of(ContactField.phone)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getLongestCalls()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 286
    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v2, "datePeriod"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4025
    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 4026
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->duration:Lio/objectbox/g;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lio/objectbox/query/QueryBuilder;->d(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 4027
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->duration:Lio/objectbox/g;

    const/4 v6, 0x1

    .line 4283
    invoke-virtual {v1, v2, v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 4027
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    .line 5264
    invoke-virtual {v1}, Lio/objectbox/query/Query;->b()V

    .line 5265
    new-instance v2, Lio/objectbox/query/b;

    iget-object v7, v1, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 6244
    invoke-virtual {v1}, Lio/objectbox/query/Query;->d()[J

    move-result-object v1

    .line 5265
    invoke-direct {v2, v7, v1, v3}, Lio/objectbox/query/b;-><init>(Lio/objectbox/a;[JZ)V

    const-string v1, "getQuery(datePeriod).equ\u2026ation).build().findLazy()"

    .line 4027
    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4030
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4031
    invoke-virtual {v2}, Lio/objectbox/query/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 4032
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, v9, :cond_1

    const-string v9, "callData"

    .line 4036
    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4040
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4041
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4043
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v7}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 289
    iget-object v7, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 7062
    iget-object v7, v7, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 291
    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_7

    .line 292
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .line 581
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 582
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v8, 0x0

    if-nez v4, :cond_2

    move-object v4, v8

    goto :goto_1

    .line 583
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 584
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 585
    :cond_3
    move-object v5, v4

    check-cast v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 292
    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v10

    .line 587
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 588
    move-object v12, v5

    check-cast v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 292
    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_5

    move-object v4, v5

    move-wide v10, v12

    .line 593
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 594
    :goto_1
    check-cast v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 296
    :cond_7
    new-instance v7, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v7}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-array v8, v9, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v3

    sget-object v9, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v9, v8, v6

    const/4 v9, 0x2

    sget-object v10, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v7

    .line 298
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 300
    iget-object v15, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    new-instance v17, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;

    move-object/from16 v10, v17

    move-object v11, v7

    move-object v13, v8

    move-object v14, v2

    move-object v6, v15

    move-wide v15, v4

    invoke-direct/range {v10 .. v16}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$1;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;J)V

    move-object/from16 v10, v17

    check-cast v10, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v6, v10}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    const/4 v6, 0x1

    goto :goto_2

    .line 322
    :cond_8
    iget-object v6, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v6}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 323
    iget v6, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->numberOfItems:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v6, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_9

    .line 325
    new-instance v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    .line 326
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    long-to-float v8, v4

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const v9, 0x7f1204c9

    .line 329
    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v21

    const v9, 0x7f060088

    .line 331
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v29

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v28, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xc1b

    const/16 v33, 0x0

    move-object/from16 v18, v7

    move/from16 v27, v8

    .line 325
    invoke-direct/range {v18 .. v33}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;FII[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 334
    :cond_9
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 595
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$$inlined$sortByDescending$1;

    invoke-direct {v3}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getLongestCalls$$inlined$sortByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    return-object v2
.end method

.method public final getPriority()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public final getTotalCallTimeData()Lkotlin/n;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/n<",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 339
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 342
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 8062
    iget-object v0, v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 346
    new-instance v15, Lkotlin/jvm/internal/ab$b;

    invoke-direct {v15}, Lkotlin/jvm/internal/ab$b;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, v15, Lkotlin/jvm/internal/ab$b;->a:F

    .line 349
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const-string v10, "totalDurationByPhoneNumber.values"

    if-lez v0, :cond_0

    .line 350
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, v15, Lkotlin/jvm/internal/ab$b;->a:F

    .line 353
    :cond_0
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-le v0, v9, :cond_1

    .line 354
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 357
    :goto_0
    iget v2, v15, Lkotlin/jvm/internal/ab$b;->a:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v3

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 359
    iget v0, v15, Lkotlin/jvm/internal/ab$b;->a:F

    sub-float v1, v0, v2

    move/from16 v16, v1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 363
    :goto_1
    iget v0, v15, Lkotlin/jvm/internal/ab$b;->a:F

    add-float v0, v0, v16

    iput v0, v15, Lkotlin/jvm/internal/ab$b;->a:F

    .line 364
    new-instance v17, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 365
    move-object v0, v14

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/a/ai;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 598
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v19, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_3
    check-cast v0, Lkotlin/n;

    .line 9000
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 598
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 10000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 598
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 366
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v5, v1, v8

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v5, v1, v9

    const/4 v5, 0x2

    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 368
    iget-object v7, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    new-instance v20, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;

    move-object/from16 v0, v20

    move-object/from16 v5, p0

    move-object/from16 v6, v17

    move-object/from16 v21, v14

    move-object v14, v7

    move-object v7, v13

    const/16 v22, 0x0

    move-object v8, v12

    move-object/from16 v23, v13

    const/4 v13, 0x1

    move-object v9, v15

    move-object/from16 v24, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$forEachIndexed$lambda$1;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;Ljava/lang/String;IILcom/callapp/contacts/activity/analytics/cards/HitListsCard;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/ab$b;F)V

    move-object/from16 v0, v20

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v14, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move/from16 v4, v19

    move-object/from16 v14, v21

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v24, v10

    move-object/from16 v23, v13

    move-object/from16 v21, v14

    const/4 v13, 0x1

    const/16 v22, 0x0

    .line 400
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTImeMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 403
    iget v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->numberOfItems:I

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 404
    iget v1, v15, Lkotlin/jvm/internal/ab$b;->a:F

    if-ne v0, v13, :cond_5

    .line 406
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_6

    .line 411
    new-instance v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 412
    iget v3, v15, Lkotlin/jvm/internal/ab$b;->a:F

    .line 413
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v34

    int-to-float v4, v8

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v4, v5

    div-float v4, v1, v4

    .line 414
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    const/16 v33, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x21f

    const/16 v37, 0x0

    move-object/from16 v24, v2

    move/from16 v32, v3

    .line 411
    invoke-direct/range {v24 .. v37}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    .line 418
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/16 v46, 0x0

    const/high16 v47, 0x42c80000    # 100.0f

    const/16 v48, 0x3

    const v3, 0x7f06010e

    .line 422
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v49

    const/16 v50, 0x0

    const/16 v51, 0x1

    const/16 v52, 0x45f

    const/16 v53, 0x0

    move-object/from16 v38, v2

    .line 417
    invoke-direct/range {v38 .. v53}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;FII[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v3, v23

    .line 425
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 600
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_7

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    :cond_7
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    .line 602
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v13, :cond_8

    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$2;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getTotalCallTimeData$$inlined$sortByDescending$2;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    :cond_8
    invoke-static {v0}, Lkotlin/a/n;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;->setShowSeparator(Z)V

    .line 428
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, v12, v3}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getWhoICalledTheMostData()Lkotlin/n;
    .locals 65
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

    move-object/from16 v11, p0

    .line 447
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v1, "datePeriod"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10065
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10066
    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v12}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v0, v2, v12}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

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

    .line 10067
    check-cast v0, Ljava/lang/Iterable;

    .line 10235
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 10236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10237
    move-object v5, v3

    check-cast v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 10067
    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v4

    .line 10239
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 10238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 10242
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10238
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 10246
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10070
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10071
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10072
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v13, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10073
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 10249
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 10250
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 10073
    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10251
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 10249
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 10075
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10077
    :cond_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 10252
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 10253
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 10077
    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_7

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10254
    :cond_9
    check-cast v7, Ljava/util/List;

    .line 10252
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 10079
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 10083
    :cond_a
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10084
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10086
    check-cast v1, Ljava/util/Map;

    .line 448
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d()V

    .line 451
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    .line 11062
    iget-object v0, v0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 453
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 454
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

    .line 455
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/a/n;->q(Ljava/lang/Iterable;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 457
    :cond_c
    new-instance v10, Lkotlin/jvm/internal/ab$c;

    invoke-direct {v10}, Lkotlin/jvm/internal/ab$c;-><init>()V

    iput v12, v10, Lkotlin/jvm/internal/ab$c;->a:I

    if-eqz v0, :cond_d

    .line 458
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 459
    iget v2, v10, Lkotlin/jvm/internal/ab$c;->a:I

    add-int/2addr v2, v0

    iput v2, v10, Lkotlin/jvm/internal/ab$c;->a:I

    :cond_d
    if-eqz v3, :cond_e

    .line 461
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 462
    iget v2, v10, Lkotlin/jvm/internal/ab$c;->a:I

    add-int/2addr v2, v0

    iput v2, v10, Lkotlin/jvm/internal/ab$c;->a:I

    .line 466
    :cond_e
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v12

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v13

    const/4 v3, 0x2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v16

    .line 468
    new-instance v17, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 604
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 471
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v9, v1, :cond_f

    const v1, 0x7f06010c

    .line 472
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    goto :goto_8

    :cond_f
    const v1, 0x7f06011b

    .line 474
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    :goto_8
    move/from16 v39, v1

    .line 477
    invoke-static {v0}, Lkotlin/a/ai;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 605
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$$special$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$$special$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 477
    iget v1, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->numberOfItems:I

    invoke-static {v0, v1}, Lkotlin/a/n;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v19

    .line 478
    move-object/from16 v0, v19

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 479
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Iterable;

    .line 606
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/n;

    .line 12000
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 606
    check-cast v1, Ljava/lang/String;

    .line 13000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 606
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 480
    iget-object v8, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    new-instance v21, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;

    move-object/from16 v0, v21

    move/from16 v3, v39

    move-object v4, v9

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object v7, v10

    move-object v12, v8

    move-object/from16 v8, v17

    move-object/from16 v40, v9

    move-object v9, v14

    move-object/from16 v41, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;IILcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/loader/api/ContactLoader;Lkotlin/jvm/internal/ab$c;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v21

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v12, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    move-object/from16 v9, v40

    move-object/from16 v10, v41

    const/4 v12, 0x0

    goto :goto_9

    :cond_10
    move-object/from16 v40, v9

    move-object/from16 v41, v10

    .line 544
    iget v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->numberOfItems:I

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_12

    .line 548
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    move-object/from16 v19, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x42c80000    # 100.0f

    const/16 v24, 0x0

    const/high16 v25, 0x40800000    # 4.0f

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xffd6

    const/16 v38, 0x0

    move/from16 v20, v39

    invoke-direct/range {v19 .. v38}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v3, v13, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 555
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v43, v2

    const-string v3, "Arrays.asList(outerCircle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    move-object/from16 v42, v2

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    .line 559
    sget-object v56, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f1204c9

    .line 560
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v47

    const v3, 0x7f06010f

    .line 561
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    .line 562
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07006b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v50

    const v3, 0x7f0a0233

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    .line 565
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-string v5, "CallAppApplication.get()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701ff

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v61

    const/16 v48, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const v63, 0xbdc2e

    const/16 v64, 0x0

    .line 557
    invoke-direct/range {v42 .. v64}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 568
    sget-object v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-object/from16 v5, v40

    if-ne v5, v3, :cond_11

    .line 569
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 571
    :cond_11
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v40, v5

    goto/16 :goto_a

    :cond_12
    move-object/from16 v10, v41

    const/4 v12, 0x0

    goto/16 :goto_7

    .line 575
    :cond_13
    iget-object v0, v11, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->frequentCallersMultiTaskRunner:Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-virtual {v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    .line 576
    move-object v0, v14

    check-cast v0, Ljava/util/List;

    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_14

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 577
    :cond_14
    move-object v0, v15

    check-cast v0, Ljava/util/List;

    .line 611
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_15

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 578
    :cond_15
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, v14, v15}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 236
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->refreshCardData()V

    return-void
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->alreadyBounded:Z

    if-eqz p1, :cond_2

    .line 149
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

    .line 150
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getDataLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getEmptyLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getDataLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getEmptyLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFirstPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080286

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getSecondPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080288

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getThirdPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08028a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFirstPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getSecondPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getThirdPlaceHolder()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08028b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFavoriteTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037c

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFavoriteSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFrequentTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037d

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFrequentSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037e

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getCallTimeTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037b

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getCallTimeSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12037a

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getWhoCallMe()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12009f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getWhoICall()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1200a0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFavoriteTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFrequentTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getCallTimeTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getCallTimeSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFrequentSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getFavoriteSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getWhoICall()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getWhoCallMe()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getDividerFavorite()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getDividerFrequent()Landroid/view/View;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;->getDividerCallTime()Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    :cond_2
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoICallAnimation:Z

    if-eqz p1, :cond_3

    .line 196
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersA:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICalledTheMostData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 198
    :cond_3
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowWhoCallMeAnimation:Z

    if-eqz p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersB:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCalledMeTheMostData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 201
    :cond_4
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowLongestAnimation:Z

    if-eqz p1, :cond_5

    .line 202
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentLongestCalls:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallsData:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a(Ljava/util/List;)V

    .line 204
    :cond_5
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->shouldShowTotalAnimation:Z

    if-eqz p1, :cond_6

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/a/n;->d(Ljava/util/List;)V

    .line 206
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentTotalCallTime:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_6
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;)V

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

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a0468

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersA:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 97
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v4, 0x7f0a0469

    invoke-interface {v2, v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentFrequentCallersB:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 98
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a0467

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.fragment.GraphFragment"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentLongestCalls:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    .line 99
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v3, 0x7f0a0465

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDurationGraphFragment"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->graphFragmentTotalCallTime:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDurationGraphFragment;

    .line 102
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const-string v9, "presentersContainer"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v4

    move-object v15, v1

    check-cast v15, Landroid/view/View;

    const v3, 0x7f0a0339

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x14

    const/16 v8, 0x1f4

    move-object v3, v2

    move-object v5, v15

    invoke-direct/range {v3 .. v8}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 103
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)V

    check-cast v3, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 112
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v11

    const v3, 0x7f0a0ad0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x14

    const/16 v3, 0x1f4

    move-object v10, v2

    move-object v12, v15

    move-object v4, v15

    move v15, v3

    invoke-direct/range {v10 .. v15}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICallVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)V

    check-cast v3, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 122
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v11

    const v3, 0x7f0a0acf

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v15, 0x1f4

    move-object v10, v2

    move-object v12, v4

    invoke-direct/range {v10 .. v15}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCallMeVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 123
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$3;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)V

    check-cast v3, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 132
    new-instance v2, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v11

    const v3, 0x7f0a0338

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 133
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$4;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$4;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)V

    check-cast v1, Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 143
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;

    invoke-direct {v1, v4}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCallMeVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICallVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 216
    :cond_3
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getTotalCallTimeData()Lkotlin/n;

    move-result-object p1

    .line 1027
    iget-object p2, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 221
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeGraph:Ljava/util/ArrayList;

    .line 1028
    iget-object p1, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 222
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->totalCallTimeList:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getLongestCalls()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->longestCallsData:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getWhoICalledTheMostData()Lkotlin/n;

    move-result-object p1

    .line 2028
    iget-object p2, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 225
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoICalledTheMostData:Ljava/util/List;

    .line 3027
    iget-object p1, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 226
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->whoCalledMeTheMostData:Ljava/util/List;

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->showCard(Z)V

    return-void
.end method
