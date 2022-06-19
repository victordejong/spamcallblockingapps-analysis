.class public final Lcom/google/android/gms/internal/ads/cuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cty;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ctv;

.field private final b:Lcom/google/android/gms/internal/ads/cuj;

.field private final c:Lcom/google/android/gms/internal/ads/cuh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ctv;Lcom/google/android/gms/internal/ads/cuj;Lcom/google/android/gms/internal/ads/cuh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuf;->a:Lcom/google/android/gms/internal/ads/ctv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cuf;->b:Lcom/google/android/gms/internal/ads/cuj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cuf;->c:Lcom/google/android/gms/internal/ads/cuh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ctz;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cuf;->a:Lcom/google/android/gms/internal/ads/ctv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cuf;->b(Lcom/google/android/gms/internal/ads/ctz;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ctv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctz;)Ljava/lang/String;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cuf;->b:Lcom/google/android/gms/internal/ads/cuj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ctz;->a()Ljava/util/Map;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cuf;->c:Lcom/google/android/gms/internal/ads/cuh;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/cuh;->a(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cuj;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
