.class public final Lcom/google/android/gms/internal/ads/zzym;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzym;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Lcom/google/android/gms/internal/ads/zzym;

.field public f:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/kz2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kz2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzym;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzym;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzym;->f:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/a;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/ads/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/ads/a;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/a;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/a;)V

    return-object v1
.end method

.method public final p()Lcom/google/android/gms/ads/j;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/a;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/ads/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/j;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzym;->f:Landroid/os/IBinder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.ads.internal.client.IResponseInfo"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/j1;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/google/android/gms/internal/ads/j1;

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/h1;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/h1;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/ads/q;->d(Lcom/google/android/gms/internal/ads/j1;)Lcom/google/android/gms/ads/q;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/ads/j;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/a;Lcom/google/android/gms/ads/q;)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzym;->f:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
