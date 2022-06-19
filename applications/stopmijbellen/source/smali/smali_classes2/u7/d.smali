.class public Lu7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu7/d$c;,
        Lu7/d$b;
    }
.end annotation


# static fields
.field public static i:Ljava/lang/String; = "MD5"

.field public static j:Ljava/security/MessageDigest;


# instance fields
.field public a:Z

.field public b:Ljava/util/Random;

.field public c:J

.field public d:Lu7/d$c;

.field public e:Ljava/io/File;

.field public f:J

.field public g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "MD5"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lu7/d;->j:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 2
    sget-object v2, Lu7/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 5
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lu7/d;->i:Ljava/lang/String;

    .line 6
    :try_start_1
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_0

    goto :goto_2

    :catch_1
    nop

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 7
    :goto_2
    sput-object v5, Lu7/d;->j:Ljava/security/MessageDigest;

    if-eqz v5, :cond_3

    .line 8
    :goto_3
    :try_start_2
    sget-object v0, Lu7/d;->j:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    sput-object v0, Lu7/d;->j:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lu7/d;->b:Ljava/util/Random;

    const-wide/16 v0, 0x1000

    .line 3
    iput-wide v0, p0, Lu7/d;->c:J

    .line 4
    new-instance v0, Lu7/d$a;

    invoke-direct {v0, p0}, Lu7/d$a;-><init>(Lu7/d;)V

    iput-object v0, p0, Lu7/d;->g:Ljava/util/Comparator;

    .line 5
    iput-object p1, p0, Lu7/d;->e:Ljava/io/File;

    .line 6
    iput-wide p2, p0, Lu7/d;->f:J

    .line 7
    iput-boolean p4, p0, Lu7/d;->a:Z

    .line 8
    new-instance p2, Lu7/d$c;

    invoke-direct {p2, p0}, Lu7/d$c;-><init>(Lu7/d;)V

    iput-object p2, p0, Lu7/d;->d:Lu7/d$c;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 10
    iget-boolean p1, p0, Lu7/d;->a:Z

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lu7/e;

    invoke-direct {p1, p0}, Lu7/e;-><init>(Lu7/d;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lu7/d;->d()V

    :goto_0
    return-void
.end method

.method public static varargs declared-synchronized f([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-class v0, Lu7/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu7/d;->j:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    sget-object v4, Lu7/d;->j:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lu7/d;->j:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 5
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array v0, p2, [Ljava/io/FileInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, v2}, Lu7/d;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 3
    iget-object v5, p0, Lu7/d;->d:Lu7/d$c;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu7/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 5
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 6
    aget-object v4, v0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v4, v5, v1

    .line 7
    invoke-static {v5}, Ly/d;->e([Ljava/io/Closeable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lu7/d;->e(Ljava/lang/String;)V

    .line 9
    throw v2

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lu7/d;->e:Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lu7/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lu7/d;->h:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lu7/d;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lu7/d;->h:Z

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lu7/d;->g:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Lu7/d$b;

    invoke-direct {v4, p0, v2}, Lu7/d$b;-><init>(Lu7/d;Ljava/io/File;)V

    .line 10
    iget-object v2, p0, Lu7/d;->d:Lu7/d$c;

    invoke-virtual {v2, v3, v4}, Lu7/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lu7/d;->d:Lu7/d$c;

    invoke-virtual {v2, v3}, Lu7/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v0, p0, Lu7/d;->h:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lu7/d;->h:Z

    throw v1
.end method

.method public e(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lu7/d;->d:Lu7/d$c;

    invoke-virtual {p0, p1, v1}, Lu7/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key == null"

    .line 2
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v4, v2, Lu7/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    iget-wide v5, v2, Lu7/f;->b:J

    invoke-virtual {v2, v3, v4}, Lu7/f;->d(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lu7/f;->b:J

    .line 6
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v2, v0, v3, v4, v5}, Lu7/d$c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lu7/d;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
