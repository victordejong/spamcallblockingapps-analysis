.class final Lcom/google/android/gms/internal/ads/a21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n41;
.implements Lcom/google/android/gms/internal/ads/t31;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/ej2;

.field private final f:Lcom/google/android/gms/internal/ads/pb0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/pb0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a21;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a21;->e:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/a21;->f:Lcom/google/android/gms/internal/ads/pb0;

    return-void
.end method


# virtual methods
.method public final U(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a21;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->Z:Lcom/google/android/gms/internal/ads/qb0;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/qb0;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a21;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ej2;->Z:Lcom/google/android/gms/internal/ads/qb0;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qb0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a21;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ej2;->Z:Lcom/google/android/gms/internal/ads/qb0;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qb0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
