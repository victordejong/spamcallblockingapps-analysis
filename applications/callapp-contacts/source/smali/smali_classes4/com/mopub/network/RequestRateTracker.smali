.class public Lcom/mopub/network/RequestRateTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/RequestRateTracker$a;,
        Lcom/mopub/network/RequestRateTracker$TimeRecord;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/network/RequestRateTracker$TimeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/RequestRateTracker;->a:Ljava/util/Map;

    return-void
.end method

.method static a()J
    .locals 2

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b()J
    .locals 2

    .line 1088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/mopub/network/RequestRateTracker;
    .locals 1

    .line 54
    invoke-static {}, Lcom/mopub/network/RequestRateTracker$a;->a()Lcom/mopub/network/RequestRateTracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRecordForAdUnit(Ljava/lang/String;)Lcom/mopub/network/RequestRateTracker$TimeRecord;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mopub/network/RequestRateTracker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    return-object p1
.end method
