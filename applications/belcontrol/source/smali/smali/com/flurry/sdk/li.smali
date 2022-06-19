.class public Lcom/flurry/sdk/li;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Integer;

.field private static final d:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    const-class v0, Lcom/flurry/sdk/li;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Main"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/li;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/sdk/li;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".YFlurrySenderIndex.info."

    const/4 v4, 0x1

    new-instance v5, Lcom/flurry/sdk/li$6;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/li$6;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/kn;->b()Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/li;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    new-instance v2, Lcom/flurry/sdk/li$4;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/li$4;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v1, Lcom/flurry/sdk/lj;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/lj;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;[B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving Block File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".yflurrydatasenderblock."

    const/4 v2, 0x1

    new-instance v3, Lcom/flurry/sdk/li$3;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/li$3;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    new-instance p1, Lcom/flurry/sdk/lh;

    invoke-direct {p1, p2}, Lcom/flurry/sdk/lh;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/li;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/flurry/sdk/li;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/sdk/li;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/li$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/li$1;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    sget-object p1, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    const-string v0, "New main file also not found. returning.."

    invoke-static {p1, v0}, Lcom/flurry/sdk/ku;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/lj;

    iget-object v1, v1, Lcom/flurry/sdk/lj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/li;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".FlurrySenderIndex.info."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isOldIndexFilePresent: for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    sget-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading Index File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Reading Index File for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Found file."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_0

    :try_start_3
    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x4

    sget-object v5, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read iter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dataLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v4

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v4

    :goto_2
    const/4 v0, 0x6

    :try_start_7
    sget-object v2, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    const-string v3, "Error when loading persistent file"

    invoke-static {v0, v2, v3, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v4}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v4, v1

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    const-string p1, "Agent cache file doesn\'t exist."

    invoke-static {v2, v0, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_4
    monitor-exit p0

    return-object v4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    const-string v0, "No old file to replace"

    invoke-static {p1, v0}, Lcom/flurry/sdk/ku;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/sdk/li;->i(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    const-string v4, "File does not exist"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    sget-object v3, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting  block File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".flurrydatasenderblock."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found file for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Deleted - "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v3, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/flurry/sdk/li;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    sget-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleting Index File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found file for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Deleted - "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".YFlurrySenderIndex.info."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized h(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v3

    iget-object v3, v3, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".YFlurrySenderIndex.info."

    const/4 v2, 0x1

    new-instance v3, Lcom/flurry/sdk/li$2;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/li$2;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/lj;

    iget-object v1, v1, Lcom/flurry/sdk/lj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static i(Ljava/lang/String;)[B
    .locals 7

    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    sget-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading block File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".flurrydatasenderblock."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Reading Index File for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Found file."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v4

    :cond_0
    :try_start_2
    new-array v4, p0, [B

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v4

    :goto_0
    const/4 v1, 0x6

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    const-string v3, "Error when loading persistent file"

    invoke-static {v1, v2, v3, p0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    move-object v4, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-static {v4}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    const/4 p0, 0x4

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {p0, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v4
.end method

.method private j(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/li$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/li$5;-><init>(Lcom/flurry/sdk/li;)V

    const-string v2, ".yflurrydatasenderblock."

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->b()Z

    move-result p1

    return p1
.end method

.method private declared-synchronized k(Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/flurry/sdk/li;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".YFlurrySenderIndex.info."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/li$7;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/li$7;-><init>(Lcom/flurry/sdk/li;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "discardOutdatedBlocksForDataKey: notSentBlocks = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/li;->j(Ljava/lang/String;)Z

    sget-object v3, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "discardOutdatedBlocksForDataKey: removed block = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->b()Z

    move-result p1

    invoke-direct {p0}, Lcom/flurry/sdk/li;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/lh;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addBlockInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/lh;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "New Data Key"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v2, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->j(Ljava/lang/String;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p2, v1, p1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/flurry/sdk/li;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/li;->j(Ljava/lang/String;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p2, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/flurry/sdk/li;->k(Ljava/lang/String;)Z

    :goto_1
    return p1
.end method
