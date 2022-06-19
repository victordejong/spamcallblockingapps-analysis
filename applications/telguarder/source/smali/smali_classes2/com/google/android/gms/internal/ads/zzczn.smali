.class final synthetic Lcom/google/android/gms/internal/ads/zzczn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

.field private final zzgzm:Ljava/util/List;

.field private final zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzm:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzm:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgzn:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzczo;->zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
