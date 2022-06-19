.class public final Lcom/google/android/gms/internal/ads/wi;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/wi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/wk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 3
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wi;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/wi;->b:I

    .line 5
    return-void
.end method

.method public static a(Ljava/lang/Throwable;I)Lcom/google/android/gms/internal/ads/wi;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wi;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/wi;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wi;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/wi;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 11
    return-void
.end method
