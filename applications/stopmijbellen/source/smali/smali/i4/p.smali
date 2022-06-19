.class public final Li4/p;
.super Li4/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Li4/r;Lr4/l;)V
    .locals 2

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "OnCompleteUpdateCallback"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Li4/o;-><init>(Li4/r;Lp6/c;Lr4/l;)V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li4/o;->c:Li4/r;

    iget-object v0, v0, Li4/r;->a:Lo4/j;

    iget-object v1, p0, Li4/o;->b:Lr4/l;

    invoke-virtual {v0, v1}, Lo4/j;->c(Lr4/l;)V

    iget-object v0, p0, Li4/o;->a:Lp6/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCompleteUpdate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "error.code"

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Li4/o;->b:Lr4/l;

    new-instance v3, Lcom/google/android/play/core/install/InstallException;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-direct {v3, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v2, v3}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Li4/o;->b:Lr4/l;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lr4/l;->b(Ljava/lang/Object;)Z

    return-void
.end method
