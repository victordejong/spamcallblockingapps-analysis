.class final Lcom/mopub/network/RequestRateTracker$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/RequestRateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mopub/network/RequestRateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/mopub/network/RequestRateTracker;

    invoke-direct {v0}, Lcom/mopub/network/RequestRateTracker;-><init>()V

    sput-object v0, Lcom/mopub/network/RequestRateTracker$a;->a:Lcom/mopub/network/RequestRateTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/mopub/network/RequestRateTracker;
    .locals 1

    .line 43
    sget-object v0, Lcom/mopub/network/RequestRateTracker$a;->a:Lcom/mopub/network/RequestRateTracker;

    return-object v0
.end method
