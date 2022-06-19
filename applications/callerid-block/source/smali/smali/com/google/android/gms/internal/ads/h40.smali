.class final Lcom/google/android/gms/internal/ads/h40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/gz1;

.field final synthetic b:Lcom/google/android/gms/internal/ads/i40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i40;Lcom/google/android/gms/internal/ads/gz1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h40;->b:Lcom/google/android/gms/internal/ads/i40;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h40;->b:Lcom/google/android/gms/internal/ads/i40;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i40;->f(Lcom/google/android/gms/internal/ads/i40;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/u30;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h40;->b:Lcom/google/android/gms/internal/ads/i40;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i40;->f(Lcom/google/android/gms/internal/ads/i40;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h40;->a:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gz1;->b(Ljava/lang/Object;)V

    return-void
.end method
