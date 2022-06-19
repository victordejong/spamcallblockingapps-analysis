.class public Lj4/i;
.super Lo4/e0;
.source "SourceFile"


# instance fields
.field public final a:Lr4/l;

.field public final synthetic b:Lj4/p;


# direct methods
.method public constructor <init>(Lj4/p;Lr4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/i;->b:Lj4/p;

    invoke-direct {p0}, Lo4/e0;-><init>()V

    iput-object p2, p0, Lj4/i;->a:Lr4/l;

    return-void
.end method


# virtual methods
.method public d(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj4/i;->b:Lj4/p;

    .line 2
    iget-object p1, p1, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object p2, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {p1, p2}, Lo4/j;->c(Lr4/l;)V

    .line 4
    sget-object p1, Lj4/p;->g:Lp6/c;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onGetChunkFileDescriptor"

    .line 5
    invoke-virtual {p1, v0, p2}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj4/i;->b:Lj4/p;

    .line 2
    iget-object p1, p1, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v0, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {p1, v0}, Lo4/j;->c(Lr4/l;)V

    .line 4
    sget-object p1, Lj4/p;->g:Lp6/c;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    .line 5
    invoke-virtual {p1, v1, v0}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public m(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lj4/i;->b:Lj4/p;

    .line 2
    iget-object p2, p2, Lj4/p;->e:Lo4/j;

    .line 3
    iget-object v0, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {p2, v0}, Lo4/j;->c(Lr4/l;)V

    .line 4
    sget-object p2, Lj4/p;->g:Lp6/c;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "keep_alive"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onKeepAlive(%b)"

    invoke-virtual {p2, p1, v0}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zzd(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj4/i;->b:Lj4/p;

    .line 2
    iget-object v0, v0, Lj4/p;->d:Lo4/j;

    .line 3
    iget-object v1, p0, Lj4/i;->a:Lr4/l;

    invoke-virtual {v0, v1}, Lo4/j;->c(Lr4/l;)V

    const-string v0, "error_code"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    sget-object v0, Lj4/p;->g:Lp6/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lj4/i;->a:Lr4/l;

    new-instance v1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    .line 7
    invoke-direct {v1, p1}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-virtual {v0, v1}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void
.end method
