.class public Lcom/mopub/network/RequestRateTracker$TimeRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/RequestRateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeRecord"
.end annotation


# instance fields
.field final a:J

.field public final mBlockIntervalMs:I

.field public final mReason:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->a:J

    .line 31
    iput p1, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    if-nez p2, :cond_0

    const-string p2, "unknown"

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mReason:Ljava/lang/String;

    return-void
.end method
