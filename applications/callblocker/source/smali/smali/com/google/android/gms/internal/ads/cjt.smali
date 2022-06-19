.class public final Lcom/google/android/gms/internal/ads/cjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/crs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/cjt;
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cjw;->a()Lcom/google/android/gms/internal/ads/cjt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cnv;->a()Lcom/google/android/gms/internal/ads/cns;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/cnw;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cns;->b(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crv;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/crs;

    move-result-object v0

    .line 5
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crs;

    .line 6
    return-object v0
.end method
