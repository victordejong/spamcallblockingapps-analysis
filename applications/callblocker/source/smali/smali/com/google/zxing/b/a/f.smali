.class final Lcom/google/zxing/b/a/f;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/b/a/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v3, v1, p1

    .line 120
    if-nez v3, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StringBuilder must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 124
    if-lt v3, v7, :cond_4

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .line 125
    :goto_0
    if-lt v3, v6, :cond_5

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 126
    :goto_1
    const/4 v5, 0x4

    if-lt v3, v5, :cond_1

    add-int/lit8 v0, p1, 0x3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 128
    :cond_1
    shl-int/lit8 v4, v4, 0x12

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 129
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 130
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 131
    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    if-lt v3, v7, :cond_2

    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    if-lt v3, v6, :cond_3

    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v2, v0

    .line 124
    goto :goto_0

    :cond_5
    move v1, v0

    .line 125
    goto :goto_1
.end method

.method private static a(CLjava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_1

    .line 112
    add-int/lit8 v0, p0, -0x40

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/b/a/j;->c(C)V

    goto :goto_0
.end method

.method private static a(Lcom/google/zxing/b/a/h;Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 61
    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/zxing/b/a/h;->b(I)V

    .line 105
    :goto_0
    return-void

    .line 64
    :cond_0
    if-ne v3, v0, :cond_2

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->j()V

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->i()Lcom/google/zxing/b/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/b/a/k;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I

    move-result v4

    sub-int/2addr v2, v4

    .line 68
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->h()I

    move-result v4

    .line 70
    if-le v4, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/zxing/b/a/h;->c(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->i()Lcom/google/zxing/b/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/b/a/k;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    sub-int/2addr v2, v5

    .line 74
    :cond_1
    if-gt v4, v2, :cond_2

    if-gt v2, v6, :cond_2

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/zxing/b/a/h;->b(I)V

    goto :goto_0

    .line 79
    :cond_2
    const/4 v2, 0x4

    if-le v3, v2, :cond_3

    .line 80
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Count must not exceed 4"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/b/a/h;->b(I)V

    .line 105
    throw v0

    .line 82
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 83
    const/4 v2, 0x0

    :try_start_3
    invoke-static {p1, v2}, Lcom/google/zxing/b/a/f;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->g()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    .line 85
    :goto_1
    if-eqz v2, :cond_6

    if-gt v3, v6, :cond_6

    .line 87
    :goto_2
    if-gt v3, v6, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/zxing/b/a/h;->c(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->i()Lcom/google/zxing/b/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/b/a/k;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I

    move-result v5

    sub-int/2addr v2, v5

    .line 90
    const/4 v5, 0x3

    if-lt v2, v5, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->d()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/zxing/b/a/h;->c(I)V

    move v0, v1

    .line 97
    :cond_4
    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/b/a/h;->k()V

    .line 99
    iget v0, p0, Lcom/google/zxing/b/a/h;->a:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/zxing/b/a/h;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/zxing/b/a/h;->b(I)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 84
    goto :goto_1

    :cond_6
    move v0, v1

    .line 85
    goto :goto_2

    .line 101
    :cond_7
    :try_start_4
    invoke-virtual {p0, v4}, Lcom/google/zxing/b/a/h;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/google/zxing/b/a/h;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->b()C

    move-result v1

    .line 32
    invoke-static {v1, v0}, Lcom/google/zxing/b/a/f;->a(CLjava/lang/StringBuilder;)V

    .line 33
    iget v1, p1, Lcom/google/zxing/b/a/h;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/zxing/b/a/h;->a:I

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 36
    if-lt v1, v5, :cond_0

    .line 37
    invoke-static {v0, v4}, Lcom/google/zxing/b/a/f;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/b/a/h;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/b/a/h;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/b/a/f;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/b/a/f;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 43
    invoke-virtual {p1, v4}, Lcom/google/zxing/b/a/h;->b(I)V

    .line 48
    :cond_1
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p1, v0}, Lcom/google/zxing/b/a/f;->a(Lcom/google/zxing/b/a/h;Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
