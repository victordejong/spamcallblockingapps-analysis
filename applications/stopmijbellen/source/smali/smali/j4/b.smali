.class public final Lj4/b;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lr4/l;

.field public final synthetic d:Lj4/p;


# direct methods
.method public constructor <init>(Lj4/p;Lr4/l;Ljava/util/List;Lr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/b;->d:Lj4/p;

    iput-object p3, p0, Lj4/b;->b:Ljava/util/List;

    iput-object p4, p0, Lj4/b;->c:Lr4/l;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lj4/b;->b:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "module_name"

    .line 5
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj4/b;->d:Lj4/p;

    .line 8
    iget-object v2, v0, Lj4/p;->d:Lo4/j;

    .line 9
    iget-object v2, v2, Lo4/j;->n:Landroid/os/IInterface;

    .line 10
    check-cast v2, Lo4/d0;

    .line 11
    iget-object v0, v0, Lj4/p;->a:Ljava/lang/String;

    .line 12
    invoke-static {}, Lj4/p;->f()Landroid/os/Bundle;

    move-result-object v3

    .line 13
    new-instance v4, Lj4/j;

    iget-object v5, p0, Lj4/b;->d:Lj4/p;

    iget-object v6, p0, Lj4/b;->c:Lr4/l;

    invoke-direct {v4, v5, v6}, Lj4/j;-><init>(Lj4/p;Lr4/l;)V

    .line 14
    invoke-interface {v2, v0, v1, v3, v4}, Lo4/d0;->k(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lo4/f0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lj4/p;->g:Lp6/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Lj4/b;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    .line 17
    invoke-virtual {v1, v0, v3, v2}, Lp6/c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
