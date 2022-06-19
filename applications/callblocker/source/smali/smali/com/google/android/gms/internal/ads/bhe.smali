.class public final Lcom/google/android/gms/internal/ads/bhe;
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
        "Lcom/google/android/gms/internal/ads/bhm;",
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

.method public static b()Lcom/google/android/gms/internal/ads/bhe;
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bhd;->a()Lcom/google/android/gms/internal/ads/bhe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bhm;

    const-string/jumbo v1, "ttc"

    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->a:Lcom/google/android/gms/internal/ads/ckw;

    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->d:Lcom/google/android/gms/internal/ads/ckw;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bhm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ckw;Lcom/google/android/gms/internal/ads/ckw;)V

    .line 4
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bhm;

    .line 5
    return-object v0
.end method
