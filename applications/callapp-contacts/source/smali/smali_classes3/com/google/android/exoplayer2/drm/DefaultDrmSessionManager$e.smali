.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->b(Lcom/google/android/exoplayer2/drm/c$a;)V

    return-void
.end method

.method public static synthetic lambda$GnUJzynyGfxxMaZ4SjrPEHtigYU(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 5

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->d(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->e(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 790
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 792
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->d(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->e(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$e$GnUJzynyGfxxMaZ4SjrPEHtigYU;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$e$GnUJzynyGfxxMaZ4SjrPEHtigYU;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 794
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_0
    if-nez p2, :cond_4

    .line 800
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 801
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->f(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_1

    .line 802
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->g(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 804
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->h(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_2

    .line 805
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->i(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 807
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_3

    .line 810
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->a()V

    .line 812
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->b(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 813
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->c(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_4

    .line 814
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->e(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 815
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$e;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->d(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
