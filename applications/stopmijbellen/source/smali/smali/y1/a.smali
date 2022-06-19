.class public Ly1/a;
.super Ly1/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lp1/j;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lp1/j;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/a;->b:Lp1/j;

    iput-object p2, p0, Ly1/a;->c:Ljava/util/UUID;

    invoke-direct {p0}, Ly1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/a;->b:Lp1/j;

    .line 2
    iget-object v0, v0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Ld1/f;->c()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ly1/a;->b:Lp1/j;

    iget-object v2, p0, Ly1/a;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ly1/d;->a(Lp1/j;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ld1/f;->g()V

    .line 7
    iget-object v0, p0, Ly1/a;->b:Lp1/j;

    invoke-virtual {p0, v0}, Ly1/d;->b(Lp1/j;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-virtual {v0}, Ld1/f;->g()V

    .line 9
    throw v1
.end method
