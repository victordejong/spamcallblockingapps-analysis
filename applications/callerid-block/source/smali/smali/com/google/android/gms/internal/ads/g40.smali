.class final Lcom/google/android/gms/internal/ads/g40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/b40;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/gz1;

.field final synthetic b:Lcom/google/android/gms/internal/ads/i40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i40;Lcom/google/android/gms/internal/ads/gz1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g40;->b:Lcom/google/android/gms/internal/ads/i40;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/g40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g40;->b:Lcom/google/android/gms/internal/ads/i40;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i40;->f(Lcom/google/android/gms/internal/ads/i40;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/b40;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g40;->b:Lcom/google/android/gms/internal/ads/i40;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/b40;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/i40;->e(Lcom/google/android/gms/internal/ads/i40;Ljava/util/List;Lcom/google/android/gms/internal/ads/gz1;)V

    return-void
.end method
