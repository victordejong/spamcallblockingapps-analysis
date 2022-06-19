.class final Lcom/google/android/gms/internal/ads/cps;
.super Lcom/google/android/gms/internal/ads/cpc;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cpc",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cpp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpc;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpp;->a(Lcom/google/android/gms/internal/ads/cpp;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cor;->a(II)I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpp;->b(Lcom/google/android/gms/internal/ads/cpp;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    .line 7
    aget-object v0, v0, v1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cpp;->b(Lcom/google/android/gms/internal/ads/cpp;)[Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    .line 10
    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 11
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    return-object v2
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cps;->a:Lcom/google/android/gms/internal/ads/cpp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpp;->a(Lcom/google/android/gms/internal/ads/cpp;)I

    move-result v0

    return v0
.end method
