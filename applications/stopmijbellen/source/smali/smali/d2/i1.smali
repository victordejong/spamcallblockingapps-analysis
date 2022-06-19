.class public Ld2/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/h2$a;


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/i1;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/h2;Ld2/t0;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/h2;",
            "Ld2/t0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ld2/i1;->a:Ld2/f1;

    .line 2
    iget-object p2, p1, Ld2/f1;->x:Ljava/lang/String;

    const-string p3, "Exception on closing MD5 input stream"

    .line 3
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/adc3/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    const-string v0, "SHA1"

    .line 7
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 8
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 9
    :goto_0
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 10
    invoke-virtual {v0, v3, v2, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 12
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 13
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%40s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 14
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    const/16 v5, 0x30

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 17
    :catch_0
    invoke-static {v2, v2, p3, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :try_start_4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to process file for MD5"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 20
    :catch_2
    invoke-static {v2, v2, p3, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 21
    :goto_2
    throw p1

    :catch_3
    const-string p2, "Exception while getting FileInputStream"

    .line 22
    invoke-static {v2, v2, p2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_3

    :catch_4
    const-string p2, "Exception while getting Digest"

    .line 23
    invoke-static {v2, v2, p2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    :goto_3
    const/4 p2, 0x0

    :goto_4
    if-nez p2, :cond_2

    .line 24
    sget-boolean p2, Ld2/x3;->R:Z

    if-nez p2, :cond_2

    const-string p2, "Downloaded controller sha1 does not match, retrying."

    .line 25
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p3

    invoke-virtual {p3}, Ld2/f1;->p()Ld2/h0;

    move-result-object p3

    .line 26
    invoke-virtual {p3, v2, v1, p2, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 27
    invoke-virtual {p1}, Ld2/f1;->f()V

    goto/16 :goto_9

    .line 28
    :cond_2
    iget-boolean p2, p1, Ld2/f1;->F:Z

    if-nez p2, :cond_3

    iget-boolean p2, p1, Ld2/f1;->H:Z

    if-nez p2, :cond_3

    .line 29
    new-instance p2, Ld2/j1;

    invoke-direct {p2, p1}, Ld2/j1;-><init>(Ld2/f1;)V

    invoke-static {p2}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 30
    :cond_3
    iget-boolean p2, p1, Ld2/f1;->F:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p1, Ld2/f1;->H:Z

    if-eqz p2, :cond_9

    .line 31
    iput v2, p1, Ld2/f1;->W:I

    .line 32
    iget-object p2, p1, Ld2/f1;->d:Ld2/k0;

    .line 33
    iget-object p2, p2, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld2/q;

    .line 35
    iget v0, p3, Ld2/q;->l:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_4

    .line 36
    iget v0, p1, Ld2/f1;->W:I

    add-int/2addr v0, v1

    iput v0, p1, Ld2/f1;->W:I

    .line 37
    new-instance v0, Ld2/k1;

    invoke-direct {v0, p1}, Ld2/k1;-><init>(Ld2/f1;)V

    .line 38
    monitor-enter p3

    .line 39
    :try_start_6
    iget v2, p3, Ld2/q;->l:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    .line 40
    :cond_6
    iput-object v0, p3, Ld2/q;->b:Ld2/q$b;

    const/4 v0, 0x0

    .line 41
    :goto_7
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_4

    .line 42
    iget p3, p1, Ld2/f1;->W:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Ld2/f1;->W:I

    if-nez p3, :cond_4

    .line 43
    invoke-virtual {p1}, Ld2/f1;->d()V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 44
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    .line 45
    :cond_7
    iget-object p2, p1, Ld2/f1;->d:Ld2/k0;

    .line 46
    iget-object p2, p2, Ld2/k0;->f:Ljava/util/Map;

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld2/j;

    .line 48
    iget v0, p1, Ld2/f1;->W:I

    add-int/2addr v0, v1

    iput v0, p1, Ld2/f1;->W:I

    .line 49
    new-instance v0, Ld2/l1;

    invoke-direct {v0, p1}, Ld2/l1;-><init>(Ld2/f1;)V

    invoke-virtual {p3, v0}, Ld2/j;->setOnDestroyListenerOrCall(Ld2/j$b;)V

    goto :goto_8

    .line 50
    :cond_8
    iget p2, p1, Ld2/f1;->W:I

    if-nez p2, :cond_9

    .line 51
    invoke-virtual {p1}, Ld2/f1;->d()V

    :cond_9
    :goto_9
    return-void
.end method
