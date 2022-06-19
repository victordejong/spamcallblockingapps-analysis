.class final Lcom/google/android/gms/internal/ads/clo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aqx<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cru<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cmh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clo;->a:Lcom/google/android/gms/internal/ads/cmh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/crx;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crx;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/clr;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clo;->a:Lcom/google/android/gms/internal/ads/cmh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/clr;->b:Lcom/google/android/gms/internal/ads/cmm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/cmj;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/crj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clo;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/crj;->a:Lcom/google/android/gms/internal/ads/aor;

    return-void
.end method
