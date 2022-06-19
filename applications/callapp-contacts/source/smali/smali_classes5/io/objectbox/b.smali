.class public final Lio/objectbox/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field public b:Ljava/io/File;

.field public c:Ljava/io/File;

.field public d:Ljava/lang/String;

.field e:J

.field public f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field public h:I

.field public i:Z

.field public j:Z

.field k:I

.field public l:I

.field public m:I

.field n:Z

.field o:Z

.field public p:Z

.field q:S

.field r:J

.field public s:Lio/objectbox/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/h<",
            "*>;"
        }
    .end annotation
.end field

.field final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/objectbox/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private u:Lio/objectbox/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 78
    iput-wide v0, p0, Lio/objectbox/b;->e:J

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/objectbox/b;->t:Ljava/util/List;

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lio/objectbox/b;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 78
    iput-wide v0, p0, Lio/objectbox/b;->e:J

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/objectbox/b;->t:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 131
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/b;->a:[B

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Model may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 527
    invoke-static {p1}, Lio/objectbox/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 531
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 218
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getApplicationContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context must be a valid Android Context"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "objectbox"

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/io/File;
    .locals 4

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFilesDir"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 259
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_0

    .line 262
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "getFilesDir() returned null - retrying once..."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 263
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 273
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Android files dir does not exist"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Android files dir is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init with given Android context (must be sub class of android.content.Context)"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b()V
    .locals 6

    .line 502
    iget-object v0, p0, Lio/objectbox/b;->u:Lio/objectbox/d;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lio/objectbox/b;->b:Ljava/io/File;

    invoke-static {v0}, Lio/objectbox/BoxStore;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/io/File;

    const-string v2, "data.mdb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 509
    :try_start_0
    iget-object v2, p0, Lio/objectbox/b;->u:Lio/objectbox/d;

    invoke-interface {v2}, Lio/objectbox/d;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_0

    .line 513
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 514
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    :try_start_3
    invoke-static {v3, v2}, Lorg/a/a/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    invoke-static {v2}, Lorg/a/a/b/a;->a(Ljava/io/Closeable;)V

    .line 520
    invoke-static {v3}, Lorg/a/a/b/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v1

    :goto_0
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 511
    :cond_0
    :try_start_4
    new-instance v1, Lio/objectbox/exception/DbException;

    const-string v3, "Factory did not provide a resource"

    invoke-direct {v1, v3}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 517
    :goto_2
    :try_start_5
    new-instance v3, Lio/objectbox/exception/DbException;

    const-string v4, "Could not provision initial data file"

    invoke-direct {v3, v4, v0}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    .line 519
    :goto_3
    invoke-static {v1}, Lorg/a/a/b/a;->a(Ljava/io/Closeable;)V

    .line 520
    invoke-static {v2}, Lorg/a/a/b/a;->a(Ljava/io/Closeable;)V

    .line 521
    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lio/objectbox/BoxStore;
    .locals 2

    .line 493
    iget-object v0, p0, Lio/objectbox/b;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lio/objectbox/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lio/objectbox/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/b;->d:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lio/objectbox/b;->c:Ljava/io/File;

    invoke-static {v1, v0}, Lio/objectbox/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/b;->b:Ljava/io/File;

    .line 497
    :cond_0
    invoke-direct {p0}, Lio/objectbox/b;->b()V

    .line 498
    new-instance v0, Lio/objectbox/BoxStore;

    invoke-direct {v0, p0}, Lio/objectbox/BoxStore;-><init>(Lio/objectbox/b;)V

    return-object v0
.end method

.method public final a(Lio/objectbox/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c<",
            "*>;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lio/objectbox/b;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
