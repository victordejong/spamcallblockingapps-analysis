.class public abstract Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->a:Ljava/util/Map;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/s;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 185
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method final d()V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/s;->b:Z

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/s;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Landroidx/lifecycle/s;->a:Ljava/util/Map;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroidx/lifecycle/s;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/s;->a()V

    .line 140
    return-void
.end method
