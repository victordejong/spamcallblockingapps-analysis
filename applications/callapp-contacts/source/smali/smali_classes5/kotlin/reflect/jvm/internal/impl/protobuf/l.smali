.class public Lkotlin/reflect/jvm/internal/impl/protobuf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private c:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

.field private volatile d:Z


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 1156
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    if-nez v0, :cond_2

    .line 1159
    monitor-enter p0

    .line 1160
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    if-eqz v0, :cond_0

    .line 1161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz v0, :cond_1

    .line 1165
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    move-result-object p1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    invoke-interface {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    goto :goto_0

    .line 1168
    :cond_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 87
    :cond_2
    :goto_1
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 131
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->d:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->f()I

    move-result v0

    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    return v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 96
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->d:Z

    return-object v0
.end method
