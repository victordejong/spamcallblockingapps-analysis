.class public final Lcom/google/api/client/http/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/a/x;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lcom/google/api/client/http/p;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4320
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "charset"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/p;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/p;

    .line 77
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 254
    invoke-static {p1, p0}, Lcom/google/api/client/a/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 255
    invoke-static {p0, p2}, Lcom/google/api/client/a/j;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/Reader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 131
    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/af;->a(Ljava/io/Reader;Ljava/lang/Object;Z)V

    return-void
.end method

.method private static a(Ljava/io/Reader;Ljava/lang/Object;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 155
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/google/api/client/a/h;->a(Ljava/lang/Class;)Lcom/google/api/client/a/h;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 157
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 158
    const-class v6, Lcom/google/api/client/a/n;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/google/api/client/a/n;

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 160
    :goto_0
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v1, v7

    .line 161
    :goto_1
    new-instance v8, Lcom/google/api/client/a/b;

    invoke-direct {v8, v0}, Lcom/google/api/client/a/b;-><init>(Ljava/lang/Object;)V

    .line 162
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 163
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    :cond_2
    const/4 v11, 0x1

    .line 167
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->read()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    const/16 v14, 0x26

    if-eq v12, v14, :cond_6

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_4

    if-eqz v11, :cond_3

    .line 244
    invoke-virtual {v9, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    .line 246
    :cond_3
    invoke-virtual {v10, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_2

    .line 238
    :cond_5
    invoke-virtual {v10, v12}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 174
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/api/client/a/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_10

    if-eqz p2, :cond_8

    .line 178
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/api/client/a/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 179
    :cond_8
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 181
    :goto_4
    invoke-virtual {v2, v9}, Lcom/google/api/client/a/h;->a(Ljava/lang/String;)Lcom/google/api/client/a/m;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 1186
    iget-object v9, v11, Lcom/google/api/client/a/m;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 184
    invoke-static {v4, v9}, Lcom/google/api/client/a/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 186
    invoke-static {v9}, Lcom/google/api/client/a/ag;->a(Ljava/lang/reflect/Type;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 189
    invoke-static {v9}, Lcom/google/api/client/a/ag;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/api/client/a/ag;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 2154
    iget-object v11, v11, Lcom/google/api/client/a/m;->b:Ljava/lang/reflect/Field;

    .line 193
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/af;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 190
    invoke-virtual {v8, v11, v9, v10}, Lcom/google/api/client/a/b;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_7

    .line 195
    :cond_9
    invoke-static {v4, v9}, Lcom/google/api/client/a/ag;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Iterable;

    .line 194
    invoke-static {v14, v15}, Lcom/google/api/client/a/ag;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 198
    invoke-virtual {v11, v0}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    if-nez v14, :cond_a

    .line 200
    invoke-static {v9}, Lcom/google/api/client/a/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v14

    .line 201
    invoke-virtual {v11, v0, v14}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :cond_a
    const-class v11, Ljava/lang/Object;

    if-ne v9, v11, :cond_b

    move-object v9, v7

    goto :goto_5

    .line 2299
    :cond_b
    const-class v11, Ljava/lang/Iterable;

    invoke-static {v9, v11, v5}, Lcom/google/api/client/a/ag;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 204
    :goto_5
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/af;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 207
    :cond_c
    invoke-static {v9, v4, v10}, Lcom/google/api/client/http/af;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v0, v9}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_10

    .line 212
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_f

    .line 214
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_e

    .line 216
    invoke-virtual {v6, v9, v11}, Lcom/google/api/client/a/n;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;

    goto :goto_6

    .line 218
    :cond_e
    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_f
    :goto_6
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_10
    :goto_7
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 227
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    if-ne v12, v13, :cond_2

    .line 250
    invoke-virtual {v8}, Lcom/google/api/client/a/b;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/af;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 103
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/google/api/client/http/af;->a(Ljava/io/Reader;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1052
    invoke-static {p0}, Lcom/google/common/base/r;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    .line 106
    throw p0
.end method


# virtual methods
.method public final parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 3275
    instance-of p1, p3, Ljava/lang/Class;

    const-string p2, "dataType has to be of type Class<?>"

    .line 4047
    invoke-static {p1, p2}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    .line 3278
    check-cast p3, Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/api/client/a/ag;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3279
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {p2, p1}, Lcom/google/api/client/http/af;->a(Ljava/io/Reader;Ljava/lang/Object;)V

    return-object p1
.end method
