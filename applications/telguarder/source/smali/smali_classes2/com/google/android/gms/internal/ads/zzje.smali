.class final Lcom/google/android/gms/internal/ads/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziz;


# instance fields
.field private final synthetic zzamw:Lcom/google/android/gms/internal/ads/zzjc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzjc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzjc;Lcom/google/android/gms/internal/ads/zzjf;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzjc;)V

    return-void
.end method


# virtual methods
.method public final zzc(IJJ)V
    .locals 7

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjc;->zza(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzik;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzik;->zza(IJJ)V

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzjc;->zzb(IJJ)V

    return-void
.end method

.method public final zzek()V
    .locals 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjc;->zzgd()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjc;->zza(Lcom/google/android/gms/internal/ads/zzjc;Z)Z

    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzamw:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjc;->zza(Lcom/google/android/gms/internal/ads/zzjc;)Lcom/google/android/gms/internal/ads/zzik;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzw(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjc;->zzx(I)V

    return-void
.end method
