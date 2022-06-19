.class public final Lcom/google/android/gms/internal/ads/ecn;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/ecn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/ecq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ecq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ecn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/q;)V
    .locals 3

    .prologue
    .line 1
    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/q;->a()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/q;->b()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/q;->c()Z

    move-result v2

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ecn;-><init>(ZZZ)V

    .line 6
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ecn;->a:Z

    .line 9
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ecn;->b:Z

    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ecn;->c:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 14
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ecn;->a:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 15
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ecn;->b:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 16
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ecn;->c:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 18
    return-void
.end method
