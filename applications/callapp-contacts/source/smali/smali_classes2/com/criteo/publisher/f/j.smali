.class Lcom/criteo/publisher/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/f/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/squareup/tape/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tape/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Lcom/squareup/tape/d;

.field private final f:Lcom/criteo/publisher/f/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/criteo/publisher/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/ae;Lcom/criteo/publisher/f/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f/ae<",
            "TT;>;",
            "Lcom/criteo/publisher/f/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/criteo/publisher/f/j;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/j;->a:Lcom/criteo/publisher/logging/g;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/f/j;->b:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/criteo/publisher/f/j;->f:Lcom/criteo/publisher/f/ae;

    .line 66
    iput-object p2, p0, Lcom/criteo/publisher/f/j;->g:Lcom/criteo/publisher/f/b;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/criteo/publisher/f/j;->d:Ljava/lang/reflect/Method;

    .line 68
    iput-object p1, p0, Lcom/criteo/publisher/f/j;->e:Lcom/squareup/tape/d;

    return-void
.end method

.method private b()Lcom/squareup/tape/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tape/c<",
            "TT;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->c:Lcom/squareup/tape/c;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->f:Lcom/criteo/publisher/f/ae;

    .line 1068
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/criteo/publisher/f/ae;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, v0, Lcom/criteo/publisher/f/ae;->b:Lcom/criteo/publisher/f/b;

    invoke-interface {v3}, Lcom/criteo/publisher/f/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/ae;->a(Ljava/io/File;)Lcom/squareup/tape/c;

    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/criteo/publisher/f/j;->c:Lcom/squareup/tape/c;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->c:Lcom/squareup/tape/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f/j;->b()Lcom/squareup/tape/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    instance-of v2, v1, Lcom/squareup/tape/a;

    if-eqz v2, :cond_2

    .line 1170
    :try_start_1
    iget-object v2, p0, Lcom/criteo/publisher/f/j;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v2, v4, [Ljava/lang/Class;

    .line 1171
    const-class v5, Lcom/squareup/tape/d;

    const-string v6, "usedBytes"

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/criteo/publisher/f/j;->d:Ljava/lang/reflect/Method;

    .line 1172
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/criteo/publisher/f/j;->d:Ljava/lang/reflect/Method;

    .line 156
    move-object v5, v1

    check-cast v5, Lcom/squareup/tape/a;

    .line 1182
    iget-object v6, p0, Lcom/criteo/publisher/f/j;->e:Lcom/squareup/tape/d;

    if-nez v6, :cond_1

    .line 1183
    const-class v6, Lcom/squareup/tape/a;

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1184
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1185
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/tape/d;

    iput-object v3, p0, Lcom/criteo/publisher/f/j;->e:Lcom/squareup/tape/d;

    .line 1188
    :cond_1
    iget-object v3, p0, Lcom/criteo/publisher/f/j;->e:Lcom/squareup/tape/d;

    new-array v4, v4, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 159
    invoke-static {v2}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    .line 164
    :cond_2
    invoke-interface {v1}, Lcom/squareup/tape/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/criteo/publisher/f/j;->g:Lcom/criteo/publisher/f/b;

    invoke-interface {v2}, Lcom/criteo/publisher/f/b;->d()I

    move-result v2

    mul-int v1, v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 165
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f/j;->b()Lcom/squareup/tape/c;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_7

    .line 97
    :try_start_1
    invoke-interface {v1}, Lcom/squareup/tape/c;->b()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lcom/squareup/tape/FileException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 117
    :try_start_2
    invoke-interface {v1}, Lcom/squareup/tape/c;->a()I

    move-result p1

    if-lez p1, :cond_7

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/c;->c()V
    :try_end_2
    .catch Lcom/squareup/tape/FileException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catch_0
    move-exception p1

    if-nez v3, :cond_0

    move-object v3, p1

    goto :goto_5

    .line 124
    :cond_0
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 103
    :cond_1
    :try_start_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/squareup/tape/FileException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    invoke-interface {v1}, Lcom/squareup/tape/c;->a()I

    move-result v5

    if-lez v5, :cond_5

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/c;->c()V
    :try_end_5
    .catch Lcom/squareup/tape/FileException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v5

    if-eqz v3, :cond_4

    .line 124
    :cond_2
    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v5

    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_1

    .line 108
    :cond_3
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :goto_1
    :try_start_8
    invoke-interface {v1}, Lcom/squareup/tape/c;->a()I

    move-result v5

    if-lez v5, :cond_5

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/c;->c()V
    :try_end_8
    .catch Lcom/squareup/tape/FileException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v5

    if-nez v3, :cond_2

    :cond_4
    move-object v3, v5

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :goto_3
    :try_start_9
    invoke-interface {v1}, Lcom/squareup/tape/c;->a()I

    move-result v2

    if-lez v2, :cond_6

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/c;->c()V
    :try_end_9
    .catch Lcom/squareup/tape/FileException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    if-eqz v3, :cond_6

    .line 124
    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :cond_6
    :goto_4
    throw p1

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 131
    iget-object p1, p0, Lcom/criteo/publisher/f/j;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v3}, Lcom/criteo/publisher/f/f;->b(Ljava/lang/Exception;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 134
    :cond_8
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    .line 135
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/f/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f/j;->b()Lcom/squareup/tape/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-interface {v1, p1}, Lcom/squareup/tape/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/squareup/tape/FileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 78
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 80
    invoke-static {p1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 81
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
