.class final Landroidx/media2/session/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->b(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;IIII)V
    .locals 0

    .line 192
    iput-object p1, p0, Landroidx/media2/session/j$2;->e:Landroidx/media2/session/j;

    iput p2, p0, Landroidx/media2/session/j$2;->a:I

    iput p3, p0, Landroidx/media2/session/j$2;->b:I

    iput p4, p0, Landroidx/media2/session/j$2;->c:I

    iput p5, p0, Landroidx/media2/session/j$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 5

    .line 195
    iget v0, p0, Landroidx/media2/session/j$2;->a:I

    iget v1, p0, Landroidx/media2/session/j$2;->b:I

    iget v2, p0, Landroidx/media2/session/j$2;->c:I

    iget v3, p0, Landroidx/media2/session/j$2;->d:I

    .line 2042
    iget-object v4, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 2043
    :try_start_0
    iput v0, p1, Landroidx/media2/session/h;->n:I

    .line 2044
    iput v1, p1, Landroidx/media2/session/h;->t:I

    .line 2045
    iput v2, p1, Landroidx/media2/session/h;->u:I

    .line 2046
    iput v3, p1, Landroidx/media2/session/h;->v:I

    .line 2047
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    iget-object v1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/h$20;

    invoke-direct {v2, p1, v0}, Landroidx/media2/session/h$20;-><init>(Landroidx/media2/session/h;I)V

    invoke-virtual {v1, v2}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2047
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
