.class public final Lcom/google/android/gms/internal/ads/bro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/alh;

.field private final c:Lcom/google/android/gms/internal/ads/u;

.field private final d:Lcom/google/android/gms/internal/ads/crs;

.field private final e:Lcom/google/android/gms/internal/ads/ckz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/alh;Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/u;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bro;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bro;->b:Lcom/google/android/gms/internal/ads/alh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bro;->e:Lcom/google/android/gms/internal/ads/ckz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bro;->d:Lcom/google/android/gms/internal/ads/crs;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bro;->c:Lcom/google/android/gms/internal/ads/u;

    .line 7
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/r;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bro;->c:Lcom/google/android/gms/internal/ads/u;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/u;->a(Lcom/google/android/gms/internal/ads/t;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bro;->c:Lcom/google/android/gms/internal/ads/u;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/brt;

    new-instance v2, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bro;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/brr;->a:Lcom/google/android/gms/internal/ads/ami;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->r:Ljava/util/List;

    const/4 v5, 0x0

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cgq;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/brt;-><init>(Lcom/google/android/gms/internal/ads/bro;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/cgq;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bro;->b:Lcom/google/android/gms/internal/ads/alh;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/alh;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/ako;)Lcom/google/android/gms/internal/ads/akj;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/r;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/akj;->k()Lcom/google/android/gms/internal/ads/brs;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/r;-><init>(Lcom/google/android/gms/ads/internal/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bro;->e:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->p:Lcom/google/android/gms/internal/ads/ckw;

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/brq;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/brq;-><init>(Lcom/google/android/gms/internal/ads/bro;Lcom/google/android/gms/internal/ads/r;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bro;->d:Lcom/google/android/gms/internal/ads/crs;

    .line 17
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/ckp;->a(Lcom/google/android/gms/internal/ads/ckj;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->q:Lcom/google/android/gms/internal/ads/ckw;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/akj;->h()Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    .line 21
    return-object v0
.end method
