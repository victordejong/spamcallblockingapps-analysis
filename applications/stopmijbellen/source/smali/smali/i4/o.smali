.class public Li4/o;
.super Lo4/z;
.source "SourceFile"


# instance fields
.field public final a:Lp6/c;

.field public final b:Lr4/l;

.field public final synthetic c:Li4/r;


# direct methods
.method public constructor <init>(Li4/r;Lp6/c;Lr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li4/o;->c:Li4/r;

    invoke-direct {p0}, Lo4/z;-><init>()V

    iput-object p2, p0, Li4/o;->a:Lp6/c;

    iput-object p3, p0, Li4/o;->b:Lr4/l;

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li4/o;->c:Li4/r;

    iget-object p1, p1, Li4/r;->a:Lo4/j;

    iget-object v0, p0, Li4/o;->b:Lr4/l;

    invoke-virtual {p1, v0}, Lo4/j;->c(Lr4/l;)V

    iget-object p1, p0, Li4/o;->a:Lp6/c;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    .line 2
    invoke-virtual {p1, v1, v0}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzb(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li4/o;->c:Li4/r;

    iget-object p1, p1, Li4/r;->a:Lo4/j;

    iget-object v0, p0, Li4/o;->b:Lr4/l;

    invoke-virtual {p1, v0}, Lo4/j;->c(Lr4/l;)V

    iget-object p1, p0, Li4/o;->a:Lp6/c;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
