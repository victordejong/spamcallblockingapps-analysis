.class final Landroidx/media2/session/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;JJJ)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/media2/session/j$5;->d:Landroidx/media2/session/j;

    iput-wide p2, p0, Landroidx/media2/session/j$5;->a:J

    iput-wide p4, p0, Landroidx/media2/session/j$5;->b:J

    iput-wide p6, p0, Landroidx/media2/session/j$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 7

    .line 238
    iget-wide v0, p0, Landroidx/media2/session/j$5;->a:J

    iget-wide v2, p0, Landroidx/media2/session/j$5;->b:J

    iget-wide v4, p0, Landroidx/media2/session/j$5;->c:J

    .line 2072
    iget-object v6, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 2073
    :try_start_0
    iput-wide v0, p1, Landroidx/media2/session/h;->p:J

    .line 2074
    iput-wide v2, p1, Landroidx/media2/session/h;->q:J

    .line 2075
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    iget-object v0, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/h$22;

    invoke-direct {v1, p1, v4, v5}, Landroidx/media2/session/h$22;-><init>(Landroidx/media2/session/h;J)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2075
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
