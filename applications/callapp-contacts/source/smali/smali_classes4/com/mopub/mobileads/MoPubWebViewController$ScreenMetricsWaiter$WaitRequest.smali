.class public Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitRequest"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field b:Ljava/lang/Runnable;

.field c:I

.field final d:Ljava/lang/Runnable;

.field private final e:[Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$1;-><init>(Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:Ljava/lang/Runnable;

    .line 176
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:Landroid/os/Handler;

    .line 177
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:[Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;)[Landroid/view/View;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:[Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 181
    iget v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:I

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 1

    .line 214
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->b:Ljava/lang/Runnable;

    .line 215
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->e:[Landroid/view/View;

    array-length p1, p1

    iput p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->c:I

    .line 216
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
