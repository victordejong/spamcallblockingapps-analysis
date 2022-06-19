.class final Lcom/google/android/gms/internal/ads/aqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/asg;
.implements Lcom/google/android/gms/internal/ads/atb;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/cov;

.field private final c:Lcom/google/android/gms/internal/ads/rg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/rg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqq;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqq;->b:Lcom/google/android/gms/internal/ads/cov;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqq;->c:Lcom/google/android/gms/internal/ads/rg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqq;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->X:Lcom/google/android/gms/internal/ads/re;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqq;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->X:Lcom/google/android/gms/internal/ads/re;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/re;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqq;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->X:Lcom/google/android/gms/internal/ads/re;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/re;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqq;->b:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->X:Lcom/google/android/gms/internal/ads/re;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/re;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
