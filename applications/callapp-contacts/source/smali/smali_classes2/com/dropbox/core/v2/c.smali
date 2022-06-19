.class public abstract Lcom/dropbox/core/v2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/c$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final d:Ljava/util/Random;


# instance fields
.field public final a:Lcom/dropbox/core/e;

.field public final b:Ljava/lang/String;

.field private final e:Lcom/dropbox/core/h;

.field private final f:Lcom/dropbox/core/v2/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/c;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/c;->d:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestConfig"

    .line 74
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "host"

    .line 75
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    .line 78
    iput-object p2, p0, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 79
    iput-object p3, p0, Lcom/dropbox/core/v2/c;->b:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/dropbox/core/v2/c;->f:Lcom/dropbox/core/v2/c/a;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/c;)Lcom/dropbox/core/h;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    return-object p0
.end method

.method private static a(ILcom/dropbox/core/v2/c$a;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/c$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 330
    invoke-interface {p1}, Lcom/dropbox/core/v2/c$a;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/dropbox/core/v2/c$a;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    if-ge v0, p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 4045
    iget-wide v1, v1, Lcom/dropbox/core/RetryException;->a:J

    .line 4376
    sget-object v3, Lcom/dropbox/core/v2/c;->d:Ljava/util/Random;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4384
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4387
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 342
    :cond_2
    throw v1
.end method

.method private static a(Lcom/dropbox/core/a/c;Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/a/c<",
            "TT;>;TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    .line 247
    invoke-static {p1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private b(ILcom/dropbox/core/v2/c$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/c$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 351
    :try_start_0
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/c;->a(ILcom/dropbox/core/v2/c$a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lcom/dropbox/core/InvalidAccessTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5026
    iget-object v1, v0, Lcom/dropbox/core/InvalidAccessTokenException;->a:Lcom/dropbox/core/v2/auth/b;

    .line 361
    sget-object v2, Lcom/dropbox/core/v2/auth/b;->e:Lcom/dropbox/core/v2/auth/b;

    invoke-virtual {v2, v1}, Lcom/dropbox/core/v2/auth/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/dropbox/core/v2/c;->a()Lcom/dropbox/core/oauth/c;

    .line 364
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/c;->a(ILcom/dropbox/core/v2/c$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    throw v0

    .line 356
    :cond_1
    throw v0
.end method

.method private static b(Lcom/dropbox/core/a/c;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/a/c<",
            "TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 255
    :try_start_0
    sget-object v1, Lcom/dropbox/core/v2/c;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/16 v2, 0x7e

    .line 258
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 259
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    .line 262
    invoke-static {p1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/dropbox/core/v2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/v2/c;->a()Lcom/dropbox/core/oauth/c;
    :try_end_0
    .catch Lcom/dropbox/core/oauth/DbxOAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1023
    iget-object v1, v0, Lcom/dropbox/core/oauth/DbxOAuthException;->a:Lcom/dropbox/core/oauth/b;

    .line 1042
    iget-object v1, v1, Lcom/dropbox/core/oauth/b;->b:Ljava/lang/String;

    const-string v2, "invalid_grant"

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;)Lcom/dropbox/core/http/a$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;",
            "Lcom/dropbox/core/a/c<",
            "TArgT;>;)",
            "Lcom/dropbox/core/http/a$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 274
    invoke-static {p1, p2}, Lcom/dropbox/core/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-direct {p0}, Lcom/dropbox/core/v2/c;->e()V

    .line 278
    invoke-virtual {p0, p2}, Lcom/dropbox/core/v2/c;->a(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    invoke-static {p2, v0}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/h;)Ljava/util/List;

    .line 281
    iget-object v0, p0, Lcom/dropbox/core/v2/c;->f:Lcom/dropbox/core/v2/c/a;

    invoke-static {p2, v0}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/v2/c/a;)Ljava/util/List;

    .line 282
    new-instance v0, Lcom/dropbox/core/http/a$a;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    const-string v1, "OfficialDropboxJavaSDKv2"

    invoke-static {p2, v0, v1}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/h;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 284
    new-instance v0, Lcom/dropbox/core/http/a$a;

    invoke-static {p4, p3}, Lcom/dropbox/core/v2/c;->b(Lcom/dropbox/core/a/c;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Dropbox-API-Arg"

    invoke-direct {v0, p4, p3}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :try_start_0
    iget-object p3, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    .line 3118
    iget-object p3, p3, Lcom/dropbox/core/h;->c:Lcom/dropbox/core/http/a;

    .line 286
    invoke-virtual {p3, p1, p2}, Lcom/dropbox/core/http/a;->b(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/a$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 289
    new-instance p2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p2, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public abstract a()Lcom/dropbox/core/oauth/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;",
            "Lcom/dropbox/core/a/c<",
            "TArgT;>;",
            "Lcom/dropbox/core/a/c<",
            "TResT;>;",
            "Lcom/dropbox/core/a/c<",
            "TErrT;>;)TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 124
    invoke-static {p4, p3}, Lcom/dropbox/core/v2/c;->a(Lcom/dropbox/core/a/c;Ljava/lang/Object;)[B

    move-result-object v6

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-direct {p0}, Lcom/dropbox/core/v2/c;->e()V

    .line 129
    iget-object p3, p0, Lcom/dropbox/core/v2/c;->a:Lcom/dropbox/core/e;

    .line 1087
    iget-object p3, p3, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 131
    iget-object p3, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    invoke-static {v3, p3}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/h;)Ljava/util/List;

    .line 132
    iget-object p3, p0, Lcom/dropbox/core/v2/c;->f:Lcom/dropbox/core/v2/c/a;

    invoke-static {v3, p3}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/v2/c/a;)Ljava/util/List;

    .line 135
    :cond_0
    new-instance p3, Lcom/dropbox/core/http/a$a;

    const-string p4, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    invoke-direct {p3, p4, v0}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p3, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    .line 1156
    iget p3, p3, Lcom/dropbox/core/h;->d:I

    .line 137
    new-instance p4, Lcom/dropbox/core/v2/c$1;

    const/4 v2, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/c$1;-><init>(Lcom/dropbox/core/v2/c;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;[BLcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)V

    iget-object p1, p0, Lcom/dropbox/core/v2/c;->b:Ljava/lang/String;

    .line 2165
    iput-object p1, p4, Lcom/dropbox/core/v2/c$1;->a:Ljava/lang/String;

    .line 137
    invoke-direct {p0, p3, p4}, Lcom/dropbox/core/v2/c;->b(ILcom/dropbox/core/v2/c$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract b()Z
.end method

.method abstract c()Z
.end method

.method public final d()Lcom/dropbox/core/h;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/dropbox/core/v2/c;->e:Lcom/dropbox/core/h;

    return-object v0
.end method
