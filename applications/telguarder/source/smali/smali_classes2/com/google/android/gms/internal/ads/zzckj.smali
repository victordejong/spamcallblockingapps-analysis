.class public final Lcom/google/android/gms/internal/ads/zzckj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzcku;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaqp()Lcom/google/android/gms/internal/ads/zzckj;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckm;->zzaqq()Lcom/google/android/gms/internal/ads/zzckj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcku;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqh:Lcom/google/android/gms/internal/ads/zzdrk;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqk:Lcom/google/android/gms/internal/ads/zzdrk;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcku;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrk;Lcom/google/android/gms/internal/ads/zzdrk;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcku;

    return-object v0
.end method
