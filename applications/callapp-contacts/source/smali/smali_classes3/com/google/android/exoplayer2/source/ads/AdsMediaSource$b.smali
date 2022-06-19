.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->b:Landroid/net/Uri;

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/b;

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V
    .locals 0

    .line 460
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->b(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/b;

    return-void
.end method

.method public static synthetic lambda$TsOJVhqfYi9wQRM1PRj6haARGSE(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->b(Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic lambda$aSBK8MTHmAz5G1K-wQXpOv80xGM(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->b(Lcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$aSBK8MTHmAz5G1K-wQXpOv80xGM;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$aSBK8MTHmAz5G1K-wQXpOv80xGM;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V
    .locals 11

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v1

    new-instance v0, Lcom/google/android/exoplayer2/source/l;

    .line 452
    invoke-static {}, Lcom/google/android/exoplayer2/source/l;->a()J

    move-result-wide v3

    new-instance v5, Lcom/google/android/exoplayer2/upstream/j;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->b:Landroid/net/Uri;

    invoke-direct {v5, v2}, Lcom/google/android/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;)V

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;J)V

    .line 456
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->a(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v9

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    .line 1357
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
