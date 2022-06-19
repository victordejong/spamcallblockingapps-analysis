.class public final Lcom/google/android/gms/internal/ads/zzaob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final zzadq:Ljava/lang/String;

.field private final zzcho:I

.field private final zzchz:Z

.field private final zzdnq:I

.field private final zzdnr:I

.field private final zzmx:Ljava/util/Date;

.field private final zzmz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzna:Z

.field private final zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzmx:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzcho:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzmz:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaob;->zznb:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzna:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzdnq:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzchz:Z

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzdnr:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzadq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzmx:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzcho:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzmz:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zznb:Landroid/location/Location;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzchz:Z

    return v0
.end method

.method public final isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzna:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzdnq:I

    return v0
.end method
