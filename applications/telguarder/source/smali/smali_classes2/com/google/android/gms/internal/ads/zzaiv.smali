.class public final Lcom/google/android/gms/internal/ads/zzaiv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final statusCode:I

.field public final zzak:Z

.field public final zzal:J

.field public final zzchg:Ljava/lang/String;

.field public final zzdin:[Ljava/lang/String;

.field public final zzdio:[Ljava/lang/String;

.field public final zzdip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdip:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzchg:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->statusCode:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->data:[B

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdin:[Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdio:[Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzak:Z

    .line 9
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzal:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdip:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzchg:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->statusCode:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->data:[B

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdin:[Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdio:[Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzak:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzal:J

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
