.class public final Lcom/google/android/gms/internal/ads/dhx;
.super Lcom/google/android/gms/internal/ads/dhp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dhp",
        "<TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dhp;-><init>(I)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/dhy;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dhx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dhp;
    .locals 0

    .prologue
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dhp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dhp;

    .line 7
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/dhv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dhv",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dhv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dhx;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dhv;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/dhy;)V

    return-object v0
.end method
