.class public final Lcom/google/android/gms/common/u;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/common/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gms/common/x;

    invoke-direct {v0}, Lcom/google/android/gms/common/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/u;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/u;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/u;->b:Lcom/google/android/gms/common/o;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/u;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/common/u;->d:Z

    .line 6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)V
    .locals 0
    .param p2    # Lcom/google/android/gms/common/o;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/u;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/common/u;->b:Lcom/google/android/gms/common/o;

    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/common/u;->c:Z

    .line 11
    iput-boolean p4, p0, Lcom/google/android/gms/common/u;->d:Z

    .line 12
    return-void
.end method

.method private static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/o;
    .locals 4
    .param p0    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-object v1

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/an;->a()Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    move-object v2, v1

    .line 44
    :goto_1
    if-eqz v2, :cond_2

    .line 45
    new-instance v0, Lcom/google/android/gms/common/r;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/r;-><init>([B)V

    :goto_2
    move-object v1, v0

    .line 47
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v2, "GoogleCertificatesQuery"

    const-string/jumbo v3, "Could not unwrap certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    goto :goto_1

    .line 46
    :cond_2
    const-string/jumbo v0, "GoogleCertificatesQuery"

    const-string/jumbo v2, "Could not unwrap certificate"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v1

    .line 15
    const/4 v0, 0x1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/common/u;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    const/4 v2, 0x2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/u;->b:Lcom/google/android/gms/common/o;

    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "GoogleCertificatesQuery"

    const-string/jumbo v3, "certificate binder is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {p1, v2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 27
    const/4 v0, 0x3

    .line 28
    iget-boolean v2, p0, Lcom/google/android/gms/common/u;->c:Z

    .line 29
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 30
    const/4 v0, 0x4

    .line 31
    iget-boolean v2, p0, Lcom/google/android/gms/common/u;->d:Z

    .line 32
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 33
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 34
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/u;->b:Lcom/google/android/gms/common/o;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
