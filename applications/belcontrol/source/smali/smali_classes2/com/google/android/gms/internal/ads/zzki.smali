.class public final Lcom/google/android/gms/internal/ads/zzki;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkf;


# instance fields
.field private final zzaip:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaip:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaip:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzdz(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
