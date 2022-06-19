.class public final Lcom/google/android/gms/internal/ads/zzctv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcro;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcro<",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgmw:Lcom/google/android/gms/internal/ads/zzcin;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctv;->zzgmw:Lcom/google/android/gms/internal/ads/zzcin;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcrl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnt;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctv;->zzgmw:Lcom/google/android/gms/internal/ads/zzcin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcin;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctd;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrl;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcrl;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbsu;Ljava/lang/String;)V

    return-object v1
.end method
