.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/r$a;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/m;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/net/Uri;

.field d:Lcom/google/android/exoplayer2/source/r;

.field e:Lcom/google/android/exoplayer2/al;

.field final synthetic f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 479
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r;Landroid/net/Uri;)V
    .locals 4

    .line 483
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->d:Lcom/google/android/exoplayer2/source/r;

    .line 484
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 485
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/m;

    .line 487
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    .line 488
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    .line 1090
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/source/m$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->f:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->a(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$a;->d:Lcom/google/android/exoplayer2/source/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
