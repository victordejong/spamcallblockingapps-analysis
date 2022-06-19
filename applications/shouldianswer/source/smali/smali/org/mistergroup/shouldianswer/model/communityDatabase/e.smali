.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/e;
.super Ljava/util/Observable;
.source "FeaturedDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;,
        Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/communityDatabase/e;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lorg/mistergroup/shouldianswer/model/communityDatabase/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/e;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->e:Ljava/util/HashMap;

    .line 44
    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a()Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private final declared-synchronized a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 184
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 186
    sget-object v3, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->f:Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a(ILjava/lang/String;)I

    move-result p1

    .line 187
    move-object p2, v1

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;

    if-lez p1, :cond_1

    .line 189
    sget-object p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;

    if-nez p2, :cond_1

    .line 191
    new-instance p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;-><init>()V

    .line 192
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeaturedDatabase.getMainFeaturedSlice loadFromRawResource slice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 193
    invoke-virtual {p2, v2, p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a(Landroid/content/Context;I)V

    .line 194
    sget-object v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->e:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    :try_start_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :cond_2
    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->b()V

    .line 57
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->c()V

    .line 58
    sput-boolean v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final b()V
    .locals 8

    const-string v0, "br.readLine()"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 96
    :try_start_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "featured_slice_info.dat"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "storageContext.assets.op\u2026featured_slice_info.dat\")"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v5, Ljava/io/Reader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 101
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 102
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    const-string v7, "MDI"

    invoke-virtual {v6, v5, v7}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/utils/w;->b(Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->c:I

    .line 104
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/mistergroup/shouldianswer/utils/w;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->d:I

    goto :goto_0

    .line 106
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

    .line 108
    :try_start_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 114
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 116
    :try_start_4
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 113
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 114
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 116
    :try_start_6
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    .line 121
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private final c()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 128
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "featured_slice_list.dat"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "storageContext.assets.op\u2026featured_slice_list.dat\")"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Reader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 133
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;-><init>()V

    sput-object v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->f:Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    .line 135
    sget-object v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->f:Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v6, "nodes"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 137
    :try_start_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 145
    :try_start_4
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 142
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 145
    :try_start_6
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 146
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v2

    .line 150
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "number"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-boolean v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->b:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "+"

    .line 67
    invoke-static {p1, v4, v1, v2, v3}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    move-object p1, v3

    check-cast p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;

    .line 81
    :try_start_1
    invoke-direct {p0, v4, v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1, v4, v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$a;->a(J)Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 90
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    .line 75
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-virtual {v1, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    return-object v0
.end method
