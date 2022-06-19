.class public final Lcom/google/android/gms/common/internal/bc;
.super Lcom/google/android/gms/common/internal/ar;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/common/internal/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ar;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bc;->a:Lcom/google/android/gms/common/internal/d;

    iput p2, p0, Lcom/google/android/gms/common/internal/bc;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    .line 1
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    const-string v2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bc;->a:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bc;->a:Lcom/google/android/gms/common/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/internal/bc;->b:I

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/d;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bc;->a:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method public final a(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bc;->a:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/d;->zzo(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/zzi;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzi;->zza:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/bc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
