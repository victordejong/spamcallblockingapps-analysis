.class final Lcom/google/android/gms/internal/ads/gn0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/jt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/al1;

.field final synthetic b:Lcom/google/android/gms/internal/ads/dl1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mn0;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gn0;->a:Lcom/google/android/gms/internal/ads/al1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gn0;->b:Lcom/google/android/gms/internal/ads/dl1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gn0;->a:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gn0;->b:Lcom/google/android/gms/internal/ads/dl1;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/jt;->a0(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)V

    return-void
.end method
