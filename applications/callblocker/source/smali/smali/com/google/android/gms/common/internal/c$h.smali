.class final Lcom/google/android/gms/common/internal/c$h;
.super Lcom/google/android/gms/internal/e/i;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/e/i;-><init>(Landroid/os/Looper;)V

    .line 3
    return-void
.end method

.method private static a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/c$g;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c$g;->b()V

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c$g;->d()V

    .line 56
    return-void
.end method

.method private static b(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c$h;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c$h;->a(Landroid/os/Message;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v4, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->g()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c$h;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 13
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_7

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    new-instance v2, Lcom/google/android/gms/common/b;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/b;-><init>(I)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->b(Lcom/google/android/gms/common/internal/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->c(Lcom/google/android/gms/common/internal/c;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->d(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->d(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 21
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/c;->b:Lcom/google/android/gms/common/internal/c$c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/c$c;->a(Lcom/google/android/gms/common/b;)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/b;)V

    goto :goto_0

    .line 20
    :cond_6
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/b;-><init>(I)V

    goto :goto_1

    .line 24
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_9

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->d(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->d(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 28
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/c;->b:Lcom/google/android/gms/common/internal/c$c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/c$c;->a(Lcom/google/android/gms/common/b;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/b;)V

    goto/16 :goto_0

    .line 27
    :cond_8
    new-instance v0, Lcom/google/android/gms/common/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/b;-><init>(I)V

    goto :goto_2

    .line 31
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_b

    .line 32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 33
    :cond_a
    new-instance v1, Lcom/google/android/gms/common/b;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/c;->b:Lcom/google/android/gms/common/internal/c$c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/c$c;->a(Lcom/google/android/gms/common/b;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/b;)V

    goto/16 :goto_0

    .line 37
    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->e(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->e(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/internal/c$a;->a(I)V

    .line 41
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/c;->a(I)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v3, v4, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;IILandroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 44
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$h;->a:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->f()Z

    move-result v0

    if-nez v0, :cond_e

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c$h;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 47
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c$h;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/c$g;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c$g;->c()V

    goto/16 :goto_0

    .line 51
    :cond_f
    const-string/jumbo v0, "GmsClient"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Don\'t know how to handle message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
