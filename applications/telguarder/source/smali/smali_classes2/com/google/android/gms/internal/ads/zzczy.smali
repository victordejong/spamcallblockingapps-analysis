.class final synthetic Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

.field private final zzgzu:[Lcom/google/android/gms/internal/ads/zzcgk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;[Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgzu:[Lcom/google/android/gms/internal/ads/zzcgk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgzu:[Lcom/google/android/gms/internal/ads/zzcgk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczo;->zza([Lcom/google/android/gms/internal/ads/zzcgk;)V

    return-void
.end method
