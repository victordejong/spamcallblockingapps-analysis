.class public final Lcom/google/android/gms/internal/ads/bem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ash;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcr;

.field private final b:Lcom/google/android/gms/internal/ads/bcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bcr;Lcom/google/android/gms/internal/ads/bcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bem;->a:Lcom/google/android/gms/internal/ads/bcr;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bem;->b:Lcom/google/android/gms/internal/ads/bcv;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bem;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->x()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bem;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->w()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bem;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bem;->b:Lcom/google/android/gms/internal/ads/bcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcv;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 17
    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method
