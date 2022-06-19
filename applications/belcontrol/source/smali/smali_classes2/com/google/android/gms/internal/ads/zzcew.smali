.class public final synthetic Lcom/google/android/gms/internal/ads/zzcew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzfst:Lorg/json/JSONObject;

.field private final zzgie:Lcom/google/android/gms/internal/ads/zzcer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcer;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzgie:Lcom/google/android/gms/internal/ads/zzcer;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzfst:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzgie:Lcom/google/android/gms/internal/ads/zzcer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzfst:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcer;->zza(Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object p1

    return-object p1
.end method
