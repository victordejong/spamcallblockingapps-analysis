.class final Landroidx/media2/session/j$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(IJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;JJI)V
    .locals 0

    .line 105
    iput-object p1, p0, Landroidx/media2/session/j$18;->d:Landroidx/media2/session/j;

    iput-wide p2, p0, Landroidx/media2/session/j$18;->a:J

    iput-wide p4, p0, Landroidx/media2/session/j$18;->b:J

    iput p6, p0, Landroidx/media2/session/j$18;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 6

    .line 108
    iget-wide v0, p0, Landroidx/media2/session/j$18;->a:J

    iget-wide v2, p0, Landroidx/media2/session/j$18;->b:J

    iget v4, p0, Landroidx/media2/session/j$18;->c:I

    .line 1915
    iget-object v5, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 1916
    :try_start_0
    iput-wide v0, p1, Landroidx/media2/session/h;->p:J

    .line 1917
    iput-wide v2, p1, Landroidx/media2/session/h;->q:J

    .line 1918
    iput v4, p1, Landroidx/media2/session/h;->o:I

    .line 1919
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1920
    iget-object v0, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/h$12;

    invoke-direct {v1, p1, v4}, Landroidx/media2/session/h$12;-><init>(Landroidx/media2/session/h;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1919
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
