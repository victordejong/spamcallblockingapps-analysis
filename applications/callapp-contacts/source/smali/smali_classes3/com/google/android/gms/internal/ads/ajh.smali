.class public final Lcom/google/android/gms/internal/ads/ajh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/coz;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cuq;

.field private final d:Lcom/google/android/gms/internal/ads/cus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/cuq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajh;->b:Lcom/google/android/gms/internal/ads/cpk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajh;->d:Lcom/google/android/gms/internal/ads/cus;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajh;->c:Lcom/google/android/gms/internal/ads/cuq;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajh;->a:Lcom/google/android/gms/internal/ads/coz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 4

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ajh;->d:Lcom/google/android/gms/internal/ads/cus;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajh;->c:Lcom/google/android/gms/internal/ads/cuq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajh;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajh;->a:Lcom/google/android/gms/internal/ads/coz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/coz;->a:Ljava/util/List;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/cuq;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cus;->a(Ljava/util/List;)V

    return-void
.end method
