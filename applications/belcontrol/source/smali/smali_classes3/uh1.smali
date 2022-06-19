.class public Luh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Luh1;->a:Landroid/os/Handler;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object p1

    iput-object p1, p0, Luh1;->b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-void
.end method

.method public static synthetic a(Luh1;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 0

    iget-object p0, p0, Luh1;->b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-object p0
.end method


# virtual methods
.method public loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 1

    iget-object p1, p0, Luh1;->a:Landroid/os/Handler;

    new-instance v0, Luh1$a;

    invoke-direct {v0, p0, p2}, Luh1$a;-><init>(Luh1;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
