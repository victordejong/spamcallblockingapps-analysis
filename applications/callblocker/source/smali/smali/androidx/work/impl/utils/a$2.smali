.class final Landroidx/work/impl/utils/a$2;
.super Landroidx/work/impl/utils/a;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/a;->a(Ljava/lang/String;Landroidx/work/impl/i;Z)Landroidx/work/impl/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Landroidx/work/impl/utils/a$2;->a:Landroidx/work/impl/i;

    iput-object p2, p0, Landroidx/work/impl/utils/a$2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/work/impl/utils/a$2;->c:Z

    invoke-direct {p0}, Landroidx/work/impl/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Landroidx/work/impl/utils/a$2;->a:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 183
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    .line 184
    iget-object v2, p0, Landroidx/work/impl/utils/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/b/q;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v3, p0, Landroidx/work/impl/utils/a$2;->a:Landroidx/work/impl/i;

    invoke-virtual {p0, v3, v0}, Landroidx/work/impl/utils/a$2;->a(Landroidx/work/impl/i;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 191
    throw v0

    .line 188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 193
    iget-boolean v0, p0, Landroidx/work/impl/utils/a$2;->c:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroidx/work/impl/utils/a$2;->a:Landroidx/work/impl/i;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/a$2;->a(Landroidx/work/impl/i;)V

    .line 196
    :cond_1
    return-void
.end method
