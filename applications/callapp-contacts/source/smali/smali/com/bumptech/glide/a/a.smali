.class public final Lcom/bumptech/glide/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/a/a$a;,
        Lcom/bumptech/glide/a/a$c;,
        Lcom/bumptech/glide/a/a$b;,
        Lcom/bumptech/glide/a/a$d;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 149
    iput-wide v2, v0, Lcom/bumptech/glide/a/a;->i:J

    .line 151
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v2, v0, Lcom/bumptech/glide/a/a;->m:J

    .line 163
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lcom/bumptech/glide/a/a$a;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/bumptech/glide/a/a$a;-><init>(Lcom/bumptech/glide/a/a$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/bumptech/glide/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v2, Lcom/bumptech/glide/a/a$1;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/a/a$1;-><init>(Lcom/bumptech/glide/a/a;)V

    iput-object v2, v0, Lcom/bumptech/glide/a/a;->n:Ljava/util/concurrent/Callable;

    .line 183
    iput-object v1, v0, Lcom/bumptech/glide/a/a;->b:Ljava/io/File;

    move/from16 v2, p2

    .line 184
    iput v2, v0, Lcom/bumptech/glide/a/a;->f:I

    .line 185
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    .line 186
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/a/a;->d:Ljava/io/File;

    .line 187
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/a/a;->e:Ljava/io/File;

    move/from16 v1, p3

    .line 188
    iput v1, v0, Lcom/bumptech/glide/a/a;->h:I

    move-wide/from16 v1, p4

    .line 189
    iput-wide v1, v0, Lcom/bumptech/glide/a/a;->g:J

    return-void
.end method

.method public static a(Ljava/io/File;J)Lcom/bumptech/glide/a/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 218
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 223
    :cond_1
    :goto_0
    new-instance v0, Lcom/bumptech/glide/a/a;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, p0

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/a/a;-><init>(Ljava/io/File;IIJ)V

    .line 224
    iget-object v1, v0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :try_start_0
    invoke-direct {v0}, Lcom/bumptech/glide/a/a;->a()V

    .line 227
    invoke-direct {v0}, Lcom/bumptech/glide/a/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0}, Lcom/bumptech/glide/a/a;->close()V

    .line 1664
    iget-object v0, v0, Lcom/bumptech/glide/a/a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/a/c;->a(Ljava/io/File;)V

    .line 241
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v0, Lcom/bumptech/glide/a/a;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/a/a;-><init>(Ljava/io/File;IIJ)V

    .line 243
    invoke-direct {v0}, Lcom/bumptech/glide/a/a;->c()V

    return-object v0

    .line 204
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/bumptech/glide/a/a;)Ljava/io/Writer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    return-object p0
.end method

