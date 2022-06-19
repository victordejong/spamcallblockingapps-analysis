.class public Lcom/amazon/device/ads/DTBBidInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;
    }
.end annotation


# static fields
.field static a:Lcom/amazon/device/ads/DTBBidInspector;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/device/ads/DTBBidInspector;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBBidInspector;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBBidInspector;->a:Lcom/amazon/device/ads/DTBBidInspector;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBBidInspector;->b:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBBidInspector;->c:Ljava/util/Timer;

    .line 31
    new-instance v2, Lcom/amazon/device/ads/DTBBidInspector$1;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/DTBBidInspector$1;-><init>(Lcom/amazon/device/ads/DTBBidInspector;)V

    const-wide/32 v3, 0x2bf20

    const-wide/32 v5, 0x2bf20

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static a()Lcom/amazon/device/ads/DTBBidInspector;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/device/ads/DTBBidInspector;->a:Lcom/amazon/device/ads/DTBBidInspector;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/device/ads/DTBBidInspector;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBBidInspector;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 10

    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 43
    iget-object v2, p0, Lcom/amazon/device/ads/DTBBidInspector;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;

    .line 44
    iget-wide v5, v5, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->b:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x75300

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 52
    iget-object v1, p0, Lcom/amazon/device/ads/DTBBidInspector;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 62
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;-><init>(Lcom/amazon/device/ads/DTBBidInspector;)V

    .line 63
    iput-object p1, v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->a:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/device/ads/DTBBidInspector$BidDescriptor;->b:J

    .line 66
    iget-object p1, p0, Lcom/amazon/device/ads/DTBBidInspector;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
