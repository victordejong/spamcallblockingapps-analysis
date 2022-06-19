.class public Landroidx/work/impl/utils/l$b;
.super Ljava/lang/Object;
.source "WorkTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/work/impl/utils/l;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroidx/work/impl/utils/l$b;->a:Landroidx/work/impl/utils/l;

    .line 155
    iput-object p2, p0, Landroidx/work/impl/utils/l$b;->b:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 160
    iget-object v0, p0, Landroidx/work/impl/utils/l$b;->a:Landroidx/work/impl/utils/l;

    iget-object v1, v0, Landroidx/work/impl/utils/l;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/l$b;->a:Landroidx/work/impl/utils/l;

    iget-object v0, v0, Landroidx/work/impl/utils/l;->a:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/utils/l$b;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/utils/l$b;

    .line 162
    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Landroidx/work/impl/utils/l$b;->a:Landroidx/work/impl/utils/l;

    iget-object v0, v0, Landroidx/work/impl/utils/l;->b:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/utils/l$b;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/utils/l$a;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Landroidx/work/impl/utils/l$b;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/utils/l$a;->a(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    monitor-exit v1

    .line 173
    return-void

    .line 169
    :cond_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    const-string/jumbo v2, "WrkTimerRunnable"

    const-string/jumbo v3, "Timer with %s is already marked as complete."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/utils/l$b;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
