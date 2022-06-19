.class public final Lcom/google/android/gms/internal/ads/azt;
.super Lcom/google/android/gms/internal/ads/cb;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/bam;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/google/android/gms/internal/ads/crs;

.field private g:Landroid/view/View;

.field private final h:I

.field private i:Lcom/google/android/gms/internal/ads/aym;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/dtn;

.field private k:Lcom/google/android/gms/dynamic/a;

.field private l:Lcom/google/android/gms/internal/ads/bt;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "2011"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1009"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "3010"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/azt;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cb;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->k:Lcom/google/android/gms/dynamic/a;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azt;->e:Landroid/widget/FrameLayout;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/azt;->h:I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string/jumbo v1, "com.google.android.gms.ads.formats.NativeContentAdView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    const-string/jumbo v0, "1007"

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/google/android/gms/internal/ads/yw;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/yw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/google/android/gms/internal/ads/yw;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/yw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dtn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dtn;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->j:Lcom/google/android/gms/internal/ads/dtn;

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void

    .line 12
    :cond_0
    const-string/jumbo v1, "com.google.android.gms.ads.formats.NativeAppInstallAdView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    const-string/jumbo v0, "2009"

    goto :goto_0

    .line 14
    :cond_1
    const-string/jumbo v1, "com.google.android.gms.ads.formats.UnifiedNativeAdView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    const-string/jumbo v0, "3012"

    goto :goto_0
.end method

.method private final declared-synchronized k()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->f:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/azs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/azs;-><init>(Lcom/google/android/gms/internal/ads/azt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/azt;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aym;->b(Lcom/google/android/gms/internal/ads/bam;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->e:Landroid/widget/FrameLayout;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->j:Lcom/google/android/gms/internal/ads/dtn;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/aym;

    if-nez v1, :cond_2

    .line 50
    const-string/jumbo v0, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/aym;->b(Lcom/google/android/gms/internal/ads/bam;)V

    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/azt;->k()V

    .line 55
    check-cast v0, Lcom/google/android/gms/internal/ads/aym;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aym;->a(Lcom/google/android/gms/internal/ads/bam;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aym;->c(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aym;->d(Landroid/view/View;)V

    .line 59
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->m:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->m()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->l:Lcom/google/android/gms/internal/ads/bt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ays;->a(Lcom/google/android/gms/internal/ads/bt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;I)V
    .locals 0

    .prologue
    .line 79
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/bt;)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->m:Z

    .line 133
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azt;->l:Lcom/google/android/gms/internal/ads/bt;

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->m()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ays;->a(Lcom/google/android/gms/internal/ads/bt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :cond_1
    if-nez p2, :cond_2

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 32
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v0, "1098"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3011"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/azt;->h:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 39
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/azt;->a(Ljava/lang/String;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a_(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 45
    :goto_0
    monitor-exit p0

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic c()Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 139
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 127
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/azt;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 129
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dtn;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->j:Lcom/google/android/gms/internal/ads/dtn;

    return-object v0
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azt;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azt;->k:Lcom/google/android/gms/dynamic/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->k:Lcom/google/android/gms/dynamic/a;

    return-object v0
.end method

.method final synthetic j()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    :cond_1
    return-void
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->b()V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 84
    check-cast v2, Landroid/widget/FrameLayout;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->e()Ljava/util/Map;

    move-result-object v3

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->f()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onGlobalLayout()V
    .locals 5

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 97
    check-cast v0, Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->e()Ljava/util/Map;

    move-result-object v3

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->f()Ljava/util/Map;

    move-result-object v4

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 101
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aym;->b(Landroid/view/View;)Z

    move-result v1

    .line 102
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .locals 5

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 107
    check-cast v0, Landroid/widget/FrameLayout;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->e()Ljava/util/Map;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azt;->f()Ljava/util/Map;

    move-result-object v4

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 111
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aym;->b(Landroid/view/View;)Z

    move-result v1

    .line 112
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azt;->i:Lcom/google/android/gms/internal/ads/aym;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->d:Landroid/widget/FrameLayout;

    .line 92
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
