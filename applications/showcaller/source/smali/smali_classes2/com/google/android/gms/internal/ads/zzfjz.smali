.class public final Lcom/google/android/gms/internal/ads/zzfjz;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzfjz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bt2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bt2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfjz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfjz;->d:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfjz;->e:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjz;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjz;->g:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfjz;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    add-int/lit8 v3, p2, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfjz;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjz;->d:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjz;->e:I

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjz;->f:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjz;->g:Ljava/lang/String;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjz;->h:I

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
