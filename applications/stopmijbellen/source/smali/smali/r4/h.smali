.class public final Lr4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/o;

.field public final synthetic b:Lr4/i;


# direct methods
.method public constructor <init>(Lr4/i;Lr4/o;)V
    .locals 0

    iput-object p1, p0, Lr4/h;->b:Lr4/i;

    iput-object p2, p0, Lr4/h;->a:Lr4/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/h;->b:Lr4/i;

    .line 2
    iget-object v0, v0, Lr4/i;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/h;->b:Lr4/i;

    .line 4
    iget-object v1, v1, Lr4/i;->c:Lr4/b;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lr4/h;->a:Lr4/o;

    invoke-virtual {v2}, Lr4/o;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lr4/b;->onSuccess(Ljava/lang/Object;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
