.class public final Lcom/google/zxing/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/a/a/a;II)Lcom/google/zxing/common/b;
    .locals 9

    .line 1082
    iget-object p0, p0, Lcom/google/zxing/a/a/a;->e:Lcom/google/zxing/common/b;

    if-eqz p0, :cond_3

    .line 1399
    iget v0, p0, Lcom/google/zxing/common/b;->a:I

    .line 1406
    iget v1, p0, Lcom/google/zxing/common/b;->b:I

    .line 76
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 77
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 79
    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v0, v2

    sub-int v3, p1, v3

    .line 80
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    sub-int v4, p2, v4

    .line 81
    div-int/lit8 v4, v4, 0x2

    .line 83
    new-instance v5, Lcom/google/zxing/common/b;

    invoke-direct {v5, p1, p2}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    move v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    .line 88
    invoke-virtual {p0, v6, p2}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    invoke-virtual {v5, v7, v4, v2, v2}, Lcom/google/zxing/common/b;->a(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    return-object v5

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .line 42
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    .line 46
    sget-object v3, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    sget-object v0, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 49
    :cond_0
    sget-object v3, Lcom/google/zxing/c;->ERROR_CORRECTION:Lcom/google/zxing/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-object v1, Lcom/google/zxing/c;->ERROR_CORRECTION:Lcom/google/zxing/c;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    :cond_1
    sget-object v3, Lcom/google/zxing/c;->AZTEC_LAYERS:Lcom/google/zxing/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    sget-object v2, Lcom/google/zxing/c;->AZTEC_LAYERS:Lcom/google/zxing/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1062
    :cond_2
    sget-object p5, Lcom/google/zxing/a;->AZTEC:Lcom/google/zxing/a;

    if-ne p2, p5, :cond_3

    .line 1065
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/google/zxing/a/a/c;->a([BII)Lcom/google/zxing/a/a/a;

    move-result-object p1

    .line 1066
    invoke-static {p1, p3, p4}, Lcom/google/zxing/a/a;->a(Lcom/google/zxing/a/a/a;II)Lcom/google/zxing/common/b;

    move-result-object p1

    return-object p1

    .line 1063
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode AZTEC, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
