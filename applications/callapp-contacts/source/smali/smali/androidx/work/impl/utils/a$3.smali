.class final Landroidx/work/impl/utils/a$3;
.super Landroidx/work/impl/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/a;->b(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/work/impl/j;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V
    .locals 0

    .line 176
    iput-object p1, p0, Landroidx/work/impl/utils/a$3;->b:Landroidx/work/impl/j;

    iput-object p2, p0, Landroidx/work/impl/utils/a$3;->c:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/work/impl/utils/a$3;->d:Z

    invoke-direct {p0}, Landroidx/work/impl/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 180
    iget-object v0, p0, Landroidx/work/impl/utils/a$3;->b:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 181
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 183
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 184
    iget-object v2, p0, Landroidx/work/impl/utils/a$3;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    iget-object v3, p0, Landroidx/work/impl/utils/a$3;->b:Landroidx/work/impl/j;

    invoke-static {v3, v2}, Landroidx/work/impl/utils/a$3;->a(Landroidx/work/impl/j;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 193
    iget-boolean v0, p0, Landroidx/work/impl/utils/a$3;->d:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroidx/work/impl/utils/a$3;->b:Landroidx/work/impl/j;

    invoke-static {v0}, Landroidx/work/impl/utils/a$3;->a(Landroidx/work/impl/j;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 190
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 191
    throw v1
.end method
