.class final Lcom/google/android/gms/internal/ads/u60;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/f90;
.implements Lcom/google/android/gms/internal/ads/l80;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/al1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/ci;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/al1;

    return-void
.end method


# virtual methods
.method public final m(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->X:Lcom/google/android/gms/internal/ads/di;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/di;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/al1;->X:Lcom/google/android/gms/internal/ads/di;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/di;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/al1;->X:Lcom/google/android/gms/internal/ads/di;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/di;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
