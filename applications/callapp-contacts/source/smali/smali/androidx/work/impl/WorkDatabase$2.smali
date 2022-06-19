.class final Landroidx/work/impl/WorkDatabase$2;
.super Landroidx/room/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Landroidx/room/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/b;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Landroidx/room/h$b;->a(Landroidx/sqlite/db/b;)V

    .line 162
    invoke-interface {p1}, Landroidx/sqlite/db/b;->a()V

    .line 166
    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Landroidx/sqlite/db/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {p1}, Landroidx/sqlite/db/b;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/b;->b()V

    .line 170
    throw v0
.end method
