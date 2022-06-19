.class public final Lcom/google/android/gms/ads/internal/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbpo:Z

.field public final zzbpp:Z

.field private final zzbpq:Ljava/lang/String;

.field public final zzbpr:Z

.field public final zzbps:F

.field public final zzbpt:I

.field public final zzbpu:Z

.field public final zzbpv:Z

.field public final zzbpw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFIZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpo:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpp:Z

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpq:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpr:Z

    .line 8
    iput p5, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbps:F

    .line 9
    iput p6, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpt:I

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpu:Z

    .line 11
    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpv:Z

    .line 12
    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpw:Z

    return-void
.end method

.method public constructor <init>(ZZZFIZZZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/zzk;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpo:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpp:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpq:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpr:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 20
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbps:F

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IF)V

    .line 21
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpt:I

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpu:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpv:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzk;->zzbpw:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IZ)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
