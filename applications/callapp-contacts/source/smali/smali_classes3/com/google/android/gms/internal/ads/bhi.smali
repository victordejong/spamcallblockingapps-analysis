.class final Lcom/google/android/gms/internal/ads/bhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cov;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/coz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bgy;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhi;->a:Lcom/google/android/gms/internal/ads/cov;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bhi;->b:Lcom/google/android/gms/internal/ads/coz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhi;->a:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bhi;->b:Lcom/google/android/gms/internal/ads/coz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
