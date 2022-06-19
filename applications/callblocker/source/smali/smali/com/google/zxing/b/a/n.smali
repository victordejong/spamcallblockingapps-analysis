.class final Lcom/google/zxing/b/a/n;
.super Lcom/google/zxing/b/a/c;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/zxing/b/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    return v0
.end method

.method a(CLjava/lang/StringBuilder;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 67
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 68
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    return v1

    .line 55
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 70
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xe

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/b/a/j;->c(C)V

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x20 -> :sswitch_3
        0x2a -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/google/zxing/b/a/h;)V
    .locals 4

    .prologue
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
    iget v2, p1, Lcom/google/zxing/b/a/h;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/b/a/h;->a:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/b/a/n;->a(CLjava/lang/StringBuilder;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 37
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 38
    invoke-static {p1, v0}, Lcom/google/zxing/b/a/n;->a(Lcom/google/zxing/b/a/h;Ljava/lang/StringBuilder;)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/b/a/h;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/b/a/n;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/b/a/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/b/a/n;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/zxing/b/a/h;->b(I)V

    .line 48
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/b/a/n;->b(Lcom/google/zxing/b/a/h;Ljava/lang/StringBuilder;)V

    .line 49
    return-void
.end method

.method b(Lcom/google/zxing/b/a/h;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->j()V

    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->i()Lcom/google/zxing/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/b/a/k;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 84
    iget v2, p1, Lcom/google/zxing/b/a/h;->a:I

    sub-int v1, v2, v1

    iput v1, p1, Lcom/google/zxing/b/a/h;->a:I

    .line 85
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->h()I

    move-result v1

    if-gt v1, v3, :cond_0

    if-gt v0, v3, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->h()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 87
    :cond_0
    const/16 v0, 0xfe

    invoke-virtual {p1, v0}, Lcom/google/zxing/b/a/h;->a(C)V

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/b/a/h;->e()I

    move-result v0

    if-gez v0, :cond_2

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/zxing/b/a/h;->b(I)V

    .line 92
    :cond_2
    return-void
.end method
