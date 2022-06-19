.class public final Lcom/google/android/gms/internal/ads/bvq;
.super Lcom/google/android/gms/internal/ads/bvs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bvs<",
        "Lcom/google/android/gms/internal/ads/anv;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afq;

.field private final b:Lcom/google/android/gms/internal/ads/bba;

.field private final c:Lcom/google/android/gms/internal/ads/aqz$a;

.field private final d:Lcom/google/android/gms/internal/ads/awm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/bba;Lcom/google/android/gms/internal/ads/aqz$a;Lcom/google/android/gms/internal/ads/awm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bvs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvq;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvq;->b:Lcom/google/android/gms/internal/ads/bba;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvq;->c:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvq;->d:Lcom/google/android/gms/internal/ads/awm;

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
            "Lcom/google/android/gms/internal/ads/anv;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvq;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afq;->p()Lcom/google/android/gms/internal/ads/bbd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvq;->c:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 1004
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 1006
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->c:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvq;->d:Lcom/google/android/gms/internal/ads/awm;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvq;->b:Lcom/google/android/gms/internal/ads/bba;

    .line 14
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/alp;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bbd;->a()Lcom/google/android/gms/internal/ads/bbe;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbe;->a()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aor;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
