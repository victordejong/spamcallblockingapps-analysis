.class public final Lcom/google/zxing/a/a;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/zxing/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/a/a/a;II)Lcom/google/zxing/common/b;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/google/zxing/a/a/a;->a()Lcom/google/zxing/common/b;

    move-result-object v6

    .line 71
    if-nez v6, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {v6}, Lcom/google/zxing/common/b;->b()I

    move-result v7

    .line 75
    invoke-virtual {v6}, Lcom/google/zxing/common/b;->c()I

    move-result v8

    .line 76
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 77
    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 79
    div-int v0, v2, v7

    div-int v1, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 80
    mul-int v0, v7, v9

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    .line 81
    mul-int v0, v8, v9

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    .line 83
    new-instance v10, Lcom/google/zxing/common/b;

    invoke-direct {v10, v2, v4}, Lcom/google/zxing/common/b;-><init>(II)V

    move v4, v0

    move v5, v3

    .line 85
    :goto_0
    if-ge v5, v8, :cond_3

    move v0, v1

    move v2, v3

    .line 87
    :goto_1
    if-ge v2, v7, :cond_2

    .line 88
    invoke-virtual {v6, v2, v5}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 89
    invoke-virtual {v10, v0, v4, v9, v9}, Lcom/google/zxing/common/b;->a(IIII)V

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v9

    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 v2, v5, 0x1

    add-int v0, v4, v9

    move v4, v0

    move v5, v2

    goto :goto_0

    .line 93
    :cond_3
    return-object v10
.end method

.method private static a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/b;
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    if-eq p1, v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only encode AZTEC, but got "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/google/zxing/a/a/c;->a([BII)Lcom/google/zxing/a/a/a;

    move-result-object v0

    .line 66
    invoke-static {v0, p2, p3}, Lcom/google/zxing/a/a;->a(Lcom/google/zxing/a/a/a;II)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 43
    const/16 v1, 0x21

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz p5, :cond_2

    .line 46
    sget-object v2, Lcom/google/zxing/c;->b:Lcom/google/zxing/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    sget-object v0, Lcom/google/zxing/c;->b:Lcom/google/zxing/c;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 49
    :cond_0
    sget-object v2, Lcom/google/zxing/c;->a:Lcom/google/zxing/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    sget-object v1, Lcom/google/zxing/c;->a:Lcom/google/zxing/c;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    :cond_1
    sget-object v2, Lcom/google/zxing/c;->j:Lcom/google/zxing/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    sget-object v2, Lcom/google/zxing/c;->j:Lcom/google/zxing/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v1

    move-object v4, v0

    :goto_0
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/a/a;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    :cond_2
    move v5, v1

    move-object v4, v0

    goto :goto_0
.end method