.method private a()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 248
    new-instance v1, Lcom/bumptech/glide/a/b;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 250
    :try_start_0
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 255
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "1"

    .line 256
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/bumptech/glide/a/a;->f:I

    .line 257
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/bumptech/glide/a/a;->h:I

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, ""

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 267
    :try_start_1
    invoke-virtual {v1}, Lcom/bumptech/glide/a/b;->a()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 2288
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "unexpected journal line: "

    if-eq v7, v4, :cond_6

    add-int/lit8 v9, v7, 0x1

    .line 2294
    :try_start_2
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 2297
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v7, v10, :cond_1

    const-string v10, "REMOVE"

    .line 2298
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2299
    iget-object v5, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2303
    :cond_0
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2306
    :cond_1
    iget-object v10, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/a/a$c;

    const/4 v11, 0x0

    if-nez v10, :cond_2

    .line 2308
    new-instance v10, Lcom/bumptech/glide/a/a$c;

    invoke-direct {v10, p0, v9, v11}, Lcom/bumptech/glide/a/a$c;-><init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;Lcom/bumptech/glide/a/a$1;)V

    .line 2309
    iget-object v12, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v9, 0x5

    if-eq v6, v4, :cond_3

    if-ne v7, v9, :cond_3

    const-string v12, "CLEAN"

    .line 2312
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 2313
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2855
    iput-boolean v3, v10, Lcom/bumptech/glide/a/a$c;->e:Z

    .line 3855
    iput-object v11, v10, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    .line 4855
    invoke-virtual {v10, v5}, Lcom/bumptech/glide/a/a$c;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    if-ne v7, v9, :cond_4

    const-string v9, "DIRTY"

    .line 2317
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2318
    new-instance v5, Lcom/bumptech/glide/a/a$b;

    invoke-direct {v5, p0, v10, v11}, Lcom/bumptech/glide/a/a$b;-><init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$c;Lcom/bumptech/glide/a/a$1;)V

    .line 5855
    iput-object v5, v10, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    goto :goto_1

    :cond_4
    if-ne v6, v4, :cond_5

    const/4 v6, 0x4

    if-ne v7, v6, :cond_5

    const-string v6, "READ"

    .line 2319
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2322
    :cond_5
    new-instance v6, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2290
    :cond_6
    new-instance v6, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :catch_0
    :try_start_3
    iget-object v5, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/bumptech/glide/a/a;->l:I

    .line 6180
    iget v2, v1, Lcom/bumptech/glide/a/b;->b:I

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 277
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->c()V

    goto :goto_2

    .line 279
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/bumptech/glide/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :goto_2
    invoke-static {v1}, Lcom/bumptech/glide/a/c;->a(Ljava/io/Closeable;)V

    return-void

    .line 260
    :cond_9
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 283
    invoke-static {v1}, Lcom/bumptech/glide/a/c;->a(Ljava/io/Closeable;)V

    .line 284
    throw v0
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/a/a$b;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 18759
    :try_start_0
    iget-object v0, p1, Lcom/bumptech/glide/a/a$b;->a:Lcom/bumptech/glide/a/a$c;

    .line 18855
    iget-object v1, v0, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 19855
    iget-boolean v2, v0, Lcom/bumptech/glide/a/a$c;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 515
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/a/a;->h:I

    if-ge v2, v3, :cond_2

    .line 20759
    iget-object v3, p1, Lcom/bumptech/glide/a/a$b;->b:[Z

    .line 516
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 20924
    iget-object v3, v0, Lcom/bumptech/glide/a/a$c;->d:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->b()V

    .line 518
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 527
    :cond_2
    :goto_1
    iget p1, p0, Lcom/bumptech/glide/a/a;->h:I

    if-ge v1, p1, :cond_5

    .line 21924
    iget-object p1, v0, Lcom/bumptech/glide/a/a$c;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 530
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22920
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 532
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 23855
    iget-object p1, v0, Lcom/bumptech/glide/a/a$c;->b:[J

    .line 533
    aget-wide v3, p1, v1

    .line 534
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 24855
    iget-object p1, v0, Lcom/bumptech/glide/a/a$c;->b:[J

    .line 535
    aput-wide v5, p1, v1

    .line 536
    iget-wide v7, p0, Lcom/bumptech/glide/a/a;->i:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bumptech/glide/a/a;->i:J

    goto :goto_2

    .line 539
    :cond_3
    invoke-static {p1}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 543
    :cond_5
    iget p1, p0, Lcom/bumptech/glide/a/a;->l:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/a/a;->l:I

    const/4 p1, 0x0

    .line 25855
    iput-object p1, v0, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    .line 26855
    iget-boolean p1, v0, Lcom/bumptech/glide/a/a$c;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 27855
    iput-boolean v1, v0, Lcom/bumptech/glide/a/a$c;->e:Z

    .line 547
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 548
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 549
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    .line 28855
    iget-object v1, v0, Lcom/bumptech/glide/a/a$c;->a:Ljava/lang/String;

    .line 549
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 550
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Lcom/bumptech/glide/a/a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 551
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_7

    .line 554
    iget-wide p1, p0, Lcom/bumptech/glide/a/a;->m:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bumptech/glide/a/a;->m:J

    .line 29855
    iput-wide p1, v0, Lcom/bumptech/glide/a/a$c;->g:J

    goto :goto_3

    .line 557
    :cond_6
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    .line 30855
    iget-object p2, v0, Lcom/bumptech/glide/a/a$c;->a:Ljava/lang/String;

    .line 557
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 559
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 560
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    .line 31855
    iget-object p2, v0, Lcom/bumptech/glide/a/a$c;->a:Ljava/lang/String;

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 561
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 563
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-static {p1}, Lcom/bumptech/glide/a/a;->b(Ljava/io/Writer;)V

    .line 565
    iget-wide p1, p0, Lcom/bumptech/glide/a/a;->i:J

    iget-wide v0, p0, Lcom/bumptech/glide/a/a;->g:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 566
    :cond_8
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/bumptech/glide/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :cond_9
    monitor-exit p0

    return-void

    .line 510
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a$b;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 400
    invoke-static {p1}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 403
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 680
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void

    .line 684
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 685
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 686
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 687
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 689
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 692
    throw p0
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;)V

    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/a/a$c;

    .line 6855
    iget-object v2, v1, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 335
    :goto_1
    iget v2, p0, Lcom/bumptech/glide/a/a;->h:I

    if-ge v3, v2, :cond_0

    .line 336
    iget-wide v4, p0, Lcom/bumptech/glide/a/a;->i:J

    .line 7855
    iget-object v2, v1, Lcom/bumptech/glide/a/a$c;->b:[J

    .line 336
    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/a/a;->i:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8855
    iput-object v2, v1, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    .line 340
    :goto_2
    iget v2, p0, Lcom/bumptech/glide/a/a;->h:I

    if-ge v3, v2, :cond_2

    .line 8920
    iget-object v2, v1, Lcom/bumptech/glide/a/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v3

    .line 341
    invoke-static {v2}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;)V

    .line 8924
    iget-object v2, v1, Lcom/bumptech/glide/a/a$c;->d:[Ljava/io/File;

    aget-object v2, v2, v3

    .line 342
    invoke-static {v2}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 344
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/bumptech/glide/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->f()V

    return-void
.end method

.method private static b(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 704
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void

    .line 708
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 710
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 711
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 713
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 716
    throw p0
.end method

.method private declared-synchronized c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/Writer;)V

    .line 358
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/a/a;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 361
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 364
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget v1, p0, Lcom/bumptech/glide/a/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 366
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget v1, p0, Lcom/bumptech/glide/a/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 368
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 369
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/a/a$c;

    .line 9855
    iget-object v3, v2, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10855
    iget-object v2, v2, Lcom/bumptech/glide/a/a$c;->a:Ljava/lang/String;

    .line 373
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11855
    iget-object v5, v2, Lcom/bumptech/glide/a/a$c;->a:Ljava/lang/String;

    .line 375
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/a/a$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/Writer;)V

    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/a/a;->e:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/a/a;->c:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/bumptech/glide/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 379
    :try_start_3
    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/Writer;)V

    .line 380
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/bumptech/glide/a/a;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->d()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 587
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->e()V

    .line 588
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 32855
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 593
    :cond_0
    :goto_0
    iget v2, p0, Lcom/bumptech/glide/a/a;->h:I

    if-ge v1, v2, :cond_3

    .line 32920
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 595
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 596
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/bumptech/glide/a/a;->i:J

    .line 33855
    iget-object v4, v0, Lcom/bumptech/glide/a/a$c;->b:[J

    .line 598
    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/bumptech/glide/a/a;->i:J

    .line 34855
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->b:[J

    const-wide/16 v3, 0x0

    .line 599
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/a/a;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/a/a;->l:I

    .line 603
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 604
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 605
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 606
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 608
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 611
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/bumptech/glide/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_4
    monitor-exit p0

    return v1

    .line 590
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/bumptech/glide/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->c()V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 576
    iget v0, p0, Lcom/bumptech/glide/a/a;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    .line 577
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/bumptech/glide/a/a;)I
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/bumptech/glide/a/a;->l:I

    return v0
.end method

.method private e()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/bumptech/glide/a/a;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/bumptech/glide/a/a;->h:I

    return p0
.end method

.method private f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/a/a;->i:J

    iget-wide v2, p0, Lcom/bumptech/glide/a/a;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 652
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/a/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/bumptech/glide/a/a;)Ljava/io/File;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/bumptech/glide/a/a;->b:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->e()V

    .line 414
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    monitor-exit p0

    return-object v1

    .line 12855
    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lcom/bumptech/glide/a/a$c;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 420
    monitor-exit p0

    return-object v1

    .line 423
    :cond_1
    :try_start_2
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 425
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    .line 426
    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_3
    :try_start_3
    iget v1, p0, Lcom/bumptech/glide/a/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/a/a;->l:I

    .line 431
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 432
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 433
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 434
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 435
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    iget-object v1, p0, Lcom/bumptech/glide/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 439
    :cond_4
    new-instance v8, Lcom/bumptech/glide/a/a$d;

    .line 13855
    iget-wide v3, v0, Lcom/bumptech/glide/a/a$c;->g:J

    .line 439
    iget-object v5, v0, Lcom/bumptech/glide/a/a$c;->c:[Ljava/io/File;

    .line 14855
    iget-object v6, v0, Lcom/bumptech/glide/a/a$c;->b:[J

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    .line 439
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/a/a$d;-><init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/a/a$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/bumptech/glide/a/a$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->e()V

    .line 452
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a/a$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/bumptech/glide/a/a$c;

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/a/a$c;-><init>(Lcom/bumptech/glide/a/a;Ljava/lang/String;Lcom/bumptech/glide/a/a$1;)V

    .line 459
    iget-object v2, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16855
    :cond_0
    iget-object v2, v0, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 461
    monitor-exit p0

    return-object v1

    .line 464
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Lcom/bumptech/glide/a/a$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/bumptech/glide/a/a$b;-><init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$c;Lcom/bumptech/glide/a/a$1;)V

    .line 17855
    iput-object v2, v0, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    .line 468
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const-string v1, "DIRTY"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 469
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 471
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 472
    iget-object p1, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-static {p1}, Lcom/bumptech/glide/a/a;->b(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 638
    monitor-exit p0

    return-void

    .line 640
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/a/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/a/a$c;

    .line 35855
    iget-object v2, v1, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    if-eqz v2, :cond_1

    .line 36855
    iget-object v1, v1, Lcom/bumptech/glide/a/a$c;->f:Lcom/bumptech/glide/a/a$b;

    .line 642
    invoke-virtual {v1}, Lcom/bumptech/glide/a/a$b;->b()V

    goto :goto_0

    .line 645
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/a/a;->f()V

    .line 646
    iget-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;

    invoke-static {v0}, Lcom/bumptech/glide/a/a;->a(Ljava/io/Writer;)V

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/bumptech/glide/a/a;->j:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
