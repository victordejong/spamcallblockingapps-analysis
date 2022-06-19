.class public final Lcom/google/android/gms/internal/ads/gn;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/gn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/gq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/gn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/gn;->a:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/gn;->b:I

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gn;->c:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/google/android/gms/internal/ads/gn;->d:I

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

    iget v2, p0, Lcom/google/android/gms/internal/ads/gn;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 12
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gn;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/gn;->d:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 14
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/ads/gn;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 16
    return-void
.end method
