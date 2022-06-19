.class public final Lh70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg70;


# instance fields
.field public final a:Lz00;

.field public final b:Ls00;


# direct methods
.method public constructor <init>(Lz00;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh70;->a:Lz00;

    new-instance v0, Lh70$a;

    invoke-direct {v0, p0, p1}, Lh70$a;-><init>(Lh70;Lz00;)V

    iput-object v0, p0, Lh70;->b:Ls00;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc10;->g(Ljava/lang/String;I)Lc10;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lc10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lc10;->o(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lh70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->b()V

    iget-object p1, p0, Lh70;->a:Lz00;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lh10;->b(Lz00;Lq10;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lc10;->release()V

    throw v1
.end method

.method public b(Lf70;)V
    .locals 1

    iget-object v0, p0, Lh70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Lh70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    iget-object v0, p0, Lh70;->b:Ls00;

    invoke-virtual {v0, p1}, Ls00;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Lh70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lh70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lh70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->g()V

    throw p1
.end method
