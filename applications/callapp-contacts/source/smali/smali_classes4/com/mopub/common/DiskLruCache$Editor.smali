.class public final Lcom/mopub/common/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DiskLruCache$Editor$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/DiskLruCache;

.field private final b:Lcom/mopub/common/DiskLruCache$a;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$a;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 1877
    iget-boolean p2, p2, Lcom/mopub/common/DiskLruCache$a;->c:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->f(Lcom/mopub/common/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$a;Lcom/mopub/common/DiskLruCache$1;)V
    .locals 0

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$a;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$a;
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/common/DiskLruCache$Editor;)[Z
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/common/DiskLruCache$Editor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->d:Z

    return v0
.end method


# virtual methods
.method public final abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->e:Z

    if-nez v0, :cond_0

    .line 832
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 814
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    iget-object v2, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 6877
    iget-object v2, v2, Lcom/mopub/common/DiskLruCache$a;->a:Ljava/lang/String;

    .line 814
    invoke-virtual {v0, v2}, Lcom/mopub/common/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 818
    :goto_0
    iput-boolean v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->e:Z

    return-void
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 760
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 2877
    iget-object v1, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    if-ne v1, p0, :cond_1

    .line 743
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 3877
    iget-boolean v1, v1, Lcom/mopub/common/DiskLruCache$a;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 744
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 747
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    invoke-virtual {v3, p1}, Lcom/mopub/common/DiskLruCache$a;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 749
    :catch_0
    monitor-exit v0

    return-object v2

    .line 741
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 751
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final newOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    monitor-enter v0

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 4877
    iget-object v1, v1, Lcom/mopub/common/DiskLruCache$a;->d:Lcom/mopub/common/DiskLruCache$Editor;

    if-ne v1, p0, :cond_1

    .line 775
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    .line 5877
    iget-boolean v1, v1, Lcom/mopub/common/DiskLruCache$a;->c:Z

    if-nez v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/DiskLruCache$a;

    invoke-virtual {v1, p1}, Lcom/mopub/common/DiskLruCache$a;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 784
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->g(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    :goto_0
    :try_start_4
    new-instance p1, Lcom/mopub/common/DiskLruCache$Editor$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/mopub/common/DiskLruCache$Editor$a;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V

    monitor-exit v0

    return-object p1

    .line 789
    :catch_1
    invoke-static {}, Lcom/mopub/common/DiskLruCache;->a()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 773
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 793
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final set(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 800
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/DiskLruCacheUtil;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 801
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    .line 804
    throw p1
.end method
