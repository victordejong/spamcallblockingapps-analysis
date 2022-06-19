.class public final Lj4/c;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lr4/l;

.field public final synthetic d:Lj4/p;


# direct methods
.method public constructor <init>(Lj4/p;Lr4/l;Ljava/util/Map;Lr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/c;->d:Lj4/p;

    iput-object p3, p0, Lj4/c;->b:Ljava/util/Map;

    iput-object p4, p0, Lj4/c;->c:Lr4/l;

    invoke-direct {p0, p2}, Lo4/a;-><init>(Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lj4/c;->d:Lj4/p;

    .line 2
    iget-object v1, v0, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v1, v1, Lo4/j;->n:Landroid/os/IInterface;

    .line 4
    check-cast v1, Lo4/d0;

    .line 5
    iget-object v0, v0, Lj4/p;->a:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lj4/c;->b:Ljava/util/Map;

    .line 7
    invoke-static {v2}, Lj4/p;->j(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lj4/l;

    iget-object v4, p0, Lj4/c;->d:Lj4/p;

    iget-object v5, p0, Lj4/c;->c:Lr4/l;

    invoke-direct {v3, v4, v5}, Lj4/l;-><init>(Lj4/p;Lr4/l;)V

    .line 8
    invoke-interface {v1, v0, v2, v3}, Lo4/d0;->c(Ljava/lang/String;Landroid/os/Bundle;Lo4/f0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lj4/p;->g:Lp6/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "syncPacks"

    .line 10
    invoke-virtual {v1, v0, v3, v2}, Lp6/c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lj4/c;->c:Lr4/l;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void
.end method
