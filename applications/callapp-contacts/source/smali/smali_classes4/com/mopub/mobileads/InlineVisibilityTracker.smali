.class public Lcom/mopub/mobileads/InlineVisibilityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/InlineVisibilityTracker$a;,
        Lcom/mopub/mobileads/InlineVisibilityTracker$b;,
        Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;
    }
.end annotation


# instance fields
.field final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Lcom/mopub/mobileads/InlineVisibilityTracker$a;

.field private f:Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

.field private final g:Lcom/mopub/mobileads/InlineVisibilityTracker$b;

.field private final h:Landroid/os/Handler;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    iput-object p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->d:Landroid/view/View;

    .line 97
    iput-object p3, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->c:Landroid/view/View;

    .line 99
    new-instance p2, Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    invoke-direct {p2, p4, p5}, Lcom/mopub/mobileads/InlineVisibilityTracker$a;-><init>(II)V

    iput-object p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->e:Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    .line 100
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->h:Landroid/os/Handler;

    .line 101
    new-instance p2, Lcom/mopub/mobileads/InlineVisibilityTracker$b;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/InlineVisibilityTracker$b;-><init>(Lcom/mopub/mobileads/InlineVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->g:Lcom/mopub/mobileads/InlineVisibilityTracker$b;

    .line 103
    new-instance p2, Lcom/mopub/mobileads/InlineVisibilityTracker$1;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/InlineVisibilityTracker$1;-><init>(Lcom/mopub/mobileads/InlineVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 111
    new-instance p4, Ljava/lang/ref/WeakReference;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->b:Ljava/lang/ref/WeakReference;

    .line 1116
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/ViewTreeObserver;

    if-eqz p4, :cond_0

    .line 1117
    invoke-virtual {p4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p4

    if-nez p4, :cond_3

    .line 1121
    :cond_0
    invoke-static {p1, p3}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_1

    .line 1123
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "Unable to set Visibility Tracker due to no available root view."

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 1127
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1128
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p5

    if-nez p5, :cond_2

    .line 1129
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, p4, [Ljava/lang/Object;

    const-string p4, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 1134
    :cond_2
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->b:Ljava/lang/ref/WeakReference;

    .line 1135
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/InlineVisibilityTracker;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/mobileads/InlineVisibilityTracker;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->e:Lcom/mopub/mobileads/InlineVisibilityTracker$a;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->f:Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/mobileads/InlineVisibilityTracker;)Z
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->j:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 168
    iget-boolean v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->i:Z

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->g:Lcom/mopub/mobileads/InlineVisibilityTracker$b;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iput-boolean v1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->i:Z

    .line 157
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->f:Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    return-void
.end method

.method public setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker;->f:Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;

    return-void
.end method
