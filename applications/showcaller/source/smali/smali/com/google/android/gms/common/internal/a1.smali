.class final Lcom/google/android/gms/common/internal/a1;
.super Lc/c/a/a/b/c/h;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 1
    invoke-direct {p0, p2}, Lc/c/a/a/b/c/h;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final a(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/b1;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b1;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b1;->d()V

    return-void
.end method

.method private static final b(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a1;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a1;->a(Landroid/os/Message;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 8
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->X(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->Y(Lcom/google/android/gms/common/internal/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->Z(Lcom/google/android/gms/common/internal/d;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/common/internal/d;->a0(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    return-void

    .line 12
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->b0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->b0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_7
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 14
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->r:Lcom/google/android/gms/common/internal/d$c;

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_8
    if-ne v0, v3, :cond_a

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->b0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->b0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_2

    .line 19
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->r:Lcom/google/android/gms/common/internal/d$c;

    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_a
    if-ne v0, v5, :cond_c

    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_b

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 25
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/d;->r:Lcom/google/android/gms/common/internal/d$c;

    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/d;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_c
    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 29
    invoke-static {v0, v3, v6}, Lcom/google/android/gms/common/internal/d;->a0(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->c0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->c0(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    .line 30
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/d$a;->c0(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 31
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->L(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    .line 32
    invoke-static {p1, v3, v2, v6}, Lcom/google/android/gms/common/internal/d;->d0(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z

    return-void

    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a1;->a:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    .line 34
    :cond_f
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a1;->a(Landroid/os/Message;)V

    return-void

    .line 35
    :cond_10
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a1;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/b1;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b1;->c()V

    return-void

    .line 38
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

    .line 39
    :cond_12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a1;->a(Landroid/os/Message;)V

    return-void
.end method
