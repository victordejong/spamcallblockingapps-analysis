.class public final Lcom/google/android/gms/internal/ads/bqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;
.implements Lcom/google/android/gms/internal/ads/atb;
.implements Lcom/google/android/gms/internal/ads/auf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctz;

.field private final b:Lcom/google/android/gms/internal/ads/cty;

.field private final c:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ctz;Lcom/google/android/gms/internal/ads/cty;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqg;->b:Lcom/google/android/gms/internal/ads/cty;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqg;->c:Lcom/google/android/gms/internal/ads/yo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqg;->b:Lcom/google/android/gms/internal/ads/cty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    const-string v2, "action"

    const-string v3, "loaded"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqg;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/yo;)Lcom/google/android/gms/internal/ads/ctz;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdys:Landroid/os/Bundle;

    const-string v1, "cnt"

    .line 1017
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ctz;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "network_coarse"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gnt"

    .line 1019
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ctz;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network_fine"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    const-string v1, "action"

    const-string v2, "ftl"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    const-string v1, "ed"

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bqg;->b:Lcom/google/android/gms/internal/ads/cty;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqg;->a:Lcom/google/android/gms/internal/ads/ctz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method
