.class public final Lcom/google/android/gms/internal/ads/buj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "Lcom/google/android/gms/internal/ads/azi;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ads/bif;

.field final c:Lcom/google/android/gms/internal/ads/bai;

.field final d:Lcom/google/android/gms/internal/ads/cpo;

.field final e:Ljava/util/concurrent/Executor;

.field final f:Lcom/google/android/gms/internal/ads/zzbar;

.field final g:Lcom/google/android/gms/internal/ads/hn;

.field final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cpo;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bai;Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/hn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buj;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/buj;->d:Lcom/google/android/gms/internal/ads/cpo;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/buj;->c:Lcom/google/android/gms/internal/ads/bai;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/buj;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buj;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/buj;->b:Lcom/google/android/gms/internal/ads/bif;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/buj;->g:Lcom/google/android/gms/internal/ads/hn;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->fk:Lcom/google/android/gms/internal/ads/af;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/buj;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 0

    .line 13
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/azi;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/biv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/biv;-><init>()V

    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bui;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/bui;-><init>(Lcom/google/android/gms/internal/ads/buj;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/biv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/buj;->e:Ljava/util/concurrent/Executor;

    .line 1019
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bul;->a(Lcom/google/android/gms/internal/ads/biv;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buj;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
