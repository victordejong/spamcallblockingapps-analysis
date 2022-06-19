.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/r$a;

.field public final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$1:Lcom/google/android/exoplayer2/source/r$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$1:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE;->f$2:Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->lambda$TsOJVhqfYi9wQRM1PRj6haARGSE(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V

    return-void
.end method
