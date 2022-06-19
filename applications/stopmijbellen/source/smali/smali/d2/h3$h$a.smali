.class public Ld2/h3$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$h;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$h;


# direct methods
.method public constructor <init>(Ld2/h3$h;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$h$a;->b:Ld2/h3$h;

    iput-object p2, p0, Ld2/h3$h$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Ld2/h3$h$a;->b:Ld2/h3$h;

    iget-object v0, v0, Ld2/h3$h;->a:Ld2/h3;

    iget-object v2, v1, Ld2/h3$h$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v2, Ld2/t0;->b:Ld2/f4;

    const-string v3, "filepath"

    .line 4
    invoke-virtual {v0, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bundle_path"

    .line 5
    invoke-virtual {v0, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bundle_filenames"

    .line 6
    invoke-static {v0, v5}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->f()Ld2/f4;

    move-result-object v5

    const/16 v6, 0x20

    .line 8
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v8, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v6, v6, [B

    .line 10
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    .line 11
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 12
    new-instance v10, Ld2/d4;

    invoke-direct {v10}, Ld2/d4;-><init>()V

    const/16 v11, 0x400

    new-array v11, v11, [B

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_1

    mul-int/lit8 v13, v12, 0x2c

    add-int/lit8 v13, v13, 0x8

    int-to-long v13, v13

    .line 13
    invoke-virtual {v8, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    invoke-virtual {v8, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 15
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    .line 16
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 17
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    .line 18
    iget-object v15, v10, Ld2/d4;->a:Lorg/json/JSONArray;

    monitor-enter v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v6

    .line 19
    :try_start_1
    iget-object v6, v10, Ld2/d4;->a:Lorg/json/JSONArray;

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 20
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v15, v0, Ld2/d4;->a:Lorg/json/JSONArray;

    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 23
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v0

    int-to-long v0, v13

    .line 24
    :try_start_3
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 25
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    div-int/lit16 v1, v14, 0x400

    .line 27
    rem-int/lit16 v14, v14, 0x400

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    const/16 v13, 0x400

    const/4 v15, 0x0

    .line 28
    invoke-virtual {v8, v11, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 29
    invoke-virtual {v0, v11, v15, v13}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v8, v11, v1, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 31
    invoke-virtual {v0, v11, v1, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 32
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v16

    move-object/from16 v0, v17

    goto :goto_0

    .line 33
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t extract file name at index "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unpacking ad unit bundle at "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->p()Ld2/h0;

    move-result-object v1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v3, v3, v0, v3}, Ld2/h0;->e(IILjava/lang/String;Z)V

    const-string v0, "success"

    .line 40
    invoke-static {v5, v0, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 41
    invoke-virtual {v2, v5}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 42
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 43
    :cond_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 44
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-string v0, "success"

    const/4 v1, 0x1

    .line 45
    invoke-static {v5, v0, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const-string v0, "file_sizes"

    .line 46
    invoke-static {v5, v0, v10}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 47
    invoke-virtual {v2, v5}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "Out of memory error - disabling AdColony."

    .line 48
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->p()Ld2/h0;

    move-result-object v1

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v3, v3, v0, v3}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 50
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, v0, Ld2/f1;->C:Z

    const-string v0, "success"

    .line 52
    invoke-static {v5, v0, v3, v2, v5}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    goto :goto_2

    :catch_2
    const-string v0, "Failed to find or open ad unit bundle at path: "

    .line 53
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-static {v3, v3, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    const-string v0, "success"

    .line 55
    invoke-static {v5, v0, v3, v2, v5}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    :goto_2
    move-object/from16 v1, p0

    .line 56
    iget-object v0, v1, Ld2/h3$h$a;->b:Ld2/h3$h;

    iget-object v0, v0, Ld2/h3$h;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method
