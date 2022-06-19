.class public abstract Lzy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzy$c;,
        Lzy$a;,
        Lzy$b;,
        Lzy$e;,
        Lzy$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lzy$d;

.field public final c:Lzy$c;

.field public d:Lzy$a;

.field public f:Lyy;

.field public g:Z

.field public h:Laz;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzy;-><init>(Landroid/content/Context;Lzy$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzy$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzy$c;

    invoke-direct {v0, p0}, Lzy$c;-><init>(Lzy;)V

    iput-object v0, p0, Lzy;->c:Lzy$c;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lzy;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance p2, Lzy$d;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Lzy$d;-><init>(Landroid/content/ComponentName;)V

    :cond_0
    iput-object p2, p0, Lzy;->b:Lzy$d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public l()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzy;->j:Z

    iget-object v0, p0, Lzy;->d:Lzy$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzy;->h:Laz;

    invoke-virtual {v0, p0, v1}, Lzy$a;->a(Lzy;Laz;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzy;->g:Z

    iget-object v0, p0, Lzy;->f:Lyy;

    invoke-virtual {p0, v0}, Lzy;->v(Lyy;)V

    return-void
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzy;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final o()Laz;
    .locals 1

    iget-object v0, p0, Lzy;->h:Laz;

    return-object v0
.end method

.method public final p()Lyy;
    .locals 1

    iget-object v0, p0, Lzy;->f:Lyy;

    return-object v0
.end method

.method public final q()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lzy;->c:Lzy$c;

    return-object v0
.end method

.method public final r()Lzy$d;
    .locals 1

    iget-object v0, p0, Lzy;->b:Lzy$d;

    return-object v0
.end method

.method public s(Ljava/lang/String;)Lzy$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initialMemberRouteId cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Ljava/lang/String;)Lzy$e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Lzy$e;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lzy;->t(Ljava/lang/String;)Lzy$e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Lyy;)V
    .locals 0

    return-void
.end method

.method public final w(Lzy$a;)V
    .locals 0

    invoke-static {}, Ldz;->d()V

    iput-object p1, p0, Lzy;->d:Lzy$a;

    return-void
.end method

.method public final x(Laz;)V
    .locals 1

    invoke-static {}, Ldz;->d()V

    iget-object v0, p0, Lzy;->h:Laz;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lzy;->h:Laz;

    iget-boolean p1, p0, Lzy;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzy;->j:Z

    iget-object v0, p0, Lzy;->c:Lzy$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final y(Lyy;)V
    .locals 1

    invoke-static {}, Ldz;->d()V

    iget-object v0, p0, Lzy;->f:Lyy;

    invoke-static {v0, p1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lzy;->z(Lyy;)V

    return-void
.end method

.method public final z(Lyy;)V
    .locals 1

    iput-object p1, p0, Lzy;->f:Lyy;

    iget-boolean p1, p0, Lzy;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzy;->g:Z

    iget-object p1, p0, Lzy;->c:Lzy$c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
