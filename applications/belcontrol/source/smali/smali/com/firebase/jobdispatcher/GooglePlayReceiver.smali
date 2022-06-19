.class public Lcom/firebase/jobdispatcher/GooglePlayReceiver;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Llp0$b;


# static fields
.field public static final h:Lxp0;

.field public static final j:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Ljava/lang/String;",
            "Lh4<",
            "Ljava/lang/String;",
            "Lwp0;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lnp0;

.field public b:Landroid/os/Messenger;

.field public c:Lkp0;

.field public d:Lhq0;

.field public f:Llp0;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxp0;

    const-string v1, "com.firebase.jobdispatcher."

    invoke-direct {v0, v1}, Lxp0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->h:Lxp0;

    new-instance v0, Lh4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh4;-><init>(I)V

    sput-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lnp0;

    invoke-direct {v0}, Lnp0;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a:Lnp0;

    return-void
.end method

.method public static d()Lxp0;
    .locals 1

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->h:Lxp0;

    return-object v0
.end method

.method public static g(Lzp0;I)Z
    .locals 2

    invoke-interface {p0}, Lzp0;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lzp0;->a()Lbq0;

    move-result-object p0

    instance-of p0, p0, Lbq0$a;

    if-eqz p0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h(Lvp0;)V
    .locals 3

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lvp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lvp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwp0;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lyp0$b;

    invoke-direct {v1}, Lyp0$b;-><init>()V

    invoke-virtual {p0}, Lvp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyp0$b;->s(Ljava/lang/String;)Lyp0$b;

    invoke-virtual {p0}, Lvp0;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyp0$b;->r(Ljava/lang/String;)Lyp0$b;

    invoke-virtual {p0}, Lvp0;->a()Lbq0;

    move-result-object p0

    invoke-virtual {v1, p0}, Lyp0$b;->t(Lbq0;)Lyp0$b;

    invoke-virtual {v1}, Lyp0$b;->l()Lyp0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Llp0;->e(Lyp0;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(Lwp0;I)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Lwp0;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Encountered error running callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lyp0;I)V
    .locals 5

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lh4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lyp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwp0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lh4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v1}, Lh4;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p1, p2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g(Lzp0;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->k(Lyp0;)V

    goto :goto_0

    :cond_5
    const-string v1, "FJD.GooglePlayReceiver"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "FJD.GooglePlayReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending jobFinished for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lyp0;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v2, p2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->l(Lwp0;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    invoke-virtual {v0}, Lh4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    invoke-virtual {p2}, Lh4;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    :cond_8
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public declared-synchronized b()Llp0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Llp0;

    if-nez v0, :cond_0

    new-instance v0, Llp0;

    invoke-direct {v0, p0, p0}, Llp0;-><init>(Landroid/content/Context;Llp0$b;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Llp0;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f:Llp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lkp0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Lkp0;

    if-nez v0, :cond_0

    new-instance v0, Lop0;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lop0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Lkp0;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c:Lkp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/os/Messenger;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lrp0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lrp0;-><init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Landroid/os/Messenger;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lhq0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lhq0;

    if-nez v0, :cond_0

    new-instance v0, Lhq0;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c()Lkp0;

    move-result-object v1

    invoke-interface {v1}, Lkp0;->b()Lcq0;

    move-result-object v1

    invoke-direct {v0, v1}, Lhq0;-><init>(Lcq0;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lhq0;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d:Lhq0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Landroid/content/Intent;)Lyp0;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FJD.GooglePlayReceiver"

    if-nez p1, :cond_0

    const-string p1, "No data provided, terminating"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a:Lnp0;

    invoke-virtual {v2, p1}, Lnp0;->b(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "no callback found"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lwp0;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j(Lwp0;Landroid/os/Bundle;)Lyp0;

    move-result-object p1

    return-object p1
.end method

.method public j(Lwp0;Landroid/os/Bundle;)Lyp0;
    .locals 3

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->h:Lxp0;

    invoke-virtual {v0, p2}, Lxp0;->d(Landroid/os/Bundle;)Lyp0;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "FJD.GooglePlayReceiver"

    const-string v0, "unable to decode job"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->l(Lwp0;I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4;

    if-nez v1, :cond_1

    new-instance v1, Lh4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh4;-><init>(I)V

    invoke-virtual {p2}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lyp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Lyp0;)V
    .locals 2

    new-instance v0, Lvp0$b;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->f()Lhq0;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lvp0$b;-><init>(Lhq0;Lzp0;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lvp0$b;->s(Z)Lvp0$b;

    invoke-virtual {v0}, Lvp0$b;->p()Lvp0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->c()Lkp0;

    move-result-object v0

    invoke-interface {v0, p1}, Lkp0;->c(Lvp0;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->e()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x2

    if-nez p1, :cond_1

    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Null Intent passed, terminating"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    sget-object p1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter p1

    :try_start_1
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p1}, Lh4;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b()Llp0;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->i(Landroid/content/Intent;)Lyp0;

    move-result-object p1

    invoke-virtual {v0, p1}, Llp0;->c(Lyp0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    sget-object p1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter p1

    :try_start_3
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p1}, Lh4;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    :cond_2
    monitor-exit p1

    return p2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_3
    :try_start_4
    const-string p1, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_5

    sget-object p1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter p1

    :try_start_5
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p1}, Lh4;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    iget p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    :cond_4
    monitor-exit p1

    return p2

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    :cond_5
    :try_start_6
    const-string p1, "FJD.GooglePlayReceiver"

    const-string v0, "Unknown action received, terminating"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    sget-object p1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter p1

    :try_start_7
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p1}, Lh4;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    :cond_6
    monitor-exit p1

    return p2

    :catchall_3
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2

    :catchall_4
    move-exception p1

    sget-object p2, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j:Lh4;

    monitor-enter p2

    :try_start_8
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p2}, Lh4;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    iget p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->g:I

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    :cond_7
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :catchall_5
    move-exception p1

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1
.end method
