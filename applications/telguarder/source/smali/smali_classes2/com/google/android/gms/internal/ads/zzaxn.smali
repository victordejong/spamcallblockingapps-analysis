.class final synthetic Lcom/google/android/gms/internal/ads/zzaxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxs;


# static fields
.field static final zzebl:Lcom/google/android/gms/internal/ads/zzaxs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzebl:Lcom/google/android/gms/internal/ads/zzaxs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->getCurrentScreenClass()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
