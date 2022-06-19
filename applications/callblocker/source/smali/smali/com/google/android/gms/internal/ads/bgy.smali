.class public final Lcom/google/android/gms/internal/ads/bgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/ash;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bhg;

.field private final b:Lcom/google/android/gms/internal/ads/bho;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bhg;Lcom/google/android/gms/internal/ads/bho;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgy;->b:Lcom/google/android/gms/internal/ads/bho;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhg;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->b:Lcom/google/android/gms/internal/ads/bho;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bhg;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bho;->a(Ljava/util/Map;)V

    .line 7
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhg;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "ftl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhg;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "ftl"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->b:Lcom/google/android/gms/internal/ads/bho;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bhg;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bho;->a(Ljava/util/Map;)V

    .line 11
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bhg;->a(Lcom/google/android/gms/internal/ads/chd;)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhg;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/pw;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bhg;->a(Landroid/os/Bundle;)V

    .line 13
    return-void
.end method
