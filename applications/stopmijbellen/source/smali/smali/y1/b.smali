.class public Ly1/b;
.super Ly1/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lp1/j;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lp1/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/b;->b:Lp1/j;

    iput-object p2, p0, Ly1/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ly1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/b;->b:Lp1/j;

    .line 2
    iget-object v0, v0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Ld1/f;->c()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ly1/b;->c:Ljava/lang/String;

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2}, Lx1/r;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Ly1/b;->b:Lp1/j;

    invoke-virtual {p0, v3, v2}, Ly1/d;->a(Lp1/j;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Ld1/f;->g()V

    .line 10
    iget-object v0, p0, Ly1/b;->b:Lp1/j;

    invoke-virtual {p0, v0}, Ly1/d;->b(Lp1/j;)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Ld1/f;->g()V

    .line 12
    throw v1
.end method
