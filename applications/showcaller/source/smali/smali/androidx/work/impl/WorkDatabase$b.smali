.class Landroidx/work/impl/WorkDatabase$b;
.super Landroidx/room/RoomDatabase$b;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->u()Landroidx/room/RoomDatabase$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/r/a/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$b;->c(Lb/r/a/b;)V

    .line 2
    invoke-interface {p1}, Lb/r/a/b;->h()V

    .line 3
    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/r/a/b;->n(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lb/r/a/b;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Lb/r/a/b;->O()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lb/r/a/b;->O()V

    .line 6
    throw v0
.end method
