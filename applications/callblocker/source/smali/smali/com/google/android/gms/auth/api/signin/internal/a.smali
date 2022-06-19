.class public Lcom/google/android/gms/auth/api/signin/internal/a;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->c:Landroid/os/Bundle;

    .line 5
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 11
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/a;->a()I

    move-result v2

    .line 14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 15
    const/4 v1, 0x3

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->c:Landroid/os/Bundle;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method
