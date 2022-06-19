.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/b;
.super Ljava/lang/Object;
.source "CommunityDatabaseDataSlice.kt"


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:[J

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[J

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 26
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    new-array v1, v0, [B

    .line 27
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    new-array v1, v0, [B

    .line 28
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    new-array v1, v0, [B

    .line 29
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    new-array v1, v0, [B

    .line 30
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    new-array v1, v0, [B

    .line 31
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    new-array v0, v0, [J

    .line 33
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    return-void
.end method

.method private final b(J)I
    .locals 9

    .line 39
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    const/4 v1, -0x1

    if-lez v0, :cond_7

    .line 40
    div-int/lit8 v2, v0, 0x2

    .line 41
    div-int/lit8 v0, v0, 0x4

    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x0

    const/16 v5, 0x3e7

    :goto_0
    if-gt v4, v5, :cond_6

    .line 43
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v7, v6, v2

    cmp-long v7, p1, v7

    if-nez v7, :cond_0

    return v2

    .line 46
    :cond_0
    aget-wide v7, v6, v2

    cmp-long v7, p1, v7

    if-lez v7, :cond_2

    add-int/2addr v2, v0

    .line 48
    iget v7, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-ge v2, v7, :cond_1

    if-ne v0, v3, :cond_3

    aget-wide v7, v6, v2

    cmp-long v6, p1, v7

    if-gez v6, :cond_3

    :cond_1
    return v1

    :cond_2
    sub-int/2addr v2, v0

    if-ltz v2, :cond_5

    if-ne v0, v3, :cond_3

    .line 52
    aget-wide v7, v6, v2

    cmp-long v6, p1, v7

    if-lez v6, :cond_3

    goto :goto_1

    .line 55
    :cond_3
    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    .line 59
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const-string v2, "CommunityDatabaseDataSlice.indexOf Maximum 1000 iterations reached!"

    invoke-static {p1, v2, p2, v0, p2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    return v0
.end method

.method public final a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;
    .locals 3

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->c:J

    .line 125
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b(J)I

    move-result p1

    const/4 p2, 0x0

    .line 126
    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    if-ltz p1, :cond_0

    .line 129
    new-instance p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;-><init>()V

    .line 130
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v1, v0, p1

    invoke-virtual {p2, v1, v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a(J)V

    .line 131
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a(I)V

    .line 132
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->b(I)V

    .line 133
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->c(I)V

    .line 134
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->d(I)V

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->e(I)V

    :cond_0
    return-object p2
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_slice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "context.assets.open(fileName)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 242
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Ljava/io/BufferedInputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 247
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 249
    :try_start_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 243
    :cond_0
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load from assets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed!"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p2

    .line 246
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 247
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 249
    :try_start_6
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 250
    :goto_0
    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 254
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fileName"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunityDatabaseDataSlice.loadFromFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 282
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/io/BufferedInputStream;

    move-object v3, p1

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Ljava/io/BufferedInputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 289
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 290
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    :try_start_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 292
    :catch_1
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CommunityDatabaseDataSlice file not found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :goto_0
    monitor-exit p0

    return-void

    .line 286
    :cond_0
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommunityDatabaseDataSlice loadFromFile failed name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    .line 289
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 290
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 294
    :try_start_6
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 292
    :catch_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommunityDatabaseDataSlice file not found "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 295
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/io/BufferedInputStream;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "stream"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 143
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 144
    iput v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    .line 145
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v8, 0x4

    invoke-virtual {v7, v0, v8}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MTZF"

    const/4 v9, 0x1

    .line 146
    invoke-static {v7, v8, v9}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "MTZD"

    invoke-static {v7, v8, v9}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommunityDatabaseDataSlice.Load Error Invalid header! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v5, "Invalid header!"

    invoke-direct {v0, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 152
    :cond_1
    :goto_0
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v7, v0}, Lorg/mistergroup/shouldianswer/utils/v;->c(Ljava/io/BufferedInputStream;)B

    .line 153
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v7, v0}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v7

    iput v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    .line 155
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v7, v0, v2}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    .line 157
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v7, v0}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    .line 159
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v7, v0}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v7

    iput v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    .line 161
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [J

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    .line 162
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    .line 163
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    .line 164
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    .line 165
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    .line 166
    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    const/16 v7, 0x3e8

    const/16 v8, 0x32c8

    new-array v8, v8, [B

    .line 170
    iget v10, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    move v11, v4

    :goto_1
    if-lez v10, :cond_5

    if-le v7, v10, :cond_2

    move v12, v10

    goto :goto_2

    :cond_2
    move v12, v7

    :goto_2
    mul-int/lit8 v13, v12, 0xd

    .line 174
    invoke-virtual {v0, v8, v4, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    if-ne v14, v13, :cond_4

    move v13, v4

    move v14, v11

    move v11, v13

    :goto_3
    if-ge v11, v12, :cond_3

    add-int/lit8 v15, v13, 0x7

    add-int/lit8 v16, v15, -0x1

    .line 180
    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v3, v15

    const/16 v15, 0x8

    shl-long/2addr v3, v15

    add-int/lit8 v17, v16, -0x1

    .line 182
    aget-byte v7, v8, v16

    and-int/lit16 v7, v7, 0xff

    move/from16 v18, v10

    int-to-long v9, v7

    or-long/2addr v3, v9

    shl-long/2addr v3, v15

    add-int/lit8 v7, v17, -0x1

    .line 184
    aget-byte v9, v8, v17

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    or-long/2addr v3, v9

    shl-long/2addr v3, v15

    add-int/lit8 v9, v7, -0x1

    .line 186
    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    move-wide/from16 v19, v5

    int-to-long v5, v7

    or-long/2addr v3, v5

    shl-long/2addr v3, v15

    add-int/lit8 v5, v9, -0x1

    .line 188
    aget-byte v6, v8, v9

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v3, v6

    shl-long/2addr v3, v15

    add-int/lit8 v6, v5, -0x1

    .line 190
    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    or-long/2addr v3, v9

    shl-long/2addr v3, v15

    add-int/lit8 v5, v6, -0x1

    .line 192
    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v3, v6

    shl-long/2addr v3, v15

    .line 194
    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v3, v5

    add-int/lit8 v13, v13, 0x8

    .line 197
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aput-wide v3, v5, v14

    .line 198
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    add-int/lit8 v4, v13, 0x1

    aget-byte v5, v8, v13

    aput-byte v5, v3, v14

    .line 199
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v8, v4

    aput-byte v4, v3, v14

    .line 200
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v8, v5

    aput-byte v5, v3, v14

    .line 201
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v8, v4

    aput-byte v4, v3, v14

    .line 202
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    add-int/lit8 v13, v5, 0x1

    aget-byte v4, v8, v5

    aput-byte v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v18

    move-wide/from16 v5, v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3e8

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_3
    move-wide/from16 v19, v5

    move/from16 v18, v10

    sub-int v10, v18, v12

    move v11, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3e8

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 206
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unexpected end of file!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_5
    move-wide/from16 v19, v5

    .line 211
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v0, v2}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CP"

    const/4 v5, 0x1

    .line 212
    invoke-static {v3, v4, v5}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 216
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v0}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v3

    .line 217
    new-array v4, v3, [J

    iput-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    .line 219
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    sget-object v6, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v6, v0}, Lorg/mistergroup/shouldianswer/utils/v;->b(Ljava/io/BufferedInputStream;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 221
    :cond_6
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v5, 0x6

    invoke-virtual {v4, v0, v5}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MTZEND"

    const/4 v5, 0x1

    .line 222
    invoke-static {v0, v4, v5}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v19

    .line 227
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded CommunityDatabaseDataSlice with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " items and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deleted items in "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 224
    :cond_7
    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Endmark not found! readed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 214
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP not found! readed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    .line 230
    :try_start_3
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;I)Z
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 66
    :try_start_0
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->k:Landroid/util/SparseArray;

    const/4 v3, 0x1

    if-nez v2, :cond_a

    .line 67
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->k:Landroid/util/SparseArray;

    .line 68
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->l:Landroid/util/SparseArray;

    const/16 v2, 0x63

    move v4, v1

    :goto_0
    if-gt v4, v2, :cond_2

    .line 70
    iget-object v5, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->k:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v5, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->l:Landroid/util/SparseArray;

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    :goto_1
    const-string v5, "Integer.valueOf(number.substring(0, 2))"

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-ge v4, v2, :cond_6

    .line 74
    :try_start_1
    iget-object v8, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v9, v8, v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v3, :cond_5

    if-eqz v8, :cond_4

    .line 76
    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 77
    iget-object v6, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->k:Landroid/util/SparseArray;

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_6
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    array-length v2, v2

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_a

    .line 81
    iget-object v8, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    aget-wide v9, v8, v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v3, :cond_9

    if-eqz v8, :cond_8

    .line 83
    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 84
    iget-object v9, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->l:Landroid/util/SparseArray;

    if-nez v9, :cond_7

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_7
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 90
    :cond_a
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->k:Landroid/util/SparseArray;

    if-nez v2, :cond_b

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_b
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    .line 92
    iget v4, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    iput v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    .line 93
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [J

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    .line 94
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    .line 95
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    .line 96
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    .line 97
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    .line 98
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    .line 99
    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    move v5, v1

    :goto_5
    if-ge v5, v4, :cond_c

    .line 100
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-wide v8, v7, v8

    aput-wide v8, v6, v5

    .line 101
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-byte v7, v7, v8

    aput-byte v7, v6, v5

    .line 102
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-byte v7, v7, v8

    aput-byte v7, v6, v5

    .line 103
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-byte v7, v7, v8

    aput-byte v7, v6, v5

    .line 104
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-byte v7, v7, v8

    aput-byte v7, v6, v5

    .line 105
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    iget-object v7, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aget-byte v7, v7, v8

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 109
    :cond_c
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->l:Landroid/util/SparseArray;

    if-nez v2, :cond_d

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_d
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 111
    new-array v4, v2, [J

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_e

    .line 113
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    iget-object v6, p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    aget-wide v7, v6, v7

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 115
    :cond_e
    iget p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gtz p1, :cond_f

    if-lez v2, :cond_10

    :cond_f
    move v1, v3

    :cond_10
    return v1

    :catch_0
    move-exception p1

    .line 117
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return v1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;Ljava/io/BufferedOutputStream;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "stream"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v3, 0x0

    .line 305
    :try_start_0
    iget v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-eqz v0, :cond_5

    .line 308
    iget v5, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-lez v5, :cond_4

    .line 310
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    array-length v6, v5

    move v7, v4

    move v4, v3

    :goto_0
    const/4 v8, -0x1

    if-ge v4, v6, :cond_1

    aget-wide v9, v5, v4

    .line 311
    invoke-direct {v1, v9, v10}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b(J)I

    move-result v9

    if-ne v9, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    aget-wide v9, v4, v6

    .line 315
    invoke-direct {v1, v9, v10}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b(J)I

    move-result v9

    if-ne v9, v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_2

    .line 319
    :cond_4
    iget v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    iget-object v5, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    array-length v5, v5

    add-int/2addr v4, v5

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 323
    iget v5, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    goto :goto_3

    :cond_6
    iget v5, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    .line 325
    :goto_3
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const-string v7, "MTZF"

    invoke-virtual {v6, v2, v7}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 326
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v7, 0x1

    int-to-byte v8, v7

    invoke-virtual {v6, v2, v8}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 327
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v6, v2, v5}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;I)V

    .line 328
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const-string v6, "ww"

    invoke-virtual {v5, v2, v6}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 329
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, v2, v3}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;I)V

    .line 330
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;I)V

    .line 335
    iget v5, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-ltz v5, :cond_12

    move v6, v3

    move v8, v6

    move v9, v8

    move v10, v9

    .line 336
    :goto_4
    iget v11, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-ge v6, v11, :cond_7

    iget-object v11, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v12, v11, v6

    goto :goto_5

    :cond_7
    const-wide v12, 0x7fffffffffffffffL

    :goto_5
    move v11, v10

    move v10, v3

    :goto_6
    if-eqz v0, :cond_e

    .line 341
    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    array-length v14, v14

    const-wide/16 v15, 0x0

    if-ge v8, v14, :cond_8

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v17, v14, v8

    cmp-long v14, v17, v12

    if-gtz v14, :cond_8

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v17, v14, v8

    goto :goto_7

    :cond_8
    move-wide/from16 v17, v15

    .line 342
    :goto_7
    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    array-length v14, v14

    if-ge v9, v14, :cond_9

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    aget-wide v19, v14, v9

    cmp-long v14, v19, v12

    if-gtz v14, :cond_9

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    aget-wide v19, v14, v9

    goto :goto_8

    :cond_9
    move-wide/from16 v19, v15

    :goto_8
    cmp-long v14, v17, v15

    if-lez v14, :cond_c

    cmp-long v14, v19, v15

    if-eqz v14, :cond_a

    cmp-long v14, v17, v19

    if-gez v14, :cond_c

    .line 344
    :cond_a
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    move/from16 v18, v4

    aget-wide v3, v14, v8

    invoke-virtual {v10, v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;J)V

    .line 345
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    aget-byte v4, v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 346
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    aget-byte v4, v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 347
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    aget-byte v4, v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 348
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    aget-byte v4, v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 349
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    aget-byte v4, v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 350
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v14, v3, v8

    cmp-long v3, v14, v12

    if-nez v3, :cond_b

    move v3, v7

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_c
    move/from16 v18, v4

    cmp-long v3, v19, v15

    if-lez v3, :cond_f

    .line 355
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    aget-wide v14, v4, v9

    invoke-virtual {v3, v2, v14, v15}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;J)V

    .line 356
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v4, 0x0

    int-to-byte v10, v4

    invoke-virtual {v3, v2, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 357
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v2, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 358
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v2, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 359
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v2, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 360
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v3, v2, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 361
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->j:[J

    aget-wide v14, v3, v9

    cmp-long v3, v14, v12

    if-nez v3, :cond_d

    move v3, v7

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    :goto_a
    add-int/lit8 v9, v9, 0x1

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v10, v3

    move/from16 v4, v18

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_e
    move/from16 v18, v4

    :cond_f
    if-nez v10, :cond_10

    .line 371
    iget v3, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a:I

    if-ge v6, v3, :cond_10

    .line 372
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->d:[J

    aget-wide v12, v4, v6

    invoke-virtual {v3, v2, v12, v13}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;J)V

    .line 373
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->e:[B

    aget-byte v4, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 374
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->f:[B

    aget-byte v4, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 375
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->g:[B

    aget-byte v4, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 376
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->h:[B

    aget-byte v4, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    .line 377
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->i:[B

    aget-byte v4, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;B)V

    add-int/lit8 v11, v11, 0x1

    :cond_10
    move v10, v11

    if-eq v6, v5, :cond_11

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v18

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_11
    move/from16 v4, v18

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    :goto_c
    if-eq v10, v4, :cond_14

    .line 383
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "realCount"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "newCount"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "actDB"

    iget v4, v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "newDB"

    if-eqz v0, :cond_13

    iget v0, v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "updateAndSave results in invalid realCount!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 390
    :cond_14
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const-string v3, "CP"

    invoke-virtual {v0, v2, v3}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;I)V

    .line 392
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const-string v3, "MTZEND"

    invoke-virtual {v0, v2, v3}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    .line 398
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    return v2
.end method

.method public final b()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->c:J

    return-wide v0
.end method
