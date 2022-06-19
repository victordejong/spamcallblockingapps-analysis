.class final Lcom/mopub/nativeads/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field final a:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/a;->b:Landroid/os/Handler;

    .line 20
    invoke-static {p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/a;->a:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-void
.end method


# virtual methods
.method public final loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/mopub/nativeads/a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/nativeads/a$1;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/a$1;-><init>(Lcom/mopub/nativeads/a;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
