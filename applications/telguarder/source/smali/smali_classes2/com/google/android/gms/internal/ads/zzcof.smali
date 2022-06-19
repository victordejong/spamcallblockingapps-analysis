.class final synthetic Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcom;


# instance fields
.field private final zzgov:Lcom/google/android/gms/internal/ads/zzcns;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcns;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgov:Lcom/google/android/gms/internal/ads/zzcns;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcns;)Lcom/google/android/gms/internal/ads/zzcom;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzcns;)V

    return-object v0
.end method


# virtual methods
.method public final zzq(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgov:Lcom/google/android/gms/internal/ads/zzcns;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcns;->zzk(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
