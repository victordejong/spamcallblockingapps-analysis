.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/a;
.super Ljava/util/Observable;
.source "CommunityDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

.field private static b:I

.field private static c:I

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mistergroup/shouldianswer/model/communityDatabase/b;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lorg/mistergroup/shouldianswer/model/communityDatabase/c;

.field private static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mistergroup/shouldianswer/model/communityDatabase/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    .line 25
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    .line 40
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private final a(I)Ljava/lang/String;
    .locals 2

    .line 219
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "dir"

    .line 221
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ratings_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".secdb"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/b;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 229
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 231
    sget-object v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e:Lorg/mistergroup/shouldianswer/model/communityDatabase/c;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/c;->a(ILjava/lang/String;)I

    move-result p1

    .line 232
    move-object p2, v1

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-lez p1, :cond_1

    .line 234
    sget-object p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-nez p2, :cond_1

    .line 236
    new-instance p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;-><init>()V

    .line 237
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommunityDatabase.getDataSliceMain loadFromRawResource slice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p2, v2, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Landroid/content/Context;I)V

    .line 239
    sget-object v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    :try_start_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_2
    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private final b(I)Ljava/lang/String;
    .locals 4

    .line 252
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 256
    sget-object v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private final declared-synchronized b(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/b;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 264
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_4

    .line 266
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p2, v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 268
    :try_start_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(num.substring(0, 2))"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 269
    move-object p2, v1

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-lez p1, :cond_2

    .line 271
    sget-object p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-nez p2, :cond_2

    .line 273
    new-instance p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;-><init>()V

    .line 274
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommunityDatabase.getDataSliceSecondary loadFromFileResource slice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 275
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {p2, v2, v3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_1
    sget-object v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_2
    monitor-exit p0

    return-object p2

    .line 268
    :cond_3
    :try_start_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    :try_start_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    :cond_4
    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private final g()V
    .locals 8

    const-string v0, "br.readLine()"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 99
    :try_start_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "data_slice_info.dat"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "storageContext.assets.open(\"data_slice_info.dat\")"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/Reader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 104
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 105
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    const-string v7, "MDI"

    invoke-virtual {v6, v5, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/utils/w;->b(Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b:I

    .line 107
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/utils/w;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->c:I

    .line 109
    sget v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b:I

    sget-object v5, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/c;->s()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 110
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "loadMainDataInfo different BaseDatabaseVersion, reset secondary data"

    invoke-static {v0, v5, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    sget v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b:I

    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/model/c;->a(I)V

    .line 112
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e()V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "loadMainDataInfo MDI header not found!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 118
    :try_start_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 126
    :try_start_4
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 123
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 126
    :try_start_6
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    .line 131
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private final h()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 139
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "data_slice_list.dat"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "storageContext.assets.open(\"data_slice_list.dat\")"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Reader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 144
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 145
    new-instance v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/c;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/c;-><init>()V

    sput-object v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e:Lorg/mistergroup/shouldianswer/model/communityDatabase/c;

    .line 146
    sget-object v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e:Lorg/mistergroup/shouldianswer/model/communityDatabase/c;

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v6, "nodes"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/mistergroup/shouldianswer/model/communityDatabase/c;->a(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 148
    :try_start_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 154
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 156
    :try_start_4
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 153
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 154
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 156
    :try_start_6
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 157
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v2

    .line 161
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 22
    sget v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->c:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;
    .locals 5

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "-1"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v3, "+"

    .line 66
    invoke-static {p1, v3, v0, v2, v1}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    move-object p1, v1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    .line 80
    :try_start_1
    invoke-direct {p0, v3, v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0, v3, v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_4

    .line 84
    invoke-direct {p0, v3, v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v0, v3, v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->a()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->b()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;->c()I

    move-result v0

    if-nez v0, :cond_5

    .line 88
    move-object v0, v1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 90
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v1, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object p1

    :catch_1
    move-exception p1

    .line 74
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    :cond_6
    :goto_3
    return-object v1
.end method

.method public final declared-synchronized a(Z)V
    .locals 13

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x1b7740

    int-to-long v4, v4

    .line 186
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 187
    sget-object v7, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    .line 188
    sget-object v10, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 189
    sget-object v11, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->c()J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 195
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CommunityDatabase.recycle nav_main slice "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " released"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 196
    sget-object v10, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->d:Landroid/util/SparseArray;

    const-string v11, "id"

    invoke-static {v9, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 200
    sget-object v7, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_2
    if-ge v8, v7, :cond_4

    .line 201
    sget-object v9, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 202
    sget-object v10, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    .line 204
    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->c()J

    move-result-wide v9

    add-long/2addr v9, v4

    cmp-long v9, v2, v9

    if-lez v9, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 208
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommunityDatabase.recycle secondary slice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " released"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 209
    sget-object v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    const-string v4, "id"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 213
    :try_start_1
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 292
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "RatingDatabase.distributeSlice"

    invoke-static {v2, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->b()I

    move-result v2

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 296
    :try_start_0
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v8

    .line 297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_0
    const-string v11, ".update"

    const/16 v12, 0x9

    if-gt v10, v12, :cond_4

    const/4 v13, 0x0

    :goto_1
    if-gt v13, v12, :cond_3

    mul-int/lit8 v14, v10, 0xa

    add-int/2addr v14, v13

    .line 301
    :try_start_1
    invoke-direct {v1, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(I)Ljava/lang/String;

    move-result-object v15

    .line 302
    new-instance v12, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    invoke-direct {v12}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;-><init>()V

    .line 303
    invoke-virtual {v12, v0, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 304
    new-instance v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    invoke-direct {v3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;-><init>()V

    .line 305
    invoke-direct {v1, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 307
    invoke-virtual {v3, v8, v15}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-direct {v4, v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 310
    new-instance v7, Ljava/io/BufferedOutputStream;

    check-cast v4, Ljava/io/OutputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :try_start_2
    invoke-virtual {v3, v12, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;Ljava/io/BufferedOutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 316
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RatingDatabase.distributeSlice added "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " items to sliceId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v12, 0x0

    invoke-static {v3, v4, v12, v7, v12}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 314
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    throw v2

    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v12, 0x9

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 321
    :cond_4
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "RatingDatabase.distributeSlice prepared successfully,renaming"

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v3, v7, v4, v7}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 322
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "sliceId"

    .line 323
    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 327
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cant delete "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static {v8, v9, v12, v10, v12}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 328
    :cond_6
    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 329
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cant replace slice "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v7, v8, v3, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    .line 331
    :cond_7
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/c;->b(I)V

    .line 332
    sget-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 333
    sget-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 348
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RatingDatabase.distributeSlice finished in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 351
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    return v2
.end method

.method public final b()I
    .locals 1

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->t()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b:I

    :goto_0
    return v0
.end method

.method public final declared-synchronized b(Z)Z
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    .line 361
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    .line 362
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "CommunityDatabase.update.begin"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/16 v3, 0x64

    const/4 v7, 0x0

    move/from16 v9, p1

    move v8, v7

    :goto_0
    if-gt v8, v3, :cond_1f

    .line 364
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CommunityDatabase.update loop "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 366
    :try_start_1
    sget-object v10, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/c;->t()I

    move-result v10

    .line 367
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CommunityDatabase.update mainDB="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " items="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->c:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 368
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CommunityDatabase.update secondaryDB="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 369
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CommunityDatabase.update force="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_0

    move-wide v13, v11

    goto :goto_1

    .line 371
    :cond_0
    sget-object v13, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/c;->H()J

    move-result-wide v13

    :goto_1
    if-eqz v9, :cond_1

    move-wide v15, v11

    goto :goto_2

    .line 372
    :cond_1
    sget-object v15, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/c;->J()J

    move-result-wide v15

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_3

    .line 373
    :cond_2
    sget-object v11, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/c;->I()J

    move-result-wide v11

    .line 374
    :goto_3
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 376
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const-string v6, "cal"

    .line 377
    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xb

    .line 378
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 379
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 380
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 381
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 382
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 384
    invoke-virtual {v5, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v11, 0xb

    .line 385
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    .line 386
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xd

    .line 387
    invoke-virtual {v5, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 388
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 389
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    if-nez v9, :cond_3

    cmp-long v5, v20, v5

    if-nez v5, :cond_3

    .line 392
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update Skipping due lastDatabaseUpdateDate is same as actTimeDate"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 531
    :try_start_2
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    :goto_4
    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_5
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    :cond_3
    sub-long v5, v3, v15

    .line 396
    :try_start_3
    sget-object v11, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/c;->e()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v5, v11

    if-lez v11, :cond_4

    .line 398
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v11, "CommunityDatabase.checkAndUpdate Set force checkAndUpdate due last success check in more than 23 hours "

    const/4 v12, 0x2

    const/4 v15, 0x0

    invoke-static {v9, v11, v15, v12, v15}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v9, 0x1

    :cond_4
    if-nez v9, :cond_5

    .line 403
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/utils/y;->f()Landroid/net/ConnectivityManager;

    move-result-object v11

    const/4 v12, 0x1

    .line 404
    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 405
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_5

    .line 406
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.checkAndUpdate Skipping due standard checkAndUpdate and no wifi connection"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 531
    :try_start_4
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :cond_5
    if-nez v9, :cond_6

    .line 412
    :try_start_5
    sget-object v11, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/c;->d()I

    move-result v11

    int-to-long v11, v11

    cmp-long v5, v5, v11

    if-gez v5, :cond_6

    .line 413
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update Skipping due success check in less than 12 hours"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 531
    :try_start_6
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :cond_6
    if-nez v9, :cond_7

    sub-long v5, v3, v13

    .line 418
    :try_start_7
    sget-object v9, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/c;->b()I

    move-result v9

    int-to-long v11, v9

    cmp-long v5, v5, v11

    if-gez v5, :cond_7

    .line 419
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update Skipping due last check in less than 4 hours"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 531
    :try_start_8
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 423
    :cond_7
    :try_start_9
    sget-object v5, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v5, v3, v4}, Lorg/mistergroup/shouldianswer/model/c;->d(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 426
    :try_start_a
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    sget-object v5, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/c;->o()J

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_dbVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 429
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/utils/ad;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cached?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5, v6}, Lorg/mistergroup/shouldianswer/utils/ad;->a(Ljava/lang/String;Ljava/util/HashMap;)Lokhttp3/ab;

    move-result-object v5

    if-nez v5, :cond_8

    .line 432
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "CommunityDatabase.update callService NETWORK not CONNECTED!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 531
    :try_start_b
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    monitor-exit p0

    return v7

    .line 436
    :cond_8
    :try_start_c
    invoke-virtual {v5}, Lokhttp3/ab;->c()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual {v5}, Lokhttp3/ab;->g()Lokhttp3/ac;

    move-result-object v6

    if-nez v6, :cond_9

    goto/16 :goto_9

    .line 440
    :cond_9
    sget-object v6, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/c;->z()V

    .line 441
    sget-object v6, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/c;->y()V

    const-string v6, "mtz"

    const-string v9, "database"

    if-nez v2, :cond_a

    .line 443
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_a
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-static {v6, v9, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 445
    :try_start_d
    invoke-virtual {v5}, Lokhttp3/ab;->g()Lokhttp3/ac;

    move-result-object v5

    if-nez v5, :cond_c

    .line 447
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "CommunityDatabase.update callService failed no response body!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 517
    :try_start_e
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_b

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 531
    :cond_b
    :try_start_f
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    monitor-exit p0

    return v7

    .line 450
    :cond_c
    :try_start_10
    invoke-virtual {v5}, Lokhttp3/ac;->a()Lokhttp3/u;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 451
    invoke-virtual {v9}, Lokhttp3/u;->a()Ljava/lang/String;

    move-result-object v9

    const-string v11, "application"

    invoke-static {v9, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    xor-int/2addr v9, v11

    if-eqz v9, :cond_d

    goto/16 :goto_7

    .line 480
    :cond_d
    invoke-virtual {v5}, Lokhttp3/ac;->c()Ljava/io/InputStream;

    move-result-object v9

    .line 481
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2800

    new-array v11, v11, [B

    move v12, v7

    .line 484
    :goto_6
    invoke-virtual {v9, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_12

    .line 489
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 490
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 491
    invoke-virtual {v5}, Lokhttp3/ac;->close()V

    if-nez v12, :cond_f

    .line 493
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "CommunityDatabase.update callService failed no data!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 517
    :try_start_11
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_e

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 531
    :cond_e
    :try_start_12
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    monitor-exit p0

    return v7

    .line 496
    :cond_f
    :try_start_13
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v9, "CommunityDatabase.checkAndUpdate Downloaded checkAndUpdate"

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v5, v9, v11, v10, v11}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 497
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 498
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    check-cast v5, Ljava/io/InputStream;

    invoke-direct {v9, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 499
    new-instance v5, Ljava/io/BufferedInputStream;

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 501
    :try_start_14
    new-instance v9, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;-><init>()V

    .line 502
    invoke-virtual {v9, v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/b;->a(Ljava/io/BufferedInputStream;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 503
    invoke-virtual {v1, v9}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/b;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 509
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 511
    sget-object v5, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v5, v3, v4}, Lorg/mistergroup/shouldianswer/model/c;->f(J)V

    .line 512
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CommunityDatabase.update setCommunityDatabaseLastUpdatedTime to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v5, v9, v11, v10, v11}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 513
    sget-object v5, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v5, v3, v4}, Lorg/mistergroup/shouldianswer/model/c;->e(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 517
    :try_start_16
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_10

    .line 518
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "Cant delete tempFile"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 531
    :cond_10
    :try_start_17
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "CommunityDatabase.update.end"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x64

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 505
    :cond_11
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e()V

    .line 506
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "CommunityDatabase.update dataSlice not loaded,reseting!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 509
    :try_start_19
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    throw v2

    .line 486
    :cond_12
    invoke-virtual {v10, v11, v7, v13}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v12, v13

    goto/16 :goto_6

    .line 452
    :cond_13
    :goto_7
    invoke-virtual {v5}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v2

    .line 453
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "responseString"

    .line 454
    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v19, "\n"

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "OAP"

    .line 455
    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 456
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update outdated app!"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 457
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/model/ai;->r(Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 517
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_14

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 531
    :cond_14
    :try_start_1b
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    :goto_8
    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto/16 :goto_5

    :cond_15
    :try_start_1c
    const-string v5, "NC"

    .line 460
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_17

    .line 461
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "CommunityDatabase.checkAndUpdate No checkAndUpdate available"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v2, v5, v9, v8, v9}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 462
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/model/c;->f(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 517
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_16

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 531
    :cond_16
    :try_start_1e
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto :goto_8

    :cond_17
    :try_start_1f
    const-string v5, "OOD"

    .line 465
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    .line 466
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/Exception;

    const-string v8, "CommunityDatabase.checkAndUpdate Cant checkAndUpdate db! OOD received!"

    invoke-direct {v5, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v2, v5, v9, v8, v9}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v10, :cond_19

    .line 468
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Try to restart update from nav_main db"

    invoke-static {v2, v3, v9, v8, v9}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->e()V

    const/4 v2, 0x1

    .line 470
    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b(Z)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 517
    :try_start_20
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_18

    .line 518
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "Cant delete tempFile"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 531
    :cond_18
    :try_start_21
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "CommunityDatabase.update.end"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    monitor-exit p0

    return v2

    .line 472
    :cond_19
    :try_start_22
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/model/c;->f(J)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 517
    :try_start_23
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 531
    :cond_1a
    :try_start_24
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 476
    :cond_1b
    :try_start_25
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update Unknown response"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 517
    :try_start_26
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 518
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Cant delete tempFile"

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 531
    :cond_1c
    :try_start_27
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    monitor-exit p0

    return v7

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 517
    :try_start_28
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 518
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "Cant delete tempFile"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1d
    throw v2

    .line 437
    :cond_1e
    :goto_9
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "CommunityDatabase.update callService failed!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 531
    :try_start_29
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    monitor-exit p0

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 525
    :try_start_2a
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "CommunityDatabase.update Exception catched!"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 526
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 523
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 531
    :goto_a
    :try_start_2b
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityDatabase.update.end"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    monitor-exit p0

    return v7

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_2c
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "CommunityDatabase.update.end"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    .line 534
    :cond_1f
    monitor-exit p0

    return v7

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 36
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b()I

    move-result v0

    int-to-long v0, v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WW"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g()V

    .line 58
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 10

    .line 168
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CommunityDatabase.resetToDefault"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 171
    sget-object v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/a$b;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a$b;

    check-cast v3, Ljava/io/FileFilter;

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 172
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 173
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CommunityDatabase.resetToDefault Can\'t delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "file"

    invoke-static {v6, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 177
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 178
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/model/c;->b(I)V

    return-void
.end method

.method public final f()Z
    .locals 6

    .line 540
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 542
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 544
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->g()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 547
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommunityDatabase.isUpdateNeeded returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v3
.end method
