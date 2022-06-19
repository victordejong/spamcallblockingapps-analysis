.class public final Lx1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/h;


# instance fields
.field public final a:Ld1/f;

.field public final b:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "Lx1/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ld1/j;


# direct methods
.method public constructor <init>(Ld1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx1/i;->a:Ld1/f;

    .line 3
    new-instance v0, Lx1/i$a;

    invoke-direct {v0, p0, p1}, Lx1/i$a;-><init>(Lx1/i;Ld1/f;)V

    iput-object v0, p0, Lx1/i;->b:Ld1/b;

    .line 4
    new-instance v0, Lx1/i$b;

    invoke-direct {v0, p0, p1}, Lx1/i$b;-><init>(Lx1/i;Ld1/f;)V

    iput-object v0, p0, Lx1/i;->c:Ld1/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lx1/g;
    .locals 5

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ld1/h;->l(Ljava/lang/String;I)Ld1/h;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ld1/h;->p(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ld1/h;->r(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->b()V

    .line 5
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lf1/b;->a(Ld1/f;Lg1/d;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Lb0/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "system_id"

    .line 7
    invoke-static {p1, v3}, Lb0/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    new-instance v3, Lx1/g;

    invoke-direct {v3, v1, v2}, Lx1/g;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Ld1/h;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Ld1/h;->release()V

    .line 16
    throw v1
.end method

.method public b(Lx1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->b()V

    .line 2
    iget-object v0, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lx1/i;->b:Ld1/b;

    invoke-virtual {v0, p1}, Ld1/b;->e(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 6
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->b()V

    .line 2
    iget-object v0, p0, Lx1/i;->c:Ld1/j;

    invoke-virtual {v0}, Ld1/j;->a()Lh1/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, v0, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lh1/e;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->c()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lh1/f;->d()I

    .line 7
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->g()V

    .line 9
    iget-object p1, p0, Lx1/i;->c:Ld1/j;

    .line 10
    iget-object v1, p1, Ld1/j;->c:Lh1/f;

    if-ne v0, v1, :cond_1

    .line 11
    iget-object p1, p1, Ld1/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object v1, p0, Lx1/i;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 13
    iget-object v1, p0, Lx1/i;->c:Ld1/j;

    invoke-virtual {v1, v0}, Ld1/j;->c(Lh1/f;)V

    .line 14
    throw p1
.end method
