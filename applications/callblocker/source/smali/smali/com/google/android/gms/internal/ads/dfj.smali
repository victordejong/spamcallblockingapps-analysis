.class final Lcom/google/android/gms/internal/ads/dfj;
.super Lcom/google/android/gms/internal/ads/dfp;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dfp;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dfe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dfe;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfj;->a:Lcom/google/android/gms/internal/ads/dfe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dfp;-><init>(Lcom/google/android/gms/internal/ads/dfe;Lcom/google/android/gms/internal/ads/dfh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dfe;Lcom/google/android/gms/internal/ads/dfh;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dfj;-><init>(Lcom/google/android/gms/internal/ads/dfe;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dfj;->a:Lcom/google/android/gms/internal/ads/dfe;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dfg;-><init>(Lcom/google/android/gms/internal/ads/dfe;Lcom/google/android/gms/internal/ads/dfh;)V

    return-object v0
.end method
