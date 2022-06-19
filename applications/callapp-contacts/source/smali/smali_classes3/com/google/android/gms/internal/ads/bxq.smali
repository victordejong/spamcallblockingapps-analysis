.class public final Lcom/google/android/gms/internal/ads/bxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bn;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/amn;

.field private final d:Lcom/google/android/gms/internal/ads/dbs;

.field private final e:Lcom/google/android/gms/internal/ads/cti;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/amn;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxq;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxq;->c:Lcom/google/android/gms/internal/ads/amn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxq;->e:Lcom/google/android/gms/internal/ads/cti;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxq;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bxq;->a:Lcom/google/android/gms/internal/ads/bn;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bxq;->a:Lcom/google/android/gms/internal/ads/bn;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/alq;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v6, Lcom/google/android/gms/internal/ads/bxv;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxq;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/bxt;->a:Lcom/google/android/gms/internal/ads/anq;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cov;->t:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/coy;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bxv;-><init>(Lcom/google/android/gms/internal/ads/bxq;Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/anq;Lcom/google/android/gms/internal/ads/coy;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxq;->c:Lcom/google/android/gms/internal/ads/amn;

    new-instance v1, Lcom/google/android/gms/internal/ads/aof;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/alx;)Lcom/google/android/gms/internal/ads/alt;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/bk;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->k()Lcom/google/android/gms/internal/ads/bxu;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpc;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cpc;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/bk;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bxq;->e:Lcom/google/android/gms/internal/ads/cti;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtz:Lcom/google/android/gms/internal/ads/ctj;

    .line 16
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/bxs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/bxs;-><init>(Lcom/google/android/gms/internal/ads/bxq;Lcom/google/android/gms/internal/ads/bk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxq;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 17
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/csr;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/ctj;->zzhua:Lcom/google/android/gms/internal/ads/ctj;

    .line 18
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alt;->h()Lcom/google/android/gms/internal/ads/alq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1
.end method
