.class public final Lcom/google/android/gms/common/internal/c$i;
.super Lcom/google/android/gms/common/internal/n$a;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/internal/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/n$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/internal/c$i;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 5
    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    return-void
.end method

.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    const-string/jumbo v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    iget v1, p0, Lcom/google/android/gms/common/internal/c$i;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    .line 11
    return-void
.end method

.method public final a(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/ag;)V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    const-string/jumbo v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$i;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/ag;)V

    .line 16
    iget-object v0, p3, Lcom/google/android/gms/common/internal/ag;->a:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/c$i;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method
