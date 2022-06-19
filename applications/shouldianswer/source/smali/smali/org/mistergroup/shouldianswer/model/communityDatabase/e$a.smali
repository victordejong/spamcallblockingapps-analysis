.class final Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;
.super Ljava/lang/Object;
.source "FeaturedDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/communityDatabase/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:[J

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 214
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->d:[J

    new-array v0, v0, [Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->e:[Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/io/BufferedInputStream;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 257
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 258
    iput v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->b:I

    .line 259
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v6, 0x4

    invoke-virtual {v5, p1, v6}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MTZX"

    const/4 v7, 0x1

    .line 260
    invoke-static {v5, v6, v7}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 266
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, p1}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->b:I

    .line 268
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, p1}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v5

    iput v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    .line 269
    iget v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->d:[J

    .line 270
    iget v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->e:[Ljava/lang/String;

    .line 272
    iget v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    move v6, v0

    :goto_0
    if-lez v5, :cond_0

    .line 275
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v8, p1}, Lorg/mistergroup/shouldianswer/utils/v;->b(Ljava/io/BufferedInputStream;)J

    move-result-wide v8

    .line 276
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v10, p1}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    move-result v10

    .line 277
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v11, p1, v10}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v10

    .line 278
    iget-object v11, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->d:[J

    aput-wide v8, v11, v6

    .line 279
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->e:[Ljava/lang/String;

    aput-object v10, v8, v6

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    :cond_0
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, p1, v1}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CP"

    .line 285
    invoke-static {v5, v6, v7}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 288
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    invoke-virtual {v5, p1}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;)I

    .line 290
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/4 v6, 0x6

    invoke-virtual {v5, p1, v6}, Lorg/mistergroup/shouldianswer/utils/v;->a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "MTZEND"

    .line 291
    invoke-static {p1, v5, v7}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 295
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded FeaturedSlice with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " items in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v7

    .line 292
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Endmark not found! readed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP not found! readed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 261
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeaturedSlice.Load Error Invalid header! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 262
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v3, "Invalid header!"

    invoke-direct {p1, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 298
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method private final b(J)I
    .locals 10

    .line 218
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    const/4 v1, -0x1

    if-lez v0, :cond_7

    .line 219
    div-int/lit8 v2, v0, 0x2

    .line 220
    div-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    :goto_0
    if-gt v3, v4, :cond_6

    .line 222
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->d:[J

    aget-wide v6, v5, v2

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    return v2

    .line 225
    :cond_0
    aget-wide v6, v5, v2

    cmp-long v6, p1, v6

    const/4 v7, 0x1

    if-lez v6, :cond_2

    add-int/2addr v2, v0

    .line 227
    iget v6, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a:I

    if-ge v2, v6, :cond_1

    if-ne v0, v7, :cond_3

    aget-wide v8, v5, v2

    cmp-long v5, p1, v8

    if-gez v5, :cond_3

    :cond_1
    return v1

    :cond_2
    sub-int/2addr v2, v0

    if-ltz v2, :cond_5

    if-ne v0, v7, :cond_3

    .line 231
    aget-wide v8, v5, v2

    cmp-long v5, p1, v8

    if-lez v5, :cond_3

    goto :goto_1

    .line 234
    :cond_3
    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    move v0, v7

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    .line 238
    :cond_6
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const-string v2, "FeaturedSlice.indexOf Maximum 1000 iterations reached!"

    invoke-static {p1, v2, p2, v0, p2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    return v1
.end method


# virtual methods
.method public final a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;
    .locals 3

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->c:J

    .line 245
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->b(J)I

    move-result p1

    const/4 p2, 0x0

    .line 246
    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;

    if-lez p1, :cond_0

    .line 248
    new-instance p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;-><init>()V

    .line 249
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->d:[J

    aget-wide v1, v0, p1

    invoke-virtual {p2, v1, v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->a(J)V

    .line 250
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->e:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->a(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "featured_slice_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "context.assets.open(\"fea\u2026ceId.toString() + \".dat\")"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 328
    :try_start_1
    invoke-direct {p0, v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a(Ljava/io/BufferedInputStream;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 332
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 333
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 335
    :try_start_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 329
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

    .line 332
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 333
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 335
    :try_start_6
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 336
    :goto_0
    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 340
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
