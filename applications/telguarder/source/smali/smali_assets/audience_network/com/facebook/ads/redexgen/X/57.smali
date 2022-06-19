.class public final Lcom/facebook/ads/redexgen/X/57;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 1
    .param p2    # Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/AudienceNetworkAds$InitListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12979
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 12980
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/91;->A0G(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 12981
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 12982
    invoke-static {}, Lcom/facebook/ads/redexgen/X/91;->A0I()Z

    move-result v0

    return v0
.end method

.method public final maybeAttachCrashListener(Landroid/content/Context;)V
    .locals 1

    .line 12983
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/91;->A07(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 12984
    return-void
.end method

.method public final onAdEventManagerCreated(Landroid/content/Context;)V
    .locals 1

    .line 12985
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/91;->A08(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 12986
    return-void
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .locals 1

    .line 12987
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/91;->A09(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 12988
    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .locals 1

    .line 12989
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/91;->A0A(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 12990
    return-void
.end method
