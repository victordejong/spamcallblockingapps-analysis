.class public Lcom/flurry/sdk/ja;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "com.flurry.sdk.ja"

.field private static c:Lcom/flurry/sdk/ja;


# instance fields
.field public b:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jb;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jb;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ja;
    .locals 7

    const-class v0, Lcom/flurry/sdk/ja;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/ja;

    invoke-direct {v1}, Lcom/flurry/sdk/ja;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurrypulselogging."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/flurry/sdk/md;->i(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/kn;

    const-string v4, ".yflurrypulselogging."

    const/4 v5, 0x1

    new-instance v6, Lcom/flurry/sdk/ja$1;

    invoke-direct {v6, v1}, Lcom/flurry/sdk/ja$1;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    iput-object v3, v1, Lcom/flurry/sdk/ja;->d:Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v2

    const-string v3, "UseHttps"

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/flurry/sdk/ja;->f:Z

    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, UseHttps = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/flurry/sdk/ja;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/flurry/sdk/ja;->d:Lcom/flurry/sdk/kn;

    invoke-virtual {v2}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic a(Lcom/flurry/sdk/ja;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized a([B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/jz;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x5

    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ja;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "https://data.flurry.com/pcr.do"

    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PulseLoggingManager: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/la;

    invoke-direct {v1}, Lcom/flurry/sdk/la;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    const v0, 0x186a0

    iput v0, v1, Lcom/flurry/sdk/mg;->u:I

    sget-object v0, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iput-object v0, v1, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/flurry/sdk/lc;->k:Z

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/lk;

    invoke-direct {v0}, Lcom/flurry/sdk/lk;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/la;->c:Lcom/flurry/sdk/lo;

    iput-object p1, v1, Lcom/flurry/sdk/la;->b:Ljava/lang/Object;

    new-instance p1, Lcom/flurry/sdk/ja$2;

    invoke-direct {p1, p0}, Lcom/flurry/sdk/ja$2;-><init>(Lcom/flurry/sdk/ja;)V

    iput-object p1, v1, Lcom/flurry/sdk/la;->a:Lcom/flurry/sdk/la$a;

    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;Lcom/flurry/sdk/mg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x3

    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "No report need be sent"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic b(Lcom/flurry/sdk/ja;)Lcom/flurry/sdk/kn;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/ja;->d:Lcom/flurry/sdk/kn;

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()[B
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/kc;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kh;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    invoke-static {}, Lcom/flurry/sdk/kc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jt;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Lcom/flurry/sdk/ig;

    invoke-direct {v7}, Lcom/flurry/sdk/ig;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/kb;

    iget v8, v8, Lcom/flurry/sdk/kb;->c:I

    iput v8, v7, Lcom/flurry/sdk/ig;->a:I

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/kb;

    iget-boolean v8, v8, Lcom/flurry/sdk/kb;->d:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v7, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/flurry/sdk/md;->b([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/ig;

    iget v6, v5, Lcom/flurry/sdk/ig;->a:I

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, v5, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v4, Lcom/flurry/sdk/it;->b:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v4, Lcom/flurry/sdk/it;->c:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v4, Lcom/flurry/sdk/it;->d:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v4, Lcom/flurry/sdk/it;->e:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v4, Lcom/flurry/sdk/it;->f:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v4, Lcom/flurry/sdk/it;->g:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/jb;

    iget-object v4, v4, Lcom/flurry/sdk/jb;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_5
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_5
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v0, v2, v4, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_6
    invoke-static {v1}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/iz;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/jb;

    invoke-virtual {p1}, Lcom/flurry/sdk/iz;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/flurry/sdk/jb;-><init>([B)V

    iget-object p1, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Saving persistent Pulse logging data."

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flurry/sdk/ja;->d:Lcom/flurry/sdk/kn;

    iget-object v0, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    const/4 p1, 0x6

    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v1, "Error when generating pulse log report in addReport part"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ja;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v2, "Report not send due to exception in generate data"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
