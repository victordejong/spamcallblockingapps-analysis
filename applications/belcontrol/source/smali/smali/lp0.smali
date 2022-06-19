.class public Llp0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llp0$b;
    }
.end annotation


# static fields
.field public static final d:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Ljava/lang/String;",
            "Laq0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ltp0;

.field public final b:Landroid/content/Context;

.field public final c:Llp0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4;

    invoke-direct {v0}, Lh4;-><init>()V

    sput-object v0, Llp0;->d:Lh4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llp0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llp0$a;

    invoke-direct {v0, p0}, Llp0$a;-><init>(Llp0;)V

    iput-object v0, p0, Llp0;->a:Ltp0;

    iput-object p1, p0, Llp0;->b:Landroid/content/Context;

    iput-object p2, p0, Llp0;->c:Llp0$b;

    return-void
.end method

.method public static synthetic a(Llp0;Lyp0;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Llp0;->d(Lyp0;I)V

    return-void
.end method

.method public static e(Lyp0;Z)V
    .locals 2

    sget-object v0, Llp0;->d:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laq0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Laq0;->e(Lyp0;Z)V

    invoke-virtual {v1}, Laq0;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyp0;->getService()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lzp0;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.firebase.jobdispatcher.ACTION_EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llp0;->b:Landroid/content/Context;

    invoke-interface {p1}, Lzp0;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public c(Lyp0;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Llp0;->d:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laq0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Laq0;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Laq0;->b(Lyp0;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Laq0;->c()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Laq0;

    iget-object v2, p0, Llp0;->a:Ltp0;

    iget-object v3, p0, Llp0;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Laq0;-><init>(Ltp0;Landroid/content/Context;)V

    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, p1}, Laq0;->f(Lyp0;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Llp0;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Llp0;->b(Lzp0;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FJD.ExternalReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Laq0;->h()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lyp0;I)V
    .locals 2

    sget-object v0, Llp0;->d:Lh4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laq0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Laq0;->d(Lyp0;)V

    invoke-virtual {v1}, Laq0;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lyp0;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Llp0;->c:Llp0$b;

    invoke-interface {v0, p1, p2}, Llp0$b;->a(Lyp0;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
