.class public Lev$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->O(Lev$g0;Lxv;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxv;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lev$g0;

.field public final synthetic d:Lev;


# direct methods
.method public constructor <init>(Lev;Lxv;Ljava/lang/Object;Lev$g0;)V
    .locals 0

    iput-object p1, p0, Lev$d;->d:Lev;

    iput-object p2, p0, Lev$d;->a:Lxv;

    iput-object p3, p0, Lev$d;->b:Ljava/lang/Object;

    iput-object p4, p0, Lev$d;->c:Lev$g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lev$d;->a:Lxv;

    invoke-virtual {v0}, Lwv;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lev$d;->d:Lev;

    iget-object v0, v0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev$d;->d:Lev;

    iget-object v1, v1, Lev;->c:Lfv;

    iget-object v2, p0, Lev$d;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lfv;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lev$d;->d:Lev;

    iget-object v1, v1, Lev;->f:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lev$d;->c:Lev$g0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
