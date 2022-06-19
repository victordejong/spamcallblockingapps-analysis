.class public final Li4/m;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr4/l;

.field public final synthetic d:Li4/r;


# direct methods
.method public constructor <init>(Li4/r;Lr4/l;Ljava/lang/String;Lr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li4/m;->d:Li4/r;

    iput-object p3, p0, Li4/m;->b:Ljava/lang/String;

    iput-object p4, p0, Li4/m;->c:Lr4/l;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Li4/m;->d:Li4/r;

    iget-object v1, v0, Li4/r;->a:Lo4/j;

    .line 2
    iget-object v1, v1, Lo4/j;->n:Landroid/os/IInterface;

    .line 3
    check-cast v1, Lo4/y;

    .line 4
    iget-object v2, v0, Li4/r;->b:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Li4/m;->b:Ljava/lang/String;

    .line 6
    invoke-static {v0, v3}, Li4/r;->a(Li4/r;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Li4/q;

    iget-object v4, p0, Li4/m;->d:Li4/r;

    iget-object v5, p0, Li4/m;->c:Lr4/l;

    iget-object v6, p0, Li4/m;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Li4/q;-><init>(Li4/r;Lr4/l;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1, v2, v0, v3}, Lo4/y;->i(Ljava/lang/String;Landroid/os/Bundle;Lo4/a0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Li4/r;->e:Lp6/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Li4/m;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lp6/c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Li4/m;->c:Lr4/l;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void
.end method
