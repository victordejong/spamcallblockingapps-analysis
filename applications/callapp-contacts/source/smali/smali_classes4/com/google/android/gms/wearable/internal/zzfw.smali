.class public final Lcom/google/android/gms/wearable/internal/zzfw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wearable/internal/zzfw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaz:Lcom/google/android/gms/wearable/internal/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/wearable/internal/cf;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/cf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzfw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzfw;->versionCode:I

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.wearable.internal.IWearableListener"

    .line 7
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/google/android/gms/wearable/internal/bj;

    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Lcom/google/android/gms/wearable/internal/bj;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/google/android/gms/wearable/internal/bl;

    invoke-direct {p1, p2}, Lcom/google/android/gms/wearable/internal/bl;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfw;->zzaz:Lcom/google/android/gms/wearable/internal/bj;

    return-void

    .line 12
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfw;->zzaz:Lcom/google/android/gms/wearable/internal/bj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/bj;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/wearable/internal/zzfw;->versionCode:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfw;->zzaz:Lcom/google/android/gms/wearable/internal/bj;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    .line 1001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result p2

    .line 20
    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzfw;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfw;->zzaz:Lcom/google/android/gms/wearable/internal/bj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/bj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 25
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 2001
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
