.class public final synthetic Lcom/google/android/gms/internal/ads/zzalc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

.field private final zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

.field private final zzdjt:Lcom/google/android/gms/internal/ads/zzakm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjt:Lcom/google/android/gms/internal/ads/zzakm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjk:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjs:Lcom/google/android/gms/internal/ads/zzalq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdjt:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V

    return-void
.end method
