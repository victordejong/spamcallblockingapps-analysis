.class final Landroidx/work/impl/WorkDatabase$a;
.super Landroidx/room/RoomDatabase$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->t()Landroidx/room/RoomDatabase$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ld/r/a/b;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$b;->b(Ld/r/a/b;)V

    invoke-interface {p1}, Ld/r/a/b;->i()V

    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ld/r/a/b;->n(Ljava/lang/String;)V

    invoke-interface {p1}, Ld/r/a/b;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ld/r/a/b;->h()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ld/r/a/b;->h()V

    throw v0
.end method
