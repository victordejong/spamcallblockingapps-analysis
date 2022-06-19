.class public final Lcom/google/android/gms/internal/ads/lo3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/fo3;

.field public static final b:Lcom/google/android/gms/internal/ads/fo3;

.field public static final c:Lcom/google/android/gms/internal/ads/fo3;

.field public static final d:Lcom/google/android/gms/internal/ads/fo3;


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/google/android/gms/internal/ads/go3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/go3<",
            "+",
            "Lcom/google/android/gms/internal/ads/ho3;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fo3;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fo3;-><init>(IJLcom/google/android/gms/internal/ads/io3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/lo3;->a:Lcom/google/android/gms/internal/ads/fo3;

    new-instance v0, Lcom/google/android/gms/internal/ads/fo3;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fo3;-><init>(IJLcom/google/android/gms/internal/ads/io3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/lo3;->b:Lcom/google/android/gms/internal/ads/fo3;

    new-instance v0, Lcom/google/android/gms/internal/ads/fo3;

    const/4 v1, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fo3;-><init>(IJLcom/google/android/gms/internal/ads/io3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/lo3;->c:Lcom/google/android/gms/internal/ads/fo3;

    new-instance v0, Lcom/google/android/gms/internal/ads/fo3;

    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fo3;-><init>(IJLcom/google/android/gms/internal/ads/io3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/lo3;->d:Lcom/google/android/gms/internal/ads/fo3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->Q(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lo3;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/lo3;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lo3;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/lo3;)Lcom/google/android/gms/internal/ads/go3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/lo3;Lcom/google/android/gms/internal/ads/go3;)Lcom/google/android/gms/internal/ads/go3;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/lo3;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lo3;->g:Ljava/io/IOException;

    return-object p1
.end method

.method public static e(ZJ)Lcom/google/android/gms/internal/ads/fo3;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fo3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/fo3;-><init>(IJLcom/google/android/gms/internal/ads/io3;)V

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->g:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->g:Ljava/io/IOException;

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/ho3;Lcom/google/android/gms/internal/ads/do3;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/ho3;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/do3<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->g:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/go3;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/go3;-><init>(Lcom/google/android/gms/internal/ads/lo3;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/ho3;Lcom/google/android/gms/internal/ads/do3;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/go3;->b(J)V

    return-wide v8
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/go3;->c(Z)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/jo3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/go3;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/ko3;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ko3;-><init>(Lcom/google/android/gms/internal/ads/jo3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lo3;->e:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->g:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo3;->f:Lcom/google/android/gms/internal/ads/go3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/go3;->a(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    throw v0
.end method
