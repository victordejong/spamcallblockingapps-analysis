.class public final Lcom/google/android/gms/internal/ads/zzdwj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzdwj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

.field private zzhxd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/cwk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwj;->versionCode:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwj;->zzazi()V

    return-void
.end method

.method private final zzazi()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    if-nez v1, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    if-nez v0, :cond_4

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I[BZ)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzazh()Lcom/google/android/gms/internal/ads/beb$a;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/beb$a;->a([BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxd:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwj;->zzazi()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwj;->zzhxc:Lcom/google/android/gms/internal/ads/beb$a;

    return-object v0
.end method
