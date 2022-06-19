.class public final Lx1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/n;


# instance fields
.field public final a:Ld1/f;

.field public final b:Ld1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b<",
            "Lx1/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ld1/j;

.field public final d:Ld1/j;


# direct methods
.method public constructor <init>(Ld1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx1/o;->a:Ld1/f;

    .line 3
    new-instance v0, Lx1/o$a;

    invoke-direct {v0, p0, p1}, Lx1/o$a;-><init>(Lx1/o;Ld1/f;)V

    iput-object v0, p0, Lx1/o;->b:Ld1/b;

    .line 4
    new-instance v0, Lx1/o$b;

    invoke-direct {v0, p0, p1}, Lx1/o$b;-><init>(Lx1/o;Ld1/f;)V

    iput-object v0, p0, Lx1/o;->c:Ld1/j;

    .line 5
    new-instance v0, Lx1/o$c;

    invoke-direct {v0, p0, p1}, Lx1/o$c;-><init>(Lx1/o;Ld1/f;)V

    iput-object v0, p0, Lx1/o;->d:Ld1/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->b()V

    .line 2
    iget-object v0, p0, Lx1/o;->c:Ld1/j;

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
    iget-object p1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->c()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lh1/f;->d()I

    .line 7
    iget-object p1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {p1}, Ld1/f;->g()V

    .line 9
    iget-object p1, p0, Lx1/o;->c:Ld1/j;

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
    iget-object v1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 13
    iget-object v1, p0, Lx1/o;->c:Ld1/j;

    invoke-virtual {v1, v0}, Ld1/j;->c(Lh1/f;)V

    .line 14
    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v0}, Ld1/f;->b()V

    .line 2
    iget-object v0, p0, Lx1/o;->d:Ld1/j;

    invoke-virtual {v0}, Ld1/j;->a()Lh1/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->c()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lh1/f;->d()I

    .line 5
    iget-object v1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 7
    iget-object v1, p0, Lx1/o;->d:Ld1/j;

    .line 8
    iget-object v2, v1, Ld1/j;->c:Lh1/f;

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, v1, Ld1/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lx1/o;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->g()V

    .line 11
    iget-object v2, p0, Lx1/o;->d:Ld1/j;

    invoke-virtual {v2, v0}, Ld1/j;->c(Lh1/f;)V

    .line 12
    throw v1
.end method
