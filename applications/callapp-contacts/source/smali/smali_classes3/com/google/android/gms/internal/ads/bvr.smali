.class public final Lcom/google/android/gms/internal/ads/bvr;
.super Lcom/google/android/gms/internal/ads/bvs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bvs<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afq;

.field private final b:Lcom/google/android/gms/internal/ads/aqz$a;

.field private final c:Lcom/google/android/gms/internal/ads/byb;

.field private final d:Lcom/google/android/gms/internal/ads/awm;

.field private final e:Lcom/google/android/gms/internal/ads/bba;

.field private final f:Lcom/google/android/gms/internal/ads/atx;

.field private final g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/aqz$a;Lcom/google/android/gms/internal/ads/byb;Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/bba;Lcom/google/android/gms/internal/ads/atx;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bvs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvr;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvr;->b:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvr;->c:Lcom/google/android/gms/internal/ads/byb;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvr;->d:Lcom/google/android/gms/internal/ads/awm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bvr;->e:Lcom/google/android/gms/internal/ads/bba;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bvr;->f:Lcom/google/android/gms/internal/ads/atx;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bvr;->g:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/cpo;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpo;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/alq;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvr;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afq;->i()Lcom/google/android/gms/internal/ads/amq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvr;->b:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 1004
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 1006
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->c:Landroid/os/Bundle;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvr;->d:Lcom/google/android/gms/internal/ads/awm;

    .line 16
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvr;->c:Lcom/google/android/gms/internal/ads/byb;

    .line 17
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/byb;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvr;->e:Lcom/google/android/gms/internal/ads/bba;

    .line 18
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/anl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvr;->f:Lcom/google/android/gms/internal/ads/atx;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/anl;-><init>(Lcom/google/android/gms/internal/ads/atx;)V

    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/anl;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/alp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvr;->g:Landroid/view/ViewGroup;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/amq;->a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/amq;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/amq;->a()Lcom/google/android/gms/internal/ads/amn;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amn;->b()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aor;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
