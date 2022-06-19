.class public final Lcom/google/android/gms/internal/ads/zzaqr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaqr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final major:I

.field private final minor:I

.field private final zzdqh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/pi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzaqr;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqr;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMajorVersion()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMinorVersion()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzaqr;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 21
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v1, :cond_1

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqr;

    .line 23
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->major:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->minor:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdqh:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
