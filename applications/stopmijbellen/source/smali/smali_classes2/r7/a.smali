.class public Lr7/a;
.super Lk7/r;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:Lk7/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk7/r;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr7/a;->h:I

    .line 3
    iput v0, p0, Lr7/a;->i:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lr7/a;->j:I

    .line 5
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lr7/a;->k:Lk7/l;

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 6

    .line 1
    iget p1, p0, Lr7/a;->j:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lk7/l;->n()V

    return-void

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget p1, p2, Lk7/l;->c:I

    if-lez p1, :cond_11

    .line 4
    iget p1, p0, Lr7/a;->j:I

    invoke-static {p1}, Lt/g;->c(I)I

    move-result p1

    const/16 v0, 0xd

    const/16 v1, 0xa

    if-eqz p1, :cond_c

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq p1, v4, :cond_7

    const/4 v4, 0x6

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Lk7/l;->g()C

    move-result p1

    .line 6
    invoke-virtual {p0, p1, v1}, Lr7/a;->p(CC)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 7
    :cond_3
    iget p1, p0, Lr7/a;->h:I

    if-lez p1, :cond_4

    .line 8
    iput v3, p0, Lr7/a;->j:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    const/4 p1, 0x7

    .line 9
    iput p1, p0, Lr7/a;->j:I

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lr7/a;->n(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lr7/a;->h:I

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p2}, Lk7/l;->g()C

    move-result p1

    .line 13
    invoke-virtual {p0, p1, v0}, Lr7/a;->p(CC)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 14
    :cond_6
    iput v4, p0, Lr7/a;->j:I

    goto :goto_0

    .line 15
    :cond_7
    iget p1, p2, Lk7/l;->c:I

    .line 16
    iget v0, p0, Lr7/a;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 17
    iget v0, p0, Lr7/a;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lr7/a;->i:I

    if-nez v0, :cond_8

    .line 18
    iput v5, p0, Lr7/a;->j:I

    :cond_8
    if-nez p1, :cond_9

    goto :goto_0

    .line 19
    :cond_9
    iget-object v0, p0, Lr7/a;->k:Lk7/l;

    invoke-virtual {p2, v0, p1}, Lk7/l;->d(Lk7/l;I)V

    .line 20
    iget-object p1, p0, Lr7/a;->k:Lk7/l;

    invoke-static {p0, p1}, Li4/d;->p(Lk7/m;Lk7/l;)V

    goto :goto_0

    .line 21
    :cond_a
    invoke-virtual {p2}, Lk7/l;->g()C

    move-result p1

    .line 22
    invoke-virtual {p0, p1, v1}, Lr7/a;->p(CC)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 23
    :cond_b
    iput v2, p0, Lr7/a;->j:I

    goto :goto_0

    .line 24
    :cond_c
    invoke-virtual {p2}, Lk7/l;->g()C

    move-result p1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lr7/a;->j:I

    goto :goto_2

    .line 26
    :cond_d
    iget v0, p0, Lr7/a;->h:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lr7/a;->h:I

    const/16 v2, 0x61

    if-lt p1, v2, :cond_e

    const/16 v2, 0x66

    if-gt p1, v2, :cond_e

    add-int/lit8 p1, p1, -0x61

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 27
    iput p1, p0, Lr7/a;->h:I

    goto :goto_2

    :cond_e
    const/16 v2, 0x30

    if-lt p1, v2, :cond_f

    const/16 v2, 0x39

    if-gt p1, v2, :cond_f

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p1, v0

    .line 28
    iput p1, p0, Lr7/a;->h:I

    goto :goto_2

    :cond_f
    const/16 v2, 0x41

    if-lt p1, v2, :cond_10

    const/16 v2, 0x46

    if-gt p1, v2, :cond_10

    add-int/lit8 p1, p1, -0x41

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 29
    iput p1, p0, Lr7/a;->h:I

    .line 30
    :goto_2
    iget p1, p0, Lr7/a;->h:I

    iput p1, p0, Lr7/a;->i:I

    goto/16 :goto_0

    .line 31
    :cond_10
    new-instance p2, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid chunk length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lr7/a;->n(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :goto_3
    invoke-virtual {p0, p1}, Lr7/a;->n(Ljava/lang/Exception;)V

    :cond_11
    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Lr7/a;->j:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method

.method public final p(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    const/16 v0, 0x8

    .line 1
    iput v0, p0, Lr7/a;->j:I

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr7/a;->n(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
