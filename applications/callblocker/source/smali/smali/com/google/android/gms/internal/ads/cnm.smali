.class public final Lcom/google/android/gms/internal/ads/cnm;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/cnm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/cnl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cnl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cnm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/cnm;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cnm;->b:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cnm;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cnm;->d:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/cnm;->e:I

    .line 7
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 8
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dkc;->a()I

    move-result v3

    move-object v0, p0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cnm;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cnm;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 13
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ads/cnm;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 14
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cnm;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cnm;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/ads/cnm;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 18
    return-void
.end method
