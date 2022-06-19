.class final Lcom/google/android/gms/internal/ads/aos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aql;
.implements Lcom/google/android/gms/internal/ads/arg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/cgr;

.field private final c:Lcom/google/android/gms/internal/ads/of;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/of;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aos;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/cgr;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aos;->c:Lcom/google/android/gms/internal/ads/of;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->U:Lcom/google/android/gms/internal/ads/od;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->U:Lcom/google/android/gms/internal/ads/od;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/od;->a:Z

    if-nez v0, :cond_1

    .line 12
    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgr;->U:Lcom/google/android/gms/internal/ads/od;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/od;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgr;->U:Lcom/google/android/gms/internal/ads/od;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/od;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aos;->c:Lcom/google/android/gms/internal/ads/of;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aos;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/of;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aos;->c:Lcom/google/android/gms/internal/ads/of;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/of;->a()V

    .line 16
    return-void
.end method
