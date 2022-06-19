.class public final Lcom/google/android/gms/internal/ads/zzbcx;
.super Lcom/google/android/gms/internal/ads/zzbl;
.source ""


# static fields
.field public static final zzepj:Lcom/google/android/gms/internal/ads/zzbcx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcx;->zzepj:Lcom/google/android/gms/internal/ads/zzbcx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzbs;
    .locals 0

    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbt;-><init>()V

    return-object p1

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
