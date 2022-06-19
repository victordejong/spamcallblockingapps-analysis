.class public final Lscala/io/Source$;
.super Ljava/lang/Object;
.source "Source.scala"


# static fields
.field public static final MODULE$:Lscala/io/Source$;


# instance fields
.field private final DefaultBufSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/Source$;

    invoke-direct {v0}, Lscala/io/Source$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    const/16 v0, 0x800

    .line 23
    iput v0, p0, Lscala/io/Source$;->DefaultBufSize:I

    return-void
.end method


# virtual methods
.method public DefaultBufSize()I
    .locals 1

    .line 23
    iget v0, p0, Lscala/io/Source$;->DefaultBufSize:I

    return v0
.end method

.method public createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/io/Codec;",
            ")",
            "Lscala/io/BufferedSource;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 160
    new-instance v6, Lscala/io/Source$$anonfun$2;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/io/Source$$anonfun$2;-><init>(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)V

    move-object p3, v6

    .line 162
    :cond_0
    new-instance v0, Lscala/io/BufferedSource;

    invoke-direct {v0, p1, p2, p5}, Lscala/io/BufferedSource;-><init>(Ljava/io/InputStream;ILscala/io/Codec;)V

    invoke-virtual {v0, p3}, Lscala/io/BufferedSource;->withReset(Lscala/Function0;)Lscala/io/Source;

    move-result-object p1

    invoke-virtual {p1, p4}, Lscala/io/Source;->withClose(Lscala/Function0;)Lscala/io/Source;

    move-result-object p1

    check-cast p1, Lscala/io/BufferedSource;

    return-object p1
.end method

.method public createBufferedSource$default$2()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lscala/io/Source$;->DefaultBufSize()I

    move-result v0

    return v0
.end method

.method public createBufferedSource$default$3()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/io/Source;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createBufferedSource$default$4()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public fromBytes([BLjava/lang/String;)Lscala/io/Source;
    .locals 1

    .line 110
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromBytes([BLscala/io/Codec;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromBytes([BLscala/io/Codec;)Lscala/io/Source;
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lscala/io/Codec;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/io/Source$;->fromString(Ljava/lang/String;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromChar(C)Lscala/io/Source;
    .locals 3

    .line 40
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-virtual {v0, v1}, Lscala/Predef$;->wrapCharArray([C)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromChars([C)Lscala/io/Source;
    .locals 1

    .line 44
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1}, Lscala/Predef$;->wrapCharArray([C)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 6

    .line 91
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 96
    new-instance v3, Lscala/io/Source$$anonfun$fromFile$2;

    invoke-direct {v3, p1, p2, p3}, Lscala/io/Source$$anonfun$fromFile$2;-><init>(Ljava/io/File;ILscala/io/Codec;)V

    .line 97
    new-instance v4, Lscala/io/Source$$anonfun$fromFile$1;

    invoke-direct {v4, v1}, Lscala/io/Source$$anonfun$fromFile$1;-><init>(Ljava/io/FileInputStream;)V

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    .line 98
    invoke-virtual/range {v0 .. v5}, Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p2

    new-instance p3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "file:"

    invoke-virtual {p3, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/io/BufferedSource;->withDescription(Ljava/lang/String;)Lscala/io/Source;

    move-result-object p1

    check-cast p1, Lscala/io/BufferedSource;

    return-object p1
.end method

.method public fromFile(Ljava/io/File;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 81
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/io/File;Ljava/lang/String;I)Lscala/io/BufferedSource;
    .locals 1

    .line 84
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/io/Source$;->DefaultBufSize()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 60
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromFile(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/net/URI;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 70
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromFile(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v0, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 166
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 6

    .line 169
    new-instance v3, Lscala/io/Source$$anonfun$3;

    invoke-direct {v3, p1, p2}, Lscala/io/Source$$anonfun$3;-><init>(Ljava/io/InputStream;Lscala/io/Codec;)V

    new-instance v4, Lscala/io/Source$$anonfun$1;

    invoke-direct {v4, p1}, Lscala/io/Source$$anonfun$1;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lscala/io/Source$;->createBufferedSource$default$2()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/io/Source;"
        }
    .end annotation

    .line 34
    new-instance v0, Lscala/io/Source$$anon$1;

    invoke-direct {v0, p1}, Lscala/io/Source$$anon$1;-><init>(Lscala/collection/Iterable;)V

    .line 36
    new-instance v1, Lscala/io/Source$$anonfun$fromIterable$1;

    invoke-direct {v1, p1}, Lscala/io/Source$$anonfun$fromIterable$1;-><init>(Lscala/collection/Iterable;)V

    invoke-virtual {v0, v1}, Lscala/io/Source$$anon$1;->withReset(Lscala/Function0;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromRawBytes([B)Lscala/io/Source;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v1}, Lscala/io/Codec$;->ISO8859()Lscala/io/Codec;

    move-result-object v1

    invoke-virtual {v1}, Lscala/io/Codec;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/io/Source$;->fromString(Ljava/lang/String;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)Lscala/io/Source;
    .locals 1

    .line 48
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1}, Lscala/Predef$;->wrapString(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;

    move-result-object p1

    return-object p1
.end method

.method public fromURI(Ljava/net/URI;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v0, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromURL(Ljava/lang/String;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 126
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromURL(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromURL(Ljava/lang/String;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1

    .line 131
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lscala/io/Source$;->fromURL(Ljava/net/URL;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromURL(Ljava/net/URL;Ljava/lang/String;)Lscala/io/BufferedSource;
    .locals 1

    .line 136
    sget-object v0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v0, p2}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromURL(Ljava/net/URL;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public fromURL(Ljava/net/URL;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 0

    .line 141
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object p1

    return-object p1
.end method

.method public stdin()Lscala/io/BufferedSource;
    .locals 2

    .line 27
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v1, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v1}, Lscala/io/Codec$;->fallbackSystemCodec()Lscala/io/Codec;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/io/Source$;->fromInputStream(Ljava/io/InputStream;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method
