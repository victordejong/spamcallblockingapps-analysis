.class public final Lcom/facebook/ads/redexgen/X/Ta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/I0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4G(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/IA;
    .locals 2
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54608
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TZ;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final A54()J
    .locals 2

    .line 54609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AEW()J
    .locals 2

    .line 54610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
