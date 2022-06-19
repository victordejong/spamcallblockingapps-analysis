.class public Lcom/google/zxing/c/h;
.super Lcom/google/zxing/c/n;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v4, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 120
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 121
    mul-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 122
    add-int/lit8 v0, v4, 0x1

    if-le v0, p1, :cond_0

    move v0, v1

    .line 119
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    goto :goto_0

    .line 126
    :cond_1
    rem-int/lit8 v0, v3, 0x2f

    return v0
.end method

.method private static a([ZI[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 109
    array-length v4, p2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, p2, v2

    .line 110
    add-int/lit8 v3, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, p0, p1

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move p1, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 110
    goto :goto_1

    .line 112
    :cond_1
    const/16 v0, 0x9

    return v0
.end method

.method private static a(I[I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    move v3, v1

    :goto_0
    const/16 v0, 0x9

    if-ge v3, v0, :cond_1

    .line 90
    rsub-int/lit8 v0, v3, 0x8

    shl-int v0, v2, v0

    and-int/2addr v0, p0

    .line 91
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    aput v0, p1, v3

    .line 89
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 91
    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 3
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
    .line 35
    sget-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    if-eq p2, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only encode CODE_93, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/c/n;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 8

    .prologue
    const/16 v7, 0x2f

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 44
    const/16 v1, 0x50

    if-le v2, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const/16 v1, 0x9

    new-array v3, v1, [I

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x1

    .line 55
    sget-object v4, Lcom/google/zxing/c/g;->a:[I

    aget v4, v4, v7

    invoke-static {v4, v3}, Lcom/google/zxing/c/h;->a(I[I)V

    .line 57
    new-array v4, v1, [Z

    .line 58
    invoke-static {v4, v0, v3}, Lcom/google/zxing/c/h;->a([ZI[I)I

    move-result v1

    .line 60
    :goto_0
    if-ge v0, v2, :cond_1

    .line 61
    const-string/jumbo v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 62
    sget-object v6, Lcom/google/zxing/c/g;->a:[I

    aget v5, v6, v5

    invoke-static {v5, v3}, Lcom/google/zxing/c/h;->a(I[I)V

    .line 63
    invoke-static {v4, v1, v3}, Lcom/google/zxing/c/h;->a([ZI[I)I

    move-result v5

    add-int/2addr v1, v5

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/zxing/c/h;->a(Ljava/lang/String;I)I

    move-result v0

    .line 68
    sget-object v2, Lcom/google/zxing/c/g;->a:[I

    aget v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/zxing/c/h;->a(I[I)V

    .line 69
    invoke-static {v4, v1, v3}, Lcom/google/zxing/c/h;->a([ZI[I)I

    move-result v2

    add-int/2addr v1, v2

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    const/16 v2, 0xf

    invoke-static {v0, v2}, Lcom/google/zxing/c/h;->a(Ljava/lang/String;I)I

    move-result v0

    .line 75
    sget-object v2, Lcom/google/zxing/c/g;->a:[I

    aget v0, v2, v0

    invoke-static {v0, v3}, Lcom/google/zxing/c/h;->a(I[I)V

    .line 76
    invoke-static {v4, v1, v3}, Lcom/google/zxing/c/h;->a([ZI[I)I

    move-result v0

    add-int/2addr v0, v1

    .line 79
    sget-object v1, Lcom/google/zxing/c/g;->a:[I

    aget v1, v1, v7

    invoke-static {v1, v3}, Lcom/google/zxing/c/h;->a(I[I)V

    .line 80
    invoke-static {v4, v0, v3}, Lcom/google/zxing/c/h;->a([ZI[I)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    .line 85
    return-object v4
.end method
