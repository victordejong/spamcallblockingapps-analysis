.class public Lf/a/a/f/b;
.super Ljava/lang/Object;
.source "Trie.java"


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lf/a/a/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lf/a/a/f/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/a/a/f/b;->a:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lf/a/a/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/f/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/f/b;

    return-object p1
.end method

.method public b()Lf/a/a/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/f/b;->c:Lf/a/a/f/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/f/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/io/InputStream;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, " "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lf/a/a/f/b;

    invoke-direct {v2}, Lf/a/a/f/b;-><init>()V

    const/4 v3, 0x1

    .line 7
    aget-object v3, v0, v3

    iput-object v3, v2, Lf/a/a/f/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 8
    aget-object v0, v0, v3

    invoke-virtual {p0, v0, v2}, Lf/a/a/f/b;->g(Ljava/lang/String;Lf/a/a/f/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 10
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 12
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/io/InputStream;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, " "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 7
    aget-object v0, v0, v4

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move-object v5, p0

    .line 9
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 10
    aget-char v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v5, v6}, Lf/a/a/f/b;->a(Ljava/lang/String;)Lf/a/a/f/b;

    move-result-object v7

    if-nez v7, :cond_2

    .line 12
    new-instance v7, Lf/a/a/f/b;

    invoke-direct {v7}, Lf/a/a/f/b;-><init>()V

    invoke-virtual {v5, v6, v7}, Lf/a/a/f/b;->g(Ljava/lang/String;Lf/a/a/f/b;)V

    .line 13
    invoke-virtual {v5, v6}, Lf/a/a/f/b;->a(Ljava/lang/String;)Lf/a/a/f/b;

    move-result-object v7

    .line 14
    :cond_2
    invoke-virtual {v7}, Lf/a/a/f/b;->b()Lf/a/a/f/b;

    move-result-object v6

    .line 15
    array-length v8, v3

    sub-int/2addr v8, v4

    if-ne v8, v2, :cond_3

    .line 16
    iput-object v0, v7, Lf/a/a/f/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    .line 17
    array-length v6, v3

    sub-int/2addr v6, v4

    if-eq v6, v2, :cond_5

    .line 18
    new-instance v5, Lf/a/a/f/b;

    invoke-direct {v5}, Lf/a/a/f/b;-><init>()V

    .line 19
    invoke-virtual {v7, v5}, Lf/a/a/f/b;->h(Lf/a/a/f/b;)V

    add-int/lit8 v6, v2, 0x1

    .line 20
    aget-char v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lf/a/a/f/b;

    invoke-direct {v7}, Lf/a/a/f/b;-><init>()V

    invoke-virtual {v5, v6, v7}, Lf/a/a/f/b;->g(Ljava/lang/String;Lf/a/a/f/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    move-object v5, v6

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 22
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_3
    if-eqz v1, :cond_7

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_8
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lf/a/a/f/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lf/a/a/f/b;->e(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Lf/a/a/f/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/f/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Lf/a/a/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/f/b;->c:Lf/a/a/f/b;

    return-void
.end method
