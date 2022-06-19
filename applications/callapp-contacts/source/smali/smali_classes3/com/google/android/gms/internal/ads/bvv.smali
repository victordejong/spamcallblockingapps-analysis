.class public final Lcom/google/android/gms/internal/ads/bvv;
.super Lcom/google/android/gms/internal/ads/bvs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/bvs<",
        "Lcom/google/android/gms/internal/ads/bhu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afq;

.field private final b:Lcom/google/android/gms/internal/ads/aqz$a;

.field private final c:Lcom/google/android/gms/internal/ads/awm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/aqz$a;Lcom/google/android/gms/internal/ads/awm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bvs;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvv;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvv;->b:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvv;->c:Lcom/google/android/gms/internal/ads/awm;

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
            "Lcom/google/android/gms/internal/ads/bhu;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvv;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afq;->q()Lcom/google/android/gms/internal/ads/bhz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvv;->b:Lcom/google/android/gms/internal/ads/aqz$a;

    .line 1004
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 1006
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->c:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bhz;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bhz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bvv;->c:Lcom/google/android/gms/internal/ads/awm;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bhz;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bhz;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bhz;->a()Lcom/google/android/gms/internal/ads/bhx;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bhx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aor;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
