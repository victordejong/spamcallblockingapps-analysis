.class public final Lcom/google/android/gms/internal/ads/dsm;
.super Lcom/google/android/gms/internal/ads/dsd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dsd<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dsd;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/dsn;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dsm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsd;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dsd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsd;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/dsk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dsk<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsm;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dsk;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/dsn;)V

    return-object v0
.end method
