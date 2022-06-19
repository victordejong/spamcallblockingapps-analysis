.class public final Lcom/google/android/gms/internal/ads/zzaym;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzebt:J

.field private zzebu:J

.field private final synthetic zzebv:Lcom/google/android/gms/internal/ads/zzayn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayn;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebv:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebu:J

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebt:J

    const-string v3, "topen"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebu:J

    const-string v3, "tclose"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final zzxf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebu:J

    return-wide v0
.end method

.method public final zzxg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebv:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zza(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebu:J

    return-void
.end method

.method public final zzxh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebv:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayn;->zza(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaym;->zzebt:J

    return-void
.end method
