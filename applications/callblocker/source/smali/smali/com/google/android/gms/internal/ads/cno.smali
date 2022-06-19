.class public final Lcom/google/android/gms/internal/ads/cno;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/cno;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[B

.field public final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/cnn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cnn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cno;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BI)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/cno;->c:I

    .line 4
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cno;->a:[B

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/ads/cno;->b:I

    .line 6
    return-void

    .line 4
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/gms/internal/ads/cno;-><init>(I[BI)V

    .line 8
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 11
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cno;->c:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 12
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cno;->a:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    .line 13
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/cno;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 15
    return-void
.end method
