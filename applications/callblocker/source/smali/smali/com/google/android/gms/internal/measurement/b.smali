.class public final Lcom/google/android/gms/internal/measurement/b;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/measurement/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b;->a:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/b;->b:J

    .line 4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/b;->c:Z

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/b;->d:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/b;->e:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/b;->f:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    .line 9
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/b;->a:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 13
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/b;->b:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 14
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/b;->c:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 15
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b;->g:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method
