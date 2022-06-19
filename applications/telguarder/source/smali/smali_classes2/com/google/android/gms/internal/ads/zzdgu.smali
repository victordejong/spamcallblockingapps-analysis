.class final synthetic Lcom/google/android/gms/internal/ads/zzdgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfj;


# instance fields
.field private final zzhel:Lcom/google/android/gms/internal/ads/zzdgv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdgv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzhel:Lcom/google/android/gms/internal/ads/zzdgv;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgu;->zzhel:Lcom/google/android/gms/internal/ads/zzdgv;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgv;->zzq(Lorg/json/JSONObject;)V

    return-void
.end method
