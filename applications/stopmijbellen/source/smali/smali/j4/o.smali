.class public final Lj4/o;
.super Lj4/i;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final synthetic f:Lj4/p;


# direct methods
.method public constructor <init>(Lj4/p;Lr4/l;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/o;->f:Lj4/p;

    invoke-direct {p0, p1, p2}, Lj4/i;-><init>(Lj4/p;Lr4/l;)V

    iput p3, p0, Lj4/o;->c:I

    iput-object p4, p0, Lj4/o;->d:Ljava/lang/String;

    iput p5, p0, Lj4/o;->e:I

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj4/o;->f:Lj4/p;

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

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget p1, p0, Lj4/o;->e:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lj4/o;->f:Lj4/p;

    iget v1, p0, Lj4/o;->c:I

    iget-object v2, p0, Lj4/o;->d:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lj4/p;->h(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
