.class public abstract Lcom/mopub/mobileads/BaseAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field public c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
.end method

.method public b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Lcom/mopub/common/LifecycleListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end method

.method public final d(Landroid/content/Context;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdData;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p0, p2, p3}, Lcom/mopub/mobileads/BaseAd;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseAd;->c()Lcom/mopub/common/LifecycleListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/common/MoPubLifecycleManager;->addLifecycleListener(Lcom/mopub/common/LifecycleListener;)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/mopub/mobileads/BaseAd;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method public final e(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    .locals 0

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseAd;->g()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseAd;->a:Z

    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public abstract getAdNetworkId()Ljava/lang/String;
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public abstract load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
.end method

.method public abstract onInvalidate()V
.end method
