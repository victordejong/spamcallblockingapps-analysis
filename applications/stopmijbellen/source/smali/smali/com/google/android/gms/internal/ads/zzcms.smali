.class final Lcom/google/android/gms/internal/ads/zzcms;
.super Lcom/google/android/gms/internal/ads/zzaib;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/ads/zzcms;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcms;->zzb:Lcom/google/android/gms/internal/ads/zzcms;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaib;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzaif;
    .locals 0

    const-string p2, "moov"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaih;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaih;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaii;-><init>()V

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
