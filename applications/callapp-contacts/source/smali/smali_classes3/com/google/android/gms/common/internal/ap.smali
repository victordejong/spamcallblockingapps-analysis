.class public final Lcom/google/android/gms/common/internal/ap;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/common/internal/ag;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/ap;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ap;->a:Lcom/google/android/gms/common/internal/ap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/ap;->a:Lcom/google/android/gms/common/internal/ap;

    .line 1
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/zax;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-direct {v1, v2, p1, p2, v3}, Lcom/google/android/gms/common/internal/zax;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/gms/common/internal/ag;

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 1002
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/base/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 1003
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/base/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 1004
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/base/a;->a(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 1005
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    .line 1006
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not get button with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and color "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/ag;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/common/internal/ag;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/ag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/ag;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
