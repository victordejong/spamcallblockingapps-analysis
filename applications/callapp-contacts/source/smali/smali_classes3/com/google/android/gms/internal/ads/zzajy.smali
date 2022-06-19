.class public final Lcom/google/android/gms/internal/ads/zzajy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzajy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzbod:I

.field public final zzdkg:I

.field public final zzdkh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/ja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ja;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->versionCode:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzdkg:I

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzdkh:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzbod:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jj;)V
    .locals 3

    .line 1012
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/jj;->b:Ljava/lang/String;

    .line 2011
    iget p1, p1, Lcom/google/android/gms/internal/ads/jj;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzajy;-><init>(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 3001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzdkg:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzdkh:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzbod:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->versionCode:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 4001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
