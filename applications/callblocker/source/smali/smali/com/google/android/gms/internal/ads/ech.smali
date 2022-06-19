.class public final Lcom/google/android/gms/internal/ads/ech;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/ech;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/ecl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ecl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ech;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/ech;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/ech;->b:I

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/n;)V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/n;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ech;->a:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/n;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ech;->b:I

    .line 8
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 11
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ech;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 12
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ech;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 14
    return-void
.end method
