.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b$a;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;
    .locals 10

    const-string v1, "fqName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "storageManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "module"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inputStream"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v1, p3

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/io/InputStream;

    .line 38
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/a/a;->a:Lkotlin/reflect/jvm/internal/impl/b/a/a$a;

    const-string v2, "stream"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1029
    new-instance v6, Lkotlin/f/c;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lkotlin/f/c;-><init>(II)V

    check-cast v6, Ljava/lang/Iterable;

    .line 1034
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 1035
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    check-cast v8, Lkotlin/a/ag;

    invoke-virtual {v8}, Lkotlin/a/ag;->a()I

    .line 1029
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1037
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 1034
    check-cast v7, Ljava/util/Collection;

    .line 1029
    invoke-static {v7}, Lkotlin/a/n;->c(Ljava/util/Collection;)[I

    move-result-object v2

    array-length v6, v2

    new-array v6, v6, [I

    array-length v7, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/b/a/a;

    invoke-direct {v7, v6}, Lkotlin/reflect/jvm/internal/impl/b/a/a;-><init>([I)V

    .line 40
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/b/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 2024
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    .line 49
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 37
    invoke-static {v1, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;

    const-string v1, "proto"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/b;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a/a;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 42
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kotlin built-in definition format version is not supported: expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/a/a;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Please update Kotlin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 37
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
