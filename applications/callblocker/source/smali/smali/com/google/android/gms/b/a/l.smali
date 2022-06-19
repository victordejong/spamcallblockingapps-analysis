.class public final Lcom/google/android/gms/b/a/l;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/b/a/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/b;

.field private final c:Lcom/google/android/gms/common/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/b/a/k;

    invoke-direct {v0}, Lcom/google/android/gms/b/a/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/a/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/b/a/l;-><init>(Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/u;)V

    .line 7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/u;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/b/a/l;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/b/a/l;->b:Lcom/google/android/gms/common/b;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/b/a/l;->c:Lcom/google/android/gms/common/internal/u;

    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/u;)V
    .locals 2

    .prologue
    .line 8
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/b/a/l;-><init>(ILcom/google/android/gms/common/b;Lcom/google/android/gms/common/internal/u;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/b;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/b/a/l;->b:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/internal/u;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/b/a/l;->c:Lcom/google/android/gms/common/internal/u;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 14
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/b/a/l;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 15
    const/4 v1, 0x2

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/b/a/l;->b:Lcom/google/android/gms/common/b;

    .line 18
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/b/a/l;->c:Lcom/google/android/gms/common/internal/u;

    .line 22
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 23
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method
