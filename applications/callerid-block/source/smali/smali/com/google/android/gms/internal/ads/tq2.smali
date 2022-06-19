.class public abstract Lcom/google/android/gms/internal/ads/tq2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/sq2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/gms/internal/ads/il2;Lcom/google/android/gms/internal/ads/gq2;)Lcom/google/android/gms/internal/ads/uq2;
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public final c(Lcom/google/android/gms/internal/ads/sq2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tq2;->a:Lcom/google/android/gms/internal/ads/sq2;

    return-void
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tq2;->a:Lcom/google/android/gms/internal/ads/sq2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sq2;->j()V

    :cond_0
    return-void
.end method
