.class public final Lcom/google/android/gms/internal/ads/wq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/la0;
.implements Lcom/google/android/gms/internal/ads/f90;
.implements Lcom/google/android/gms/internal/ads/v70;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/fr0;

.field private final c:Lcom/google/android/gms/internal/ads/or0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fr0;Lcom/google/android/gms/internal/ads/or0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wq0;->c:Lcom/google/android/gms/internal/ads/or0;

    return-void
.end method


# virtual methods
.method public final I(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fr0;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "ftl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzym;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wq0;->c:Lcom/google/android/gms/internal/ads/or0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/qr0;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fr0;->a(Lcom/google/android/gms/internal/ads/ml1;)V

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wq0;->c:Lcom/google/android/gms/internal/ads/or0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wq0;->b:Lcom/google/android/gms/internal/ads/fr0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fr0;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qr0;->a(Ljava/util/Map;)V

    return-void
.end method
