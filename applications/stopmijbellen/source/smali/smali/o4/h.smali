.class public final Lo4/h;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lo4/i;


# direct methods
.method public constructor <init>(Lo4/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/h;->b:Lo4/i;

    invoke-direct {p0}, Lo4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo4/h;->b:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    .line 2
    iget-object v1, v0, Lo4/j;->b:Lp6/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    .line 3
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Lo4/j;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    iget-object v0, p0, Lo4/h;->b:Lo4/i;

    iget-object v0, v0, Lo4/i;->a:Lo4/j;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    .line 6
    iput-boolean v2, v0, Lo4/j;->g:Z

    return-void
.end method
