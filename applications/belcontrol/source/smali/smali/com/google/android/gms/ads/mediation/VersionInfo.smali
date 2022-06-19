.class public final Lcom/google/android/gms/ads/mediation/VersionInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzevl:I

.field private final zzevm:I

.field private final zzevn:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevl:I

    iput p2, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevm:I

    iput p3, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevn:I

    return-void
.end method


# virtual methods
.method public final getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevl:I

    return v0
.end method

.method public final getMicroVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevn:I

    return v0
.end method

.method public final getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/mediation/VersionInfo;->zzevm:I

    return v0
.end method
