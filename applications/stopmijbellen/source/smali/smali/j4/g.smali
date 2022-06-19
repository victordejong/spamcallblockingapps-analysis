.class public final Lj4/g;
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
    iput-object p1, p0, Lj4/g;->g:Lj4/p;

    iput p3, p0, Lj4/g;->b:I

    iput-object p4, p0, Lj4/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lj4/g;->d:Ljava/lang/String;

    iput p6, p0, Lj4/g;->e:I

    iput-object p7, p0, Lj4/g;->f:Lr4/l;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lj4/g;->g:Lj4/p;

    .line 2
    iget-object v2, v1, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v2, v2, Lo4/j;->n:Landroid/os/IInterface;

    .line 4
    check-cast v2, Lo4/d0;

    .line 5
    iget-object v1, v1, Lj4/p;->a:Ljava/lang/String;

    .line 6
    iget v3, p0, Lj4/g;->b:I

    iget-object v4, p0, Lj4/g;->c:Ljava/lang/String;

    iget-object v5, p0, Lj4/g;->d:Ljava/lang/String;

    iget v6, p0, Lj4/g;->e:I

    .line 7
    invoke-static {v3, v4, v5, v6}, Lj4/p;->i(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 8
    invoke-static {}, Lj4/p;->f()Landroid/os/Bundle;

    move-result-object v4

    .line 9
    new-instance v5, Lj4/k;

    iget-object v6, p0, Lj4/g;->g:Lj4/p;

    iget-object v7, p0, Lj4/g;->f:Lr4/l;

    invoke-direct {v5, v6, v7, v0}, Lj4/k;-><init>(Lj4/p;Lr4/l;I)V

    .line 10
    invoke-interface {v2, v1, v3, v4, v5}, Lo4/d0;->f(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo4/f0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 11
    sget-object v2, Lj4/p;->g:Lp6/c;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    iget-object v4, p0, Lj4/g;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lj4/g;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lj4/g;->e:I

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Lj4/g;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 14
    invoke-virtual {v2, v0, v3}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lj4/g;->f:Lr4/l;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 15
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void
.end method
