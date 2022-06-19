.class public final Lcom/google/android/gms/internal/ads/cdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/cgy<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/clq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdr;->a:Lcom/google/android/gms/internal/ads/clq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/cgy<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdr;->a:Lcom/google/android/gms/internal/ads/clq;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdr;->a:Lcom/google/android/gms/internal/ads/clq;

    .line 2004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clq;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/cdq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cdq;-><init>(Lcom/google/android/gms/internal/ads/cdr;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
