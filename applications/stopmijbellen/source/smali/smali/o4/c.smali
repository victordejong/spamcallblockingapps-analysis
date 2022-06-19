.class public final Lo4/c;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lo4/a;

.field public final synthetic c:Lo4/j;


# direct methods
.method public constructor <init>(Lo4/j;Lr4/l;Lo4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/c;->c:Lo4/j;

    iput-object p3, p0, Lo4/c;->b:Lo4/a;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo4/c;->c:Lo4/j;

    iget-object v1, p0, Lo4/c;->b:Lo4/a;

    .line 2
    iget-object v2, v0, Lo4/j;->n:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lo4/j;->g:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lo4/j;->b:Lp6/c;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Initiate binding to the service."

    invoke-virtual {v2, v5, v4}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v0, Lo4/j;->d:Ljava/util/List;

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lo4/i;

    invoke-direct {v1, v0}, Lo4/i;-><init>(Lo4/j;)V

    iput-object v1, v0, Lo4/j;->m:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lo4/j;->g:Z

    iget-object v4, v0, Lo4/j;->a:Landroid/content/Context;

    iget-object v5, v0, Lo4/j;->h:Landroid/content/Intent;

    .line 4
    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lo4/j;->b:Lp6/c;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Failed to bind to the service."

    .line 5
    invoke-virtual {v1, v4, v2}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v3, v0, Lo4/j;->g:Z

    iget-object v1, v0, Lo4/j;->d:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo4/a;

    new-instance v3, Lcom/google/android/play/core/internal/zzat;

    .line 7
    invoke-direct {v3}, Lcom/google/android/play/core/internal/zzat;-><init>()V

    .line 8
    iget-object v2, v2, Lo4/a;->a:Lr4/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lr4/l;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lo4/j;->d:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, Lo4/j;->g:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lo4/j;->b:Lp6/c;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Waiting to bind to the service."

    .line 11
    invoke-virtual {v2, v4, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Lo4/j;->d:Ljava/util/List;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v1}, Lo4/a;->run()V

    :cond_4
    :goto_1
    return-void
.end method
