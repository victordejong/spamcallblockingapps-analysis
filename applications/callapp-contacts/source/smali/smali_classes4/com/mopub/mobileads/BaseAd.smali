.class public abstract Lcom/mopub/mobileads/BaseAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field protected b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field protected c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Landroid/content/Context;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    iput-object p2, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 102
    invoke-virtual {p0, p1, p3}, Lcom/mopub/mobileads/BaseAd;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method final a(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 150
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseAd;->a()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected abstract getAdNetworkId()Ljava/lang/String;
.end method

.method protected getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getProviderTag()Ljava/lang/String;
.end method

.method protected abstract load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onInvalidate()V
.end method

.method public shouldReportImpressionAndClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
