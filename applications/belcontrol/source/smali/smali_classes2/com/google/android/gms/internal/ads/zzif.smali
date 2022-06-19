.class public final Lcom/google/android/gms/internal/ads/zzif;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public zzagn:Ljava/lang/Object;

.field private zzagy:I

.field private zzaih:Ljava/lang/Object;

.field public zzaip:J

.field private zzair:Z

.field private zzais:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzif;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaih:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzagn:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzagy:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzif;->zzaip:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzais:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzair:Z

    return-object p0
.end method

.method public final zzfh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzais:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhf;->zzdo(J)J

    move-result-wide v0

    return-wide v0
.end method
