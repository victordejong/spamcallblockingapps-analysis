.class public final synthetic Lcom/google/android/gms/internal/ads/zzeay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeaz;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeaz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->zza:Lcom/google/android/gms/internal/ads/zzeaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->zza:Lcom/google/android/gms/internal/ads/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzebb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzebb;->zzi(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/String;)V

    return-void
.end method
