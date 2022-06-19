.class public final Landroidx/work/impl/utils/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/work/impl/utils/n;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/n;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroidx/work/impl/utils/n$b;->a:Landroidx/work/impl/utils/n;

    .line 155
    iput-object p2, p0, Landroidx/work/impl/utils/n$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 160
    iget-object v0, p0, Landroidx/work/impl/utils/n$b;->a:Landroidx/work/impl/utils/n;

    iget-object v0, v0, Landroidx/work/impl/utils/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/n$b;->a:Landroidx/work/impl/utils/n;

    iget-object v1, v1, Landroidx/work/impl/utils/n;->b:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/utils/n$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/utils/n$b;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Landroidx/work/impl/utils/n$b;->a:Landroidx/work/impl/utils/n;

    iget-object v1, v1, Landroidx/work/impl/utils/n;->c:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/utils/n$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/utils/n$a;

    if-eqz v1, :cond_1

    .line 166
    iget-object v2, p0, Landroidx/work/impl/utils/n$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/n$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v1, "Timer with %s is already marked as complete."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/n$b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
