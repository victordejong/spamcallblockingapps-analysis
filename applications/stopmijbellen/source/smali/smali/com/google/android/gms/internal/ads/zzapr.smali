.class public abstract Lcom/google/android/gms/internal/ads/zzapr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzapr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzapo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapr;->zza:Lcom/google/android/gms/internal/ads/zzapr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;)I
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;
.end method

.method public abstract zze(ILcom/google/android/gms/internal/ads/zzapq;ZJ)Lcom/google/android/gms/internal/ads/zzapq;
.end method

.method public final zzf(ILcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapq;I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzd(ILcom/google/android/gms/internal/ads/zzapp;Z)Lcom/google/android/gms/internal/ads/zzapp;

    .line 2
    invoke-virtual {p0, v0, p3, v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzg(ILcom/google/android/gms/internal/ads/zzapq;Z)Lcom/google/android/gms/internal/ads/zzapq;

    const/4 p2, 0x1

    if-nez p1, :cond_5

    const/4 p1, -0x1

    if-eqz p4, :cond_2

    if-eq p4, p2, :cond_1

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapr;->zzc()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapr;->zzc()I

    move-result p4

    add-int/2addr p4, p1

    if-nez p4, :cond_3

    const/4 p2, -0x1

    :cond_3
    :goto_1
    if-ne p2, p1, :cond_4

    return p1

    .line 6
    :cond_4
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzapr;->zzg(ILcom/google/android/gms/internal/ads/zzapq;Z)Lcom/google/android/gms/internal/ads/zzapq;

    return v0

    :cond_5
    add-int/2addr p1, p2

    return p1
.end method

.method public final zzg(ILcom/google/android/gms/internal/ads/zzapq;Z)Lcom/google/android/gms/internal/ads/zzapq;
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzapr;->zze(ILcom/google/android/gms/internal/ads/zzapq;ZJ)Lcom/google/android/gms/internal/ads/zzapq;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapr;->zzc()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
