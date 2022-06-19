.class public final Lo4/d;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lo4/j;


# direct methods
.method public constructor <init>(Lo4/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/d;->b:Lo4/j;

    invoke-direct {p0}, Lo4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/d;->b:Lo4/j;

    .line 2
    iget-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lo4/j;->b:Lp6/c;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    .line 4
    invoke-virtual {v0, v3, v2}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lo4/d;->b:Lo4/j;

    .line 5
    iget-object v2, v0, Lo4/j;->a:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lo4/j;->m:Landroid/content/ServiceConnection;

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lo4/d;->b:Lo4/j;

    .line 8
    iput-boolean v1, v0, Lo4/j;->g:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lo4/j;->n:Landroid/os/IInterface;

    .line 10
    iput-object v1, v0, Lo4/j;->m:Landroid/content/ServiceConnection;

    .line 11
    :cond_0
    iget-object v0, p0, Lo4/d;->b:Lo4/j;

    .line 12
    invoke-virtual {v0}, Lo4/j;->d()V

    return-void
.end method
