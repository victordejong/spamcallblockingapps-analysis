.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzadx:Z

.field private zzady:Z

.field private zzadz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzady:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadz:Z

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    return p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzady:Z

    return p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadz:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/VideoOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadz:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzady:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzadx:Z

    return-object p0
.end method
