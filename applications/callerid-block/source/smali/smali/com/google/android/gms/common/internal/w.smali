.class public final Lcom/google/android/gms/common/internal/w;
.super Lcom/google/android/gms/common/internal/l;
.source ""


# instance fields
.field private b:Lcom/google/android/gms/common/internal/b;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/b;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/w;->b:Lcom/google/android/gms/common/internal/b;

    iput p2, p0, Lcom/google/android/gms/common/internal/w;->c:I

    return-void
.end method


# virtual methods
.method public final L2(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->b:Lcom/google/android/gms/common/internal/b;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/b;->U(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/zzi;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzi;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/w;->r6(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final g4(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final r6(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->b:Lcom/google/android/gms/common/internal/b;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->b:Lcom/google/android/gms/common/internal/b;

    iget v1, p0, Lcom/google/android/gms/common/internal/w;->c:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/b;->A(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/w;->b:Lcom/google/android/gms/common/internal/b;

    return-void
.end method
