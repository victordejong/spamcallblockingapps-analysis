.class public final Lr4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/o;

.field public final synthetic b:Lr4/g;


# direct methods
.method public constructor <init>(Lr4/g;Lr4/o;)V
    .locals 0

    iput-object p1, p0, Lr4/f;->b:Lr4/g;

    iput-object p2, p0, Lr4/f;->a:Lr4/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr4/f;->b:Lr4/g;

    .line 2
    iget-object v0, v0, Lr4/g;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/f;->b:Lr4/g;

    .line 4
    iget-object v1, v1, Lr4/g;->c:Lr4/a;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lr4/f;->a:Lr4/o;

    .line 6
    iget-object v3, v2, Lr4/o;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v2, Lr4/o;->e:Ljava/lang/Exception;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-interface {v1, v2}, Lr4/a;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
