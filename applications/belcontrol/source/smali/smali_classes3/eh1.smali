.class public Leh1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh1$b;,
        Leh1$c;,
        Leh1$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public b:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Leh1$b;

.field public f:Leh1$d;

.field public final g:Leh1$c;

.field public final h:Landroid/os/Handler;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Leh1;->d:Landroid/view/View;

    iput-object p3, p0, Leh1;->c:Landroid/view/View;

    new-instance p2, Leh1$b;

    invoke-direct {p2, p4, p5}, Leh1$b;-><init>(II)V

    iput-object p2, p0, Leh1;->e:Leh1$b;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Leh1;->h:Landroid/os/Handler;

    new-instance p2, Leh1$c;

    invoke-direct {p2, p0}, Leh1$c;-><init>(Leh1;)V

    iput-object p2, p0, Leh1;->g:Leh1$c;

    new-instance p2, Leh1$a;

    invoke-direct {p2, p0}, Leh1$a;-><init>(Leh1;)V

    iput-object p2, p0, Leh1;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Leh1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1, p3}, Leh1;->k(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Leh1;)Z
    .locals 0

    iget-boolean p0, p0, Leh1;->j:Z

    return p0
.end method

.method public static synthetic b(Leh1;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh1;->j:Z

    return p1
.end method

.method public static synthetic c(Leh1;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh1;->i:Z

    return p1
.end method

.method public static synthetic d(Leh1;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Leh1;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic e(Leh1;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Leh1;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic f(Leh1;)Leh1$b;
    .locals 0

    iget-object p0, p0, Leh1;->e:Leh1$b;

    return-object p0
.end method

.method public static synthetic g(Leh1;)Leh1$d;
    .locals 0

    iget-object p0, p0, Leh1;->f:Leh1$d;

    return-object p0
.end method


# virtual methods
.method public h()V
    .locals 2

    iget-object v0, p0, Leh1;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Leh1;->i:Z

    iget-object v0, p0, Leh1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leh1;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Leh1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Leh1;->f:Leh1$d;

    return-void
.end method

.method public i()V
    .locals 4

    iget-boolean v0, p0, Leh1;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Leh1;->i:Z

    iget-object v0, p0, Leh1;->h:Landroid/os/Handler;

    iget-object v1, p0, Leh1;->g:Leh1$c;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j(Leh1$d;)V
    .locals 0

    iput-object p1, p0, Leh1;->f:Leh1$d;

    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Leh1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to set Visibility Tracker due to no available root view."

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Leh1;->b:Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Leh1;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
