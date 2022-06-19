.class public final Lcom/google/android/exoplayer2/upstream/cache/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Lcom/google/android/exoplayer2/upstream/cache/c;

.field private final d:Lcom/google/android/exoplayer2/upstream/cache/i;

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/e;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Random;

.field private final h:Z

.field private i:J

.field private j:J

.field private k:Z

.field private l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/database/a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 194
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/database/a;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/database/a;[BZZ)V
    .locals 7

    .line 229
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/i;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/i;-><init>(Lcom/google/android/exoplayer2/database/a;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    .line 239
    new-instance p4, Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-direct {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/e;-><init>(Lcom/google/android/exoplayer2/database/a;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 229
    :goto_0
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/upstream/cache/i;Lcom/google/android/exoplayer2/upstream/cache/e;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/upstream/cache/i;Lcom/google/android/exoplayer2/upstream/cache/e;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    .line 253
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    .line 254
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    .line 255
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    .line 256
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    .line 257
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:Ljava/util/Random;

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    const-wide/16 p1, -0x1

    .line 259
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->i:J

    .line 262
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 263
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/n$1;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/n$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/n;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 272
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/n$1;->start()V

    .line 273
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 249
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;[BZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/database/a;[BZZ)V

    return-void
.end method

.method private static a([Ljava/io/File;)J
    .locals 6

    .line 805
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 806
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".uid"

    .line 807
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    .line 8836
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 812
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Malformed UID file: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SimpleCache"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/o;)Lcom/google/android/exoplayer2/upstream/cache/o;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 669
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/upstream/cache/n;->h:Z

    if-nez v2, :cond_0

    return-object v1

    .line 672
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->e:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 673
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x0

    .line 676
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v3, :cond_1

    move-wide v7, v13

    .line 678
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "SimpleCache"

    const-string v4, "Failed to update index with new touch timestamp."

    .line 680
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 687
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    move-object/from16 v4, p1

    .line 688
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v3

    .line 6222
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 6223
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->e:Ljava/io/File;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 6225
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/io/File;

    .line 6226
    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    .line 6227
    iget v8, v3, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v2

    .line 6228
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v15, v2

    goto :goto_1

    .line 6231
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to rename "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "CachedContent"

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v15, v4

    .line 7203
    :goto_1
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->d:Z

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 7204
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/o;

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    iget-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/google/android/exoplayer2/upstream/cache/o;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 6236
    iget-object v3, v3, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    return-object v2
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/cache/n;)V
    .locals 8

    .line 9552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9554
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9556
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 9561
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    .line 9563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list cache directory files: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9564
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9565
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 9569
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->a([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->i:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 9572
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    .line 9823
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_1

    .line 9824
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    :goto_1
    const/16 v5, 0x10

    .line 9826
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    .line 9827
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".uid"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9828
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9572
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->i:J

    goto :goto_2

    .line 9830
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to create UID file: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 9574
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create cache UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9575
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9576
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 9582
    :cond_4
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->i:J

    .line 10198
    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(J)V

    .line 10199
    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    if-eqz v5, :cond_5

    .line 10200
    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(J)V

    .line 10202
    :cond_5
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10204
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 10205
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Ljava/util/HashMap;)V

    goto :goto_3

    .line 10208
    :cond_6
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->b:Landroid/util/SparseArray;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 10210
    :goto_3
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 10211
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->b()V

    .line 10212
    iput-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/i;->d:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    .line 9583
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 9584
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->i:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 11111
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExoPlayerCacheFileMetadata"

    .line 11250
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11112
    iput-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->b:Ljava/lang/String;

    .line 11113
    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Lcom/google/android/exoplayer2/database/a;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/database/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x2

    .line 11115
    invoke-static {v5, v6, v4}, Lcom/google/android/exoplayer2/database/c;->b(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_8

    .line 11118
    iget-object v5, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->a:Lcom/google/android/exoplayer2/database/a;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/database/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 11119
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 11121
    :try_start_4
    invoke-static {v5, v6, v4}, Lcom/google/android/exoplayer2/database/c;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 11123
    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->b:Ljava/lang/String;

    const-string v6, "DROP TABLE IF EXISTS "

    .line 12246
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "CREATE TABLE "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/cache/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11125
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11127
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11128
    throw v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 9585
    :cond_8
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/e;->a()Ljava/util/Map;

    move-result-object v2

    .line 9586
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 9587
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Ljava/util/Set;)V

    goto :goto_5

    :catch_2
    move-exception v0

    .line 11131
    new-instance v2, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v2

    .line 9589
    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 9598
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->c()V

    .line 9600
    :try_start_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception p0

    const-string v0, "Storing index file failed"

    .line 9602
    invoke-static {v1, v0, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception v0

    .line 9592
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize cache indices: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9593
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9594
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    .line 726
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->j:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->j:J

    .line 727
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->b(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/cache/o;Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 792
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/c;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to create cache directory: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    .line 843
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 621
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 630
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 631
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 632
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 633
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v8, v0, v2, p4}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "cached_content_index.exi"

    .line 6110
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    .line 636
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 643
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/d;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 645
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/cache/d;->a:J

    .line 646
    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/cache/d;->b:J

    .line 649
    :cond_4
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    move-object v2, v8

    .line 650
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;JJLcom/google/android/exoplayer2/upstream/cache/i;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 652
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V

    goto :goto_2

    .line 654
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 626
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/cache/n;)Lcom/google/android/exoplayer2/upstream/cache/c;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    return-object p0
.end method

.method private b(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/c;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/g;)V

    return-void
.end method

.method private static declared-synchronized b(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/n;

    monitor-enter v0

    .line 849
    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->l:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 5

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 735
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->j:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->j:J

    .line 736
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to remove file index entry for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleCache"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->d(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->d(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static declared-synchronized c(Ljava/io/File;)V
    .locals 2

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/n;

    monitor-enter v0

    .line 853
    :try_start_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/n;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d()V
    .locals 9

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 8143
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    .line 757
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/g;

    .line 758
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 759
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 763
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 764
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/g;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 772
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$a;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/c;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 355
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->c()V

    .line 365
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/n;->b(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 367
    monitor-exit p0

    return-object v0

    .line 374
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/j;
    .locals 1

    monitor-enter p0

    .line 546
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    .line 5334
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6068
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5335
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/l;->a:Lcom/google/android/exoplayer2/upstream/cache/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 6

    monitor-enter p0

    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 471
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->b:J

    .line 4127
    :goto_1
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 4128
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/h$a;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    .line 4129
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 472
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->d(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4133
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/io/File;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 431
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 432
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    .line 435
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 439
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    .line 440
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;JLcom/google/android/exoplayer2/upstream/cache/i;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/o;

    .line 441
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v0, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 442
    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    iget-wide v5, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    invoke-virtual {p3, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 4068
    iget-object p3, p3, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 445
    invoke-static {p3}, Lcom/google/android/exoplayer2/upstream/cache/j$-CC;->a(Lcom/google/android/exoplayer2/upstream/cache/j;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 447
    iget-wide v5, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    iget-wide v7, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    add-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-gtz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 450
    :cond_4
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz p3, :cond_5

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->e:Lcom/google/android/exoplayer2/upstream/cache/e;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/o;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/e;->a(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 455
    :try_start_4
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 458
    :cond_5
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 460
    :try_start_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 464
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 462
    :try_start_7
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 534
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->c()V

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    .line 4326
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object p1

    .line 5077
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 5078
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/upstream/cache/l;->a(Lcom/google/android/exoplayer2/upstream/cache/k;)Lcom/google/android/exoplayer2/upstream/cache/l;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 5079
    iget-object p2, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/upstream/cache/l;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 4328
    iget-object p2, v0, Lcom/google/android/exoplayer2/upstream/cache/i;->c:Lcom/google/android/exoplayer2/upstream/cache/i$c;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/i$c;->a(Lcom/google/android/exoplayer2/upstream/cache/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 540
    :try_start_2
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/g;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->c()V

    .line 1703
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v6

    const-wide/16 v9, -0x1

    if-nez v6, :cond_1

    .line 1705
    invoke-static/range {p1 .. p5}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v4

    goto :goto_4

    .line 2155
    :cond_1
    :goto_1
    iget-object v11, v6, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-static {v11, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v11

    .line 2156
    iget-object v12, v6, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v12, v11}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/upstream/cache/o;

    if-eqz v12, :cond_2

    .line 2157
    iget-wide v13, v12, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    iget-wide v7, v12, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    add-long/2addr v13, v7

    cmp-long v7, v13, v2

    if-lez v7, :cond_2

    goto :goto_3

    .line 2160
    :cond_2
    iget-object v7, v6, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v7, v11}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/upstream/cache/o;

    if-eqz v7, :cond_4

    .line 2162
    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/cache/o;->b:J

    sub-long/2addr v7, v2

    cmp-long v11, v4, v9

    if-nez v11, :cond_3

    goto :goto_2

    .line 2163
    :cond_3
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_2

    :cond_4
    move-wide v7, v4

    .line 2165
    :goto_2
    iget-object v11, v6, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-static {v11, v2, v3, v7, v8}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v7

    move-object v12, v7

    .line 1709
    :goto_3
    iget-boolean v7, v12, Lcom/google/android/exoplayer2/upstream/cache/o;->d:Z

    if-eqz v7, :cond_5

    iget-object v7, v12, Lcom/google/android/exoplayer2/upstream/cache/o;->e:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v13, v12, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    cmp-long v11, v7, v13

    if-eqz v11, :cond_5

    .line 1712
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->d()V

    goto :goto_1

    :cond_5
    move-object v4, v12

    .line 388
    :goto_4
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/upstream/cache/o;->d:Z

    if-eqz v5, :cond_6

    .line 390
    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/o;)Lcom/google/android/exoplayer2/upstream/cache/o;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 393
    :cond_6
    :try_start_1
    iget-object v5, v1, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object v0

    .line 394
    iget-wide v5, v4, Lcom/google/android/exoplayer2/upstream/cache/o;->c:J

    const/4 v7, 0x0

    .line 3111
    :goto_5
    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 3112
    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;

    .line 3318
    iget-wide v11, v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    cmp-long v13, v11, v2

    if-gtz v13, :cond_7

    .line 3319
    iget-wide v11, v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;->b:J

    cmp-long v13, v11, v9

    if-eqz v13, :cond_9

    iget-wide v11, v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    iget-wide v13, v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;->b:J

    add-long/2addr v11, v13

    cmp-long v8, v11, v2

    if-lez v8, :cond_8

    goto :goto_6

    :cond_7
    cmp-long v11, v5, v9

    if-eqz v11, :cond_9

    add-long v11, v2, v5

    .line 3321
    iget-wide v13, v8, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    cmp-long v8, v11, v13

    if-lez v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_a

    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3116
    :cond_b
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/h$a;

    invoke-direct {v7, v2, v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/h$a;-><init>(JJ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_c

    .line 396
    monitor-exit p0

    return-object v4

    :cond_c
    const/4 v0, 0x0

    .line 400
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 295
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 300
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Ljava/io/File;)V

    .line 305
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "SimpleCache"

    const-string v3, "Storing index file failed"

    .line 302
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 304
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Ljava/io/File;)V

    .line 305
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    monitor-exit p0

    return-void

    .line 304
    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Ljava/io/File;)V

    .line 305
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    .line 306
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 487
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->c(Lcom/google/android/exoplayer2/upstream/cache/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 406
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->c()V

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/h;

    move-result-object p1

    .line 409
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/h;->a(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;)V

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/n;->d()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->c:Lcom/google/android/exoplayer2/upstream/cache/c;

    invoke-interface {v0, p0, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/c;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 419
    new-instance v1, Ljava/io/File;

    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->b:Ljava/io/File;

    iget-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/n;->g:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v1, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_2

    .line 421
    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/n;->a(Ljava/io/File;)V

    .line 423
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 424
    iget v2, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    move-wide v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/o;->a(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
