.class public final Lcom/google/zxing/c/l;
.super Lcom/google/zxing/c/n;
.source "ITFWriter.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 33
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/c/l;->a:[I

    .line 34
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/c/l;->b:[I

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/c/l;->c:[[I

    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

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
    .line 60
    sget-object v0, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    if-eq p2, v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only encode ITF, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/c/n;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 70
    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The length of the input should be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const/16 v0, 0x50

    if-le v4, v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    mul-int/lit8 v0, v4, 0x9

    add-int/lit8 v0, v0, 0x9

    new-array v5, v0, [Z

    .line 78
    sget-object v0, Lcom/google/zxing/c/l;->a:[I

    invoke-static {v5, v1, v0, v11}, Lcom/google/zxing/c/l;->a([ZI[IZ)I

    move-result v0

    move v2, v1

    move v3, v0

    .line 79
    :goto_0
    if-ge v2, v4, :cond_3

    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 81
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 82
    new-array v8, v12, [I

    move v0, v1

    .line 83
    :goto_1
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    .line 84
    mul-int/lit8 v9, v0, 0x2

    sget-object v10, Lcom/google/zxing/c/l;->c:[[I

    aget-object v10, v10, v6

    aget v10, v10, v0

    aput v10, v8, v9

    .line 85
    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lcom/google/zxing/c/l;->c:[[I

    aget-object v10, v10, v7

    aget v10, v10, v0

    aput v10, v8, v9

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v5, v3, v8, v11}, Lcom/google/zxing/c/l;->a([ZI[IZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 79
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 89
    :cond_3
    sget-object v0, Lcom/google/zxing/c/l;->b:[I

    invoke-static {v5, v3, v0, v11}, Lcom/google/zxing/c/l;->a([ZI[IZ)I

    .line 91
    return-object v5
.end method
