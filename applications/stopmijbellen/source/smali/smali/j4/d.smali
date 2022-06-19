.class public final Lj4/d;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Lr4/l;

.field public final synthetic g:Lj4/p;


# direct methods
.method public constructor <init>(Lj4/p;Lr4/l;ILjava/lang/String;Ljava/lang/String;ILr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/d;->g:Lj4/p;

    iput p3, p0, Lj4/d;->b:I

    iput-object p4, p0, Lj4/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lj4/d;->d:Ljava/lang/String;

    iput p6, p0, Lj4/d;->e:I

    iput-object p7, p0, Lj4/d;->f:Lr4/l;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lj4/d;->g:Lj4/p;

    .line 2
    iget-object v1, v0, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v1, v1, Lo4/j;->n:Landroid/os/IInterface;

    .line 4
    check-cast v1, Lo4/d0;

    .line 5
    iget-object v0, v0, Lj4/p;->a:Ljava/lang/String;

    .line 6
    iget v2, p0, Lj4/d;->b:I

    iget-object v3, p0, Lj4/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lj4/d;->d:Ljava/lang/String;

    iget v5, p0, Lj4/d;->e:I

    .line 7
    invoke-static {v2, v3, v4, v5}, Lj4/p;->i(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 8
    invoke-static {}, Lj4/p;->f()Landroid/os/Bundle;

    move-result-object v3

    .line 9
    new-instance v4, Lj4/n;

    iget-object v5, p0, Lj4/d;->g:Lj4/p;

    iget-object v6, p0, Lj4/d;->f:Lr4/l;

    invoke-direct {v4, v5, v6}, Lj4/n;-><init>(Lj4/p;Lr4/l;)V

    .line 10
    invoke-interface {v1, v0, v2, v3, v4}, Lo4/d0;->n(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo4/f0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lj4/p;->g:Lp6/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyChunkTransferred"

    .line 12
    invoke-virtual {v1, v0, v3, v2}, Lp6/c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
