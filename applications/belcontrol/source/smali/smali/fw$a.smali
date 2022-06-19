.class public final Lfw$a;
.super Lcw$a;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lfw;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public final c:Lpf;


# direct methods
.method public constructor <init>(Lfw;)V
    .locals 2

    invoke-direct {p0}, Lcw$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfw$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lfw;->g()Landroidx/media2/session/MediaSessionService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfw$a;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Lfw;->g()Landroidx/media2/session/MediaSessionService;

    move-result-object p1

    invoke-static {p1}, Lpf;->a(Landroid/content/Context;)Lpf;

    move-result-object p1

    iput-object p1, p0, Lfw$a;->c:Lpf;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lfw$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lfw$a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Law;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 10

    iget-object v0, p0, Lfw$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    if-nez v0, :cond_0

    const-string p1, "MSS2ImplBase"

    const-string p2, "ServiceImpl isn\'t available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/ParcelImpl;)Lf40;

    move-result-object v1

    check-cast v1, Lyv;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lyv;->e()I

    move-result v0

    :goto_0
    move v4, v0

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lyv;->d()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-nez p2, :cond_3

    move-object v6, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lyv;->c()Landroid/os/Bundle;

    move-result-object p2

    move-object v6, p2

    :goto_2
    :try_start_0
    iget-object p2, p0, Lfw$a;->b:Landroid/os/Handler;

    new-instance v0, Lfw$a$a;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfw$a$a;-><init>(Lfw$a;Ljava/lang/String;IILandroid/os/Bundle;Law;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
