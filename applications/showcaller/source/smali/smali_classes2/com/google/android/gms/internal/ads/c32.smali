.class public final Lcom/google/android/gms/internal/ads/c32;
.super Lcom/google/android/gms/internal/ads/os;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/sp0;

.field final f:Lcom/google/android/gms/internal/ads/vj2;

.field final g:Lcom/google/android/gms/internal/ads/af1;

.field private h:Lcom/google/android/gms/internal/ads/gs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/os;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vj2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    new-instance v1, Lcom/google/android/gms/internal/ads/af1;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/af1;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c32;->e:Lcom/google/android/gms/internal/ads/sp0;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/vj2;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c32;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final A5(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m00;Lcom/google/android/gms/internal/ads/j00;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/af1;->f(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m00;Lcom/google/android/gms/internal/ads/j00;)Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public final B1(Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->e(Lcom/google/android/gms/internal/ads/zzblv;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method public final B4(Lcom/google/android/gms/internal/ads/g00;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/af1;->a(Lcom/google/android/gms/internal/ads/g00;)Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public final G4(Lcom/google/android/gms/internal/ads/zzbrx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->g(Lcom/google/android/gms/internal/ads/zzbrx;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method public final H3(Lcom/google/android/gms/internal/ads/t00;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/af1;->c(Lcom/google/android/gms/internal/ads/t00;)Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public final M5(Lcom/google/android/gms/internal/ads/q40;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/af1;->e(Lcom/google/android/gms/internal/ads/q40;)Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public final P5(Lcom/google/android/gms/internal/ads/q00;Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/af1;->d(Lcom/google/android/gms/internal/ads/q00;)Lcom/google/android/gms/internal/ads/af1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method public final T5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c32;->h:Lcom/google/android/gms/internal/ads/gs;

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/ms;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/af1;->g()Lcom/google/android/gms/internal/ads/cf1;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cf1;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vj2;->c(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cf1;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vj2;->d(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->K()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->l0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/d32;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c32;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c32;->e:Lcom/google/android/gms/internal/ads/sp0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/c32;->h:Lcom/google/android/gms/internal/ads/gs;

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/d32;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sp0;Lcom/google/android/gms/internal/ads/vj2;Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/gs;)V

    return-object v0
.end method

.method public final o3(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->h(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method public final v2(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->i(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method public final w1(Lcom/google/android/gms/internal/ads/d00;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->g:Lcom/google/android/gms/internal/ads/af1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/af1;->b(Lcom/google/android/gms/internal/ads/d00;)Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public final x6(Lcom/google/android/gms/internal/ads/et;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c32;->f:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->o(Lcom/google/android/gms/internal/ads/et;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method
