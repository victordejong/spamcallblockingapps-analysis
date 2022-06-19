.class public final synthetic Lcom/google/android/gms/internal/ads/zzaky;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

.field private final zzdjl:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzdjm:Lcom/google/android/gms/internal/ads/zzalq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzalq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjl:Lcom/google/android/gms/internal/ads/zzei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjm:Lcom/google/android/gms/internal/ads/zzalq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjl:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdjm:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzalq;)V

    return-void
.end method
