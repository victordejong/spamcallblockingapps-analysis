.class public Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenMetricsWaiter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelLastRequest()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->b:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1221
    iput-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Ljava/lang/Runnable;

    .line 236
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->b:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    :cond_0
    return-void
.end method

.method public varargs waitFor([Landroid/view/View;)Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;
    .locals 2

    .line 229
    new-instance v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;-><init>(Landroid/os/Handler;[Landroid/view/View;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->b:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    return-object v0
.end method
