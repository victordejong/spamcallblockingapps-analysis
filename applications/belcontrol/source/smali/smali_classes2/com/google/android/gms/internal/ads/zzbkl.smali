.class public final synthetic Lcom/google/android/gms/internal/ads/zzbkl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfst:Lorg/json/JSONObject;

.field private final zzftf:Lcom/google/android/gms/internal/ads/zzbkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkm;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzftf:Lcom/google/android/gms/internal/ads/zzbkm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzfst:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzftf:Lcom/google/android/gms/internal/ads/zzbkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzfst:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzi(Lorg/json/JSONObject;)V

    return-void
.end method
