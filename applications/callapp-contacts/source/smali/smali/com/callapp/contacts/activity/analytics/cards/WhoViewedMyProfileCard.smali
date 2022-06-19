.class public Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;",
        "Landroid/util/Pair<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/util/HashMap<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Integer;",
        ">;>;",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/util/HashMap<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Integer;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private final MIN_DATA:I

.field private final MULTIPLE_Y_AXIS:D

.field private final ONE_MONTH:I

.field private final TWELVE_POINTS:I

.field private alreadyBounded:Z

.field private alreadyTrack:Z

.field private graphPointsCurrent:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private graphPointsPrevious:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private needToShowGraph:Z

.field private whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

.field private whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 2

    const v0, 0x7f0d0058

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyBounded:Z

    .line 49
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyTrack:Z

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->needToShowGraph:Z

    const/16 v0, 0xc

    .line 54
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->TWELVE_POINTS:I

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->MIN_DATA:I

    .line 56
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->ONE_MONTH:I

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 57
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->MULTIPLE_Y_AXIS:D

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyTrack:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->needToShowGraph:Z

    return p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->handleGraph()V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private handleGraph()V
    .locals 11

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->needToShowGraph:Z

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/jjoe64/graphview/a/c;

    .line 167
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 169
    new-instance v6, Lcom/jjoe64/graphview/a/c;

    int-to-double v7, v4

    int-to-double v9, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/jjoe64/graphview/a/c;-><init>(DD)V

    aput-object v6, v1, v4

    if-le v5, v3, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 2378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const/4 v4, 0x1

    .line 179
    invoke-virtual {v2, v4}, Lcom/jjoe64/graphview/j;->b(Z)D

    .line 180
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 3378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const-wide/high16 v5, 0x4026000000000000L    # 11.0

    .line 180
    invoke-virtual {v2, v5, v6}, Lcom/jjoe64/graphview/j;->c(D)V

    .line 181
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 4378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    const-wide/16 v5, 0x0

    .line 181
    invoke-virtual {v2, v5, v6}, Lcom/jjoe64/graphview/j;->d(D)V

    .line 182
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 5378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 182
    invoke-virtual {v2}, Lcom/jjoe64/graphview/j;->c()V

    .line 183
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 6378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 183
    sget-object v7, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    invoke-virtual {v2, v7}, Lcom/jjoe64/graphview/j;->a(Lcom/jjoe64/graphview/j$a;)V

    .line 184
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 7378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 184
    invoke-virtual {v2, v0}, Lcom/jjoe64/graphview/j;->d(Z)D

    .line 185
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 8378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double v7, v7, v9

    .line 185
    invoke-virtual {v2, v7, v8}, Lcom/jjoe64/graphview/j;->a(D)V

    .line 186
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 9378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 186
    invoke-virtual {v2, v5, v6}, Lcom/jjoe64/graphview/j;->b(D)V

    .line 187
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 10378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 187
    invoke-virtual {v2}, Lcom/jjoe64/graphview/j;->d()V

    .line 188
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v2

    .line 11378
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->c:Lcom/jjoe64/graphview/j;

    .line 188
    sget-object v3, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/j;->b(Lcom/jjoe64/graphview/j$a;)V

    .line 191
    new-instance v2, Lcom/jjoe64/graphview/a/e;

    invoke-direct {v2, v1}, Lcom/jjoe64/graphview/a/e;-><init>([Lcom/jjoe64/graphview/a/d;)V

    .line 11566
    iget-object v1, v2, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 12042
    iput-boolean v4, v1, Lcom/jjoe64/graphview/a/e$a;->b:Z

    const v1, 0x7f06008a

    .line 194
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 12622
    iget-object v3, v2, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 13042
    iput v1, v3, Lcom/jjoe64/graphview/a/e$a;->e:I

    .line 13639
    iput-boolean v4, v2, Lcom/jjoe64/graphview/a/e;->g:Z

    .line 14588
    iget-object v1, v2, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    .line 15042
    iput-boolean v4, v1, Lcom/jjoe64/graphview/a/e$a;->c:Z

    const v1, 0x7f060088

    .line 197
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 15285
    iput v1, v2, Lcom/jjoe64/graphview/a/b;->c:I

    .line 15604
    iget-object v1, v2, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    const/high16 v3, 0x40e00000    # 7.0f

    .line 16042
    iput v3, v1, Lcom/jjoe64/graphview/a/e$a;->d:F

    .line 16542
    iget-object v1, v2, Lcom/jjoe64/graphview/a/e;->f:Lcom/jjoe64/graphview/a/e$a;

    const/16 v3, 0x9

    .line 17042
    iput v3, v1, Lcom/jjoe64/graphview/a/e$a;->a:I

    .line 203
    new-instance v1, Lcom/jjoe64/graphview/helper/a;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v3}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/jjoe64/graphview/helper/a;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    .line 205
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM d"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 208
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, -0x1

    .line 209
    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 210
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 212
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v0

    aput-object v9, v5, v4

    aput-object v6, v5, v7

    const-string v0, ""

    const/4 v3, 0x3

    aput-object v0, v5, v3

    .line 214
    invoke-virtual {v1, v5}, Lcom/jjoe64/graphview/helper/a;->a([Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 17236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 216
    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/c;->a(Lcom/jjoe64/graphview/d;)V

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 18236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 217
    invoke-virtual {v0}, Lcom/jjoe64/graphview/c;->j()V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 19236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    const v1, 0x7f0601ec

    .line 218
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jjoe64/graphview/c;->c(I)V

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 20236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 219
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/jjoe64/graphview/c;->b(I)V

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 21236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 220
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/c;->a(I)V

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 22236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 22762
    iput v3, v0, Lcom/jjoe64/graphview/c;->e:I

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    .line 23236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 23487
    iput-boolean v4, v0, Lcom/jjoe64/graphview/c;->g:Z

    .line 23488
    iput-boolean v4, v0, Lcom/jjoe64/graphview/c;->f:Z

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jjoe64/graphview/GraphView;->a(Lcom/jjoe64/graphview/a/h;)V

    :cond_2
    return-void
.end method

.method private refreshCardData()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 241
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    .line 242
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsPrevious:Landroid/util/Pair;

    .line 244
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->updateCardData(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12086e

    .line 77
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 251
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)V
    .locals 6

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyBounded:Z

    .line 108
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsPrevious:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsPrevious:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsPrevious:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "%d%%"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_1

    const v0, 0x7f0802e2

    goto :goto_1

    :cond_1
    const v0, 0x7f0802e1

    :goto_1
    if-lez v1, :cond_2

    const v1, 0x7f06010c

    goto :goto_2

    :cond_2
    const v1, 0x7f06001b

    .line 116
    :goto_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 119
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120870

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12086f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080417

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 128
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080588

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120601

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600a9

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 131
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->alreadyTrack:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->needToShowGraph:Z

    if-eqz p1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->handleGraph()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;
    .locals 7

    .line 87
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    .line 88
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 89
    new-instance p1, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)V

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileHolder:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->whoViewedMyProfileVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Landroid/util/Pair;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;>;Z)V"
        }
    .end annotation

    .line 148
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/util/Pair;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsCurrent:Landroid/util/Pair;

    .line 149
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->graphPointsPrevious:Landroid/util/Pair;

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne p1, p2, :cond_3

    .line 151
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->g()J

    move-result-wide p1

    const-wide/16 v0, 0x4

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hF:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->showCard(Z)V

    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->hideCard()V

    :cond_3
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 44
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->updateCardData(Landroid/util/Pair;Z)V

    return-void
.end method
