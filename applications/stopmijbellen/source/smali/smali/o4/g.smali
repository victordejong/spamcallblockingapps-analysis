.class public final Lo4/g;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Lo4/i;


# direct methods
.method public constructor <init>(Lo4/i;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/g;->c:Lo4/i;

    iput-object p2, p0, Lo4/g;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Lo4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo4/g;->c:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    .line 2
    iget-object v1, v0, Lo4/j;->i:Lo4/f;

    .line 3
    iget-object v2, p0, Lo4/g;->b:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lo4/f;->b(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 4
    iput-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    .line 5
    iget-object v0, p0, Lo4/g;->c:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    .line 6
    iget-object v1, v0, Lo4/j;->b:Lp6/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    .line 7
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lo4/j;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lo4/j;->b:Lp6/c;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    .line 8
    invoke-virtual {v0, v1, v4, v3}, Lp6/c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 9
    :goto_0
    iget-object v0, p0, Lo4/g;->c:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    .line 10
    iput-boolean v2, v0, Lo4/j;->g:Z

    .line 11
    iget-object v0, v0, Lo4/j;->d:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo4/g;->c:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    .line 14
    iget-object v0, v0, Lo4/j;->d:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
