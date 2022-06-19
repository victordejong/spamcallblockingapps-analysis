.class final Lcom/google/android/gms/common/internal/ba;
.super Lcom/google/android/gms/internal/c/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/c/h;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final a(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/bb;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/bb;->d()V

    return-void
.end method

.method private static final b(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ba;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ba;->a(Landroid/os/Message;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 8
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->zzf(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzg(Lcom/google/android/gms/common/internal/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzh(Lcom/google/android/gms/common/internal/d;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/common/internal/d;->zzi(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    return-void

    .line 9
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzj(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzj(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_7
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->zzc:Lcom/google/android/gms/common/internal/d$c;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 14
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzj(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->zzj(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 15
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->zzc:Lcom/google/android/gms/common/internal/d$c;

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 18
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_c

    .line 19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/d;->zzc:Lcom/google/android/gms/common/internal/d$c;

    .line 21
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/d;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 23
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 24
    invoke-static {v0, v3, v6}, Lcom/google/android/gms/common/internal/d;->zzi(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->zzk(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->zzk(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    .line 25
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/d$a;->a(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 26
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    .line 27
    invoke-static {p1, v3, v2, v6}, Lcom/google/android/gms/common/internal/d;->zzl(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z

    return-void

    .line 28
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    .line 33
    :cond_f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ba;->a(Landroid/os/Message;)V

    return-void

    .line 29
    :cond_10
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ba;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/bb;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/bb;->c()V

    return-void

    .line 32
    :cond_11
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 34
    :cond_12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ba;->a(Landroid/os/Message;)V

    return-void
.end method
