.class public abstract Lcom/google/android/gms/common/api/internal/ba;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile b:Z

.field protected final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/bc;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/google/android/gms/common/e;

.field private final e:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/ba;-><init>(Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/e;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/e;)V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/d/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/d/f;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->e:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ba;->d:Lcom/google/android/gms/common/e;

    .line 7
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/api/internal/bc;)I
    .locals 1

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/bc;->a()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v5, 0x12

    const/16 v1, 0xd

    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bc;

    .line 39
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v1, v3

    .line 59
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ba;->h()V

    .line 66
    :cond_2
    :goto_1
    return-void

    .line 40
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ba;->d:Lcom/google/android/gms/common/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ba;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v4

    .line 41
    if-nez v4, :cond_6

    move v1, v2

    .line 43
    :goto_2
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/common/b;->c()I

    move-result v2

    if-ne v2, v5, :cond_1

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 48
    :pswitch_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-nez p2, :cond_0

    .line 52
    if-eqz p3, :cond_4

    .line 53
    const-string/jumbo v2, "<<ResolutionFailureErrorDetail>>"

    .line 54
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    :cond_4
    new-instance v2, Lcom/google/android/gms/common/api/internal/bc;

    new-instance v4, Lcom/google/android/gms/common/b;

    const/4 v5, 0x0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ba;->a(Lcom/google/android/gms/common/api/internal/bc;)I

    move-result v0

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/common/api/internal/bc;-><init>(Lcom/google/android/gms/common/b;I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, v2

    move v1, v3

    goto :goto_0

    .line 61
    :cond_5
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->a()I

    move-result v0

    .line 65
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/ba;->a(Lcom/google/android/gms/common/b;I)V

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Landroid/os/Bundle;)V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    const-string/jumbo v0, "resolving_error"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    new-instance v2, Lcom/google/android/gms/common/b;

    const-string/jumbo v0, "failed_status"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    .line 20
    const-string/jumbo v0, "failed_client_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/internal/bc;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/internal/bc;-><init>(Lcom/google/android/gms/common/b;I)V

    .line 23
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lcom/google/android/gms/common/b;I)V
.end method

.method public b()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ba;->b:Z

    .line 36
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bc;

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v1, "resolving_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    const-string/jumbo v1, "failed_client_id"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string/jumbo v1, "failed_status"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/b;->c()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string/jumbo v1, "failed_resolution"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/b;I)V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/gms/common/api/internal/bc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/bc;-><init>(Lcom/google/android/gms/common/b;I)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ba;->e:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/api/internal/bb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/bb;-><init>(Lcom/google/android/gms/common/api/internal/ba;Lcom/google/android/gms/common/api/internal/bc;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ba;->b:Z

    .line 69
    return-void
.end method

.method protected abstract f()V
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ba;->f()V

    .line 72
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 8
    new-instance v1, Lcom/google/android/gms/common/b;

    const/16 v0, 0xd

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ba;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ba;->a(Lcom/google/android/gms/common/api/internal/bc;)I

    move-result v0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/ba;->a(Lcom/google/android/gms/common/b;I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ba;->h()V

    .line 12
    return-void
.end method
