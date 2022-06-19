.class public final Lcom/google/android/gms/common/internal/c1;
.super Lcom/google/android/gms/common/internal/r0;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private d:Lcom/google/android/gms/common/internal/d;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/r0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c1;->d:Lcom/google/android/gms/common/internal/d;

    iput p2, p0, Lcom/google/android/gms/common/internal/c1;->e:I

    return-void
.end method


# virtual methods
.method public final i2(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    .line 1
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final t3(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c1;->d:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c1;->d:Lcom/google/android/gms/common/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/internal/c1;->e:I

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/d;->M(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c1;->d:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method public final w4(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c1;->d:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/d;->g0(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/zzi;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzi;->d:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c1;->t3(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
