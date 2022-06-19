.class public final Lcom/google/android/gms/internal/ads/dru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/android/gms/internal/ads/drw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/drw",
            "<+",
            "Lcom/google/android/gms/internal/ads/dry;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dru;)Lcom/google/android/gms/internal/ads/drw;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dru;Lcom/google/android/gms/internal/ads/drw;)Lcom/google/android/gms/internal/ads/drw;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dru;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dru;->c:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dru;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dry;Lcom/google/android/gms/internal/ads/drx;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/dry;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/drx",
            "<TT;>;I)J"
        }
    .end annotation

    .prologue
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/drw;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/drw;-><init>(Lcom/google/android/gms/internal/ads/dru;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/dry;Lcom/google/android/gms/internal/ads/drx;IJ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/drw;->a(J)V

    .line 8
    return-wide v6

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->c:Ljava/io/IOException;

    throw v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/drw;->a:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/drw;->a(I)V

    .line 23
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/drw;->a(Z)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 16
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dru;->b:Lcom/google/android/gms/internal/ads/drw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/drw;->a(Z)V

    .line 11
    return-void
.end method
