.class public final Ly60;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx60;


# instance fields
.field public final a:Lz00;

.field public final b:Ls00;

.field public final c:Ld10;


# direct methods
.method public constructor <init>(Lz00;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly60;->a:Lz00;

    new-instance v0, Ly60$a;

    invoke-direct {v0, p0, p1}, Ly60$a;-><init>(Ly60;Lz00;)V

    iput-object v0, p0, Ly60;->b:Ls00;

    new-instance v0, Ly60$b;

    invoke-direct {v0, p0, p1}, Ly60$b;-><init>(Ly60;Lz00;)V

    iput-object v0, p0, Ly60;->c:Ld10;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lw60;
    .locals 4

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Ly60;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    invoke-static {p1, v1}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p1, v2}, Lg10;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lw60;

    invoke-direct {v3, v1, v2}, Lw60;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public b(Lw60;)V
    .locals 1

    iget-object v0, p0, Ly60;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Ly60;->a:Lz00;

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    iget-object v0, p0, Ly60;->b:Ls00;

    invoke-virtual {v0, p1}, Ls00;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ly60;->a:Lz00;

    invoke-virtual {v0}, Lz00;->g()V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ly60;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Ly60;->c:Ld10;

    invoke-virtual {v0}, Ld10;->a()Lr10;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->c()V

    :try_start_0
    invoke-interface {v0}, Lr10;->d()I

    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ly60;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    iget-object p1, p0, Ly60;->c:Ld10;

    invoke-virtual {p1, v0}, Ld10;->f(Lr10;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Ly60;->a:Lz00;

    invoke-virtual {v1}, Lz00;->g()V

    iget-object v1, p0, Ly60;->c:Ld10;

    invoke-virtual {v1, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method
