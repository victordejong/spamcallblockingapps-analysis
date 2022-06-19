.class public Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitRequest"
.end annotation


# instance fields
.field public final a:[Landroid/view/View;

.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Runnable;

.field public d:I

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a;-><init>(Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:[Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:[Landroid/view/View;

    array-length p1, p1

    iput p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:I

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
