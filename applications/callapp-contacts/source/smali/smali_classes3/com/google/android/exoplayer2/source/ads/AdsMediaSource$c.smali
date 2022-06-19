.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field volatile b:Z

.field final synthetic c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a:Landroid/os/Handler;

    return-void
.end method
