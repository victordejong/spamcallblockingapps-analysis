.class public Lw6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final p:[C


# instance fields
.field public final a:Ljava/io/Reader;

.field public b:Z

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;

.field public l:[I

.field public m:I

.field public n:[Ljava/lang/String;

.field public o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lw6/a;->p:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw6/a;->b:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 3
    iput-object v1, p0, Lw6/a;->c:[C

    .line 4
    iput v0, p0, Lw6/a;->d:I

    .line 5
    iput v0, p0, Lw6/a;->e:I

    .line 6
    iput v0, p0, Lw6/a;->f:I

    .line 7
    iput v0, p0, Lw6/a;->g:I

    .line 8
    iput v0, p0, Lw6/a;->h:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Lw6/a;->l:[I

    .line 10
    iput v0, p0, Lw6/a;->m:I

    add-int/lit8 v3, v0, 0x1

    .line 11
    iput v3, p0, Lw6/a;->m:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lw6/a;->n:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 13
    iput-object v0, p0, Lw6/a;->o:[I

    const-string v0, "in == null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lw6/a;->a:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lw6/a;->l()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public D()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lw6/a;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget v2, p0, Lw6/a;->d:I

    iget v3, p0, Lw6/a;->g:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v2, p0, Lw6/a;->m:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 6
    iget-object v5, p0, Lw6/a;->l:[I

    aget v5, v5, v4

    if-eq v5, v1, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x2e

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v5, p0, Lw6/a;->n:[Ljava/lang/String;

    aget-object v6, v5, v4

    if-eqz v6, :cond_2

    .line 9
    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x5b

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lw6/a;->o:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lw6/a;->h:I

    .line 4
    iget-object v0, p0, Lw6/a;->o:[I

    iget v1, p0, Lw6/a;->m:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5
    iput v2, p0, Lw6/a;->h:I

    .line 6
    iget-object v0, p0, Lw6/a;->o:[I

    iget v1, p0, Lw6/a;->m:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lw6/a;->Y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-virtual {p0, v0}, Lw6/a;->U(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-virtual {p0, v0}, Lw6/a;->U(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lw6/a;->h:I

    .line 7
    iget-object v1, p0, Lw6/a;->n:[Ljava/lang/String;

    iget v2, p0, Lw6/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw6/a;->c:[C

    .line 2
    iget v1, p0, Lw6/a;->d:I

    .line 3
    iget v2, p0, Lw6/a;->e:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    iput v1, p0, Lw6/a;->d:I

    .line 5
    invoke-virtual {p0, v3}, Lw6/a;->s(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    iget v1, p0, Lw6/a;->d:I

    .line 8
    iget v2, p0, Lw6/a;->e:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 9
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 10
    iget v1, p0, Lw6/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lw6/a;->f:I

    .line 11
    iput v4, p0, Lw6/a;->g:I

    goto/16 :goto_6

    :cond_3
    const/16 v6, 0x20

    if-eq v1, v6, :cond_10

    const/16 v6, 0xd

    if-eq v1, v6, :cond_10

    const/16 v6, 0x9

    if-ne v1, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_e

    .line 12
    iput v4, p0, Lw6/a;->d:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 13
    iput v4, p0, Lw6/a;->d:I

    .line 14
    invoke-virtual {p0, v7}, Lw6/a;->s(I)Z

    move-result v2

    .line 15
    iget v4, p0, Lw6/a;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lw6/a;->d:I

    if-nez v2, :cond_5

    return v1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lw6/a;->l()V

    .line 17
    iget v2, p0, Lw6/a;->d:I

    aget-char v4, v0, v2

    const/16 v8, 0x2a

    if-eq v4, v8, :cond_7

    if-eq v4, v6, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 18
    iput v2, p0, Lw6/a;->d:I

    .line 19
    invoke-virtual {p0}, Lw6/a;->b0()V

    .line 20
    iget v1, p0, Lw6/a;->d:I

    .line 21
    iget v2, p0, Lw6/a;->e:I

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 22
    iput v2, p0, Lw6/a;->d:I

    .line 23
    :goto_1
    iget v1, p0, Lw6/a;->d:I

    add-int/2addr v1, v7

    iget v2, p0, Lw6/a;->e:I

    const/4 v4, 0x0

    if-le v1, v2, :cond_9

    invoke-virtual {p0, v7}, Lw6/a;->s(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 24
    :cond_9
    :goto_2
    iget-object v1, p0, Lw6/a;->c:[C

    iget v2, p0, Lw6/a;->d:I

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_a

    .line 25
    iget v1, p0, Lw6/a;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lw6/a;->f:I

    add-int/lit8 v2, v2, 0x1

    .line 26
    iput v2, p0, Lw6/a;->g:I

    goto :goto_4

    :cond_a
    :goto_3
    if-ge v4, v7, :cond_c

    .line 27
    iget-object v1, p0, Lw6/a;->c:[C

    iget v2, p0, Lw6/a;->d:I

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    const-string v2, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_b

    .line 28
    :goto_4
    iget v1, p0, Lw6/a;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lw6/a;->d:I

    goto :goto_1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    .line 29
    iget v1, p0, Lw6/a;->d:I

    add-int/2addr v1, v7

    .line 30
    iget v2, p0, Lw6/a;->e:I

    goto/16 :goto_0

    :cond_d
    const-string p1, "Unterminated comment"

    .line 31
    invoke-virtual {p0, p1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1

    :cond_e
    const/16 v2, 0x23

    if-ne v1, v2, :cond_f

    .line 32
    iput v4, p0, Lw6/a;->d:I

    .line 33
    invoke-virtual {p0}, Lw6/a;->l()V

    .line 34
    invoke-virtual {p0}, Lw6/a;->b0()V

    .line 35
    iget v1, p0, Lw6/a;->d:I

    .line 36
    iget v2, p0, Lw6/a;->e:I

    goto/16 :goto_0

    .line 37
    :cond_f
    iput v4, p0, Lw6/a;->d:I

    return v1

    :cond_10
    :goto_6
    move v1, v4

    goto/16 :goto_0
.end method

.method public P()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lw6/a;->h:I

    .line 4
    iget-object v0, p0, Lw6/a;->o:[I

    iget v1, p0, Lw6/a;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected null but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final U(C)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw6/a;->c:[C

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lw6/a;->d:I

    .line 3
    iget v4, p0, Lw6/a;->e:I

    :goto_1
    move v5, v3

    :goto_2
    const/16 v6, 0x10

    const/4 v7, 0x1

    if-ge v5, v4, :cond_15

    add-int/lit8 v8, v5, 0x1

    .line 4
    aget-char v5, v0, v5

    if-ne v5, p1, :cond_1

    .line 5
    iput v8, p0, Lw6/a;->d:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v7

    if-nez v2, :cond_0

    .line 6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v2, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v9, 0xa

    const/16 v10, 0x5c

    if-ne v5, v10, :cond_13

    .line 9
    iput v8, p0, Lw6/a;->d:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v7

    if-nez v2, :cond_2

    add-int/lit8 v2, v8, 0x1

    mul-int/lit8 v2, v2, 0x2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 11
    :cond_2
    invoke-virtual {v2, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 12
    iget v3, p0, Lw6/a;->d:I

    iget v4, p0, Lw6/a;->e:I

    const-string v5, "Unterminated escape sequence"

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v7}, Lw6/a;->s(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0, v5}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v1

    .line 14
    :cond_4
    :goto_3
    iget-object v3, p0, Lw6/a;->c:[C

    iget v4, p0, Lw6/a;->d:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lw6/a;->d:I

    aget-char v3, v3, v4

    if-eq v3, v9, :cond_10

    const/16 v4, 0x22

    if-eq v3, v4, :cond_11

    const/16 v4, 0x27

    if-eq v3, v4, :cond_11

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_11

    if-eq v3, v10, :cond_11

    const/16 v4, 0x62

    if-eq v3, v4, :cond_f

    const/16 v4, 0x66

    if-eq v3, v4, :cond_e

    const/16 v7, 0x6e

    if-eq v3, v7, :cond_12

    const/16 v7, 0x72

    if-eq v3, v7, :cond_d

    const/16 v7, 0x74

    if-eq v3, v7, :cond_c

    const/16 v7, 0x75

    if-ne v3, v7, :cond_b

    add-int/lit8 v6, v6, 0x4

    .line 15
    iget v3, p0, Lw6/a;->e:I

    const/4 v7, 0x4

    if-le v6, v3, :cond_6

    invoke-virtual {p0, v7}, Lw6/a;->s(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p0, v5}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v1

    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 17
    iget v5, p0, Lw6/a;->d:I

    add-int/lit8 v6, v5, 0x4

    :goto_5
    if-ge v5, v6, :cond_a

    .line 18
    iget-object v8, p0, Lw6/a;->c:[C

    aget-char v8, v8, v5

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v10, 0x30

    if-lt v8, v10, :cond_7

    const/16 v10, 0x39

    if-gt v8, v10, :cond_7

    add-int/lit8 v8, v8, -0x30

    goto :goto_7

    :cond_7
    const/16 v10, 0x61

    if-lt v8, v10, :cond_8

    if-gt v8, v4, :cond_8

    add-int/lit8 v8, v8, -0x61

    goto :goto_6

    :cond_8
    const/16 v10, 0x41

    if-lt v8, v10, :cond_9

    const/16 v10, 0x46

    if-gt v8, v10, :cond_9

    add-int/lit8 v8, v8, -0x41

    :goto_6
    add-int/2addr v8, v9

    :goto_7
    add-int/2addr v8, v3

    int-to-char v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "\\u"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lw6/a;->c:[C

    iget v3, p0, Lw6/a;->d:I

    invoke-direct {v1, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a
    iget v4, p0, Lw6/a;->d:I

    add-int/2addr v4, v7

    iput v4, p0, Lw6/a;->d:I

    goto :goto_8

    :cond_b
    const-string p1, "Invalid escape sequence"

    .line 21
    invoke-virtual {p0, p1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v1

    :cond_c
    const/16 v9, 0x9

    goto :goto_9

    :cond_d
    const/16 v9, 0xd

    goto :goto_9

    :cond_e
    const/16 v9, 0xc

    goto :goto_9

    :cond_f
    const/16 v9, 0x8

    goto :goto_9

    .line 22
    :cond_10
    iget v4, p0, Lw6/a;->f:I

    add-int/2addr v4, v7

    iput v4, p0, Lw6/a;->f:I

    .line 23
    iput v6, p0, Lw6/a;->g:I

    :cond_11
    :goto_8
    move v9, v3

    .line 24
    :cond_12
    :goto_9
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    iget v3, p0, Lw6/a;->d:I

    .line 26
    iget v4, p0, Lw6/a;->e:I

    goto/16 :goto_1

    :cond_13
    if-ne v5, v9, :cond_14

    .line 27
    iget v5, p0, Lw6/a;->f:I

    add-int/2addr v5, v7

    iput v5, p0, Lw6/a;->f:I

    .line 28
    iput v8, p0, Lw6/a;->g:I

    :cond_14
    move v5, v8

    goto/16 :goto_2

    :cond_15
    if-nez v2, :cond_16

    sub-int v2, v5, v3

    mul-int/lit8 v2, v2, 0x2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    :cond_16
    sub-int v4, v5, v3

    .line 30
    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    iput v5, p0, Lw6/a;->d:I

    .line 32
    invoke-virtual {p0, v7}, Lw6/a;->s(I)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const-string p1, "Unterminated string"

    .line 33
    invoke-virtual {p0, p1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v1
.end method

.method public W()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lw6/a;->Y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-virtual {p0, v0}, Lw6/a;->U(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-virtual {p0, v0}, Lw6/a;->U(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lw6/a;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lw6/a;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 8
    iget-wide v0, p0, Lw6/a;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lw6/a;->c:[C

    iget v2, p0, Lw6/a;->d:I

    iget v3, p0, Lw6/a;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    iget v1, p0, Lw6/a;->d:I

    iget v2, p0, Lw6/a;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lw6/a;->d:I

    :goto_0
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lw6/a;->h:I

    .line 12
    iget-object v1, p0, Lw6/a;->o:[I

    iget v2, p0, Lw6/a;->m:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lw6/a;->d:I

    add-int v4, v3, v2

    iget v5, p0, Lw6/a;->e:I

    if-ge v4, v5, :cond_2

    .line 2
    iget-object v4, p0, Lw6/a;->c:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lw6/a;->l()V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v3, p0, Lw6/a;->c:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 5
    invoke-virtual {p0, v3}, Lw6/a;->s(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    :cond_5
    iget-object v3, p0, Lw6/a;->c:[C

    iget v4, p0, Lw6/a;->d:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    iget v3, p0, Lw6/a;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lw6/a;->d:I

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Lw6/a;->s(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    .line 10
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lw6/a;->c:[C

    iget v3, p0, Lw6/a;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lw6/a;->c:[C

    iget v3, p0, Lw6/a;->d:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_3
    iget v2, p0, Lw6/a;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lw6/a;->d:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a0(I)V
    .locals 6

    .line 1
    iget v0, p0, Lw6/a;->m:I

    iget-object v1, p0, Lw6/a;->l:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 2
    new-array v2, v2, [I

    mul-int/lit8 v3, v0, 0x2

    .line 3
    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    .line 4
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lw6/a;->o:[I

    iget v1, p0, Lw6/a;->m:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lw6/a;->n:[Ljava/lang/String;

    iget v1, p0, Lw6/a;->m:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v2, p0, Lw6/a;->l:[I

    .line 9
    iput-object v3, p0, Lw6/a;->o:[I

    .line 10
    iput-object v4, p0, Lw6/a;->n:[Ljava/lang/String;

    .line 11
    :cond_0
    iget-object v0, p0, Lw6/a;->l:[I

    iget v1, p0, Lw6/a;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw6/a;->m:I

    aput p1, v0, v1

    return-void
.end method

.method public final b0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lw6/a;->d:I

    iget v1, p0, Lw6/a;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lw6/a;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lw6/a;->c:[C

    iget v1, p0, Lw6/a;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lw6/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lw6/a;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lw6/a;->f:I

    .line 4
    iput v3, p0, Lw6/a;->g:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final c0(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lw6/a;->h:I

    .line 2
    iget-object v1, p0, Lw6/a;->l:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lw6/a;->m:I

    .line 4
    iget-object v0, p0, Lw6/a;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lw6/a;->a0(I)V

    .line 4
    iget-object v1, p0, Lw6/a;->o:[I

    iget v2, p0, Lw6/a;->m:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    iput v0, p0, Lw6/a;->h:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lw6/a;->a0(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lw6/a;->h:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lw6/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 2
    invoke-virtual {p0, v0}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
.end method

.method public o()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lw6/a;->l:[I

    iget v2, v0, Lw6/a;->m:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v7, 0x5d

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sub-int/2addr v2, v4

    .line 2
    aput v5, v1, v2

    goto/16 :goto_2

    :cond_0
    if-ne v3, v5, :cond_3

    .line 3
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    move-result v1

    if-eq v1, v9, :cond_f

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_1

    .line 4
    iput v15, v0, Lw6/a;->h:I

    return v15

    :cond_1
    const-string v1, "Unterminated array"

    .line 5
    invoke-virtual {v0, v1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v13

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    goto/16 :goto_2

    :cond_3
    if-eq v3, v11, :cond_41

    if-ne v3, v14, :cond_4

    goto/16 :goto_16

    :cond_4
    if-ne v3, v15, :cond_7

    sub-int/2addr v2, v4

    .line 7
    aput v14, v1, v2

    .line 8
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_f

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_6

    .line 9
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    .line 10
    iget v1, v0, Lw6/a;->d:I

    iget v2, v0, Lw6/a;->e:I

    if-lt v1, v2, :cond_5

    invoke-virtual {v0, v4}, Lw6/a;->s(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_5
    iget-object v1, v0, Lw6/a;->c:[C

    iget v2, v0, Lw6/a;->d:I

    aget-char v1, v1, v2

    const/16 v15, 0x3e

    if-ne v1, v15, :cond_f

    add-int/2addr v2, v4

    .line 11
    iput v2, v0, Lw6/a;->d:I

    goto :goto_2

    :cond_6
    const-string v1, "Expected \':\'"

    .line 12
    invoke-virtual {v0, v1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v13

    :cond_7
    if-ne v3, v10, :cond_c

    .line 13
    iget-boolean v1, v0, Lw6/a;->b:Z

    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    .line 15
    iget v1, v0, Lw6/a;->d:I

    sub-int/2addr v1, v4

    iput v1, v0, Lw6/a;->d:I

    .line 16
    sget-object v2, Lw6/a;->p:[C

    array-length v15, v2

    add-int/2addr v1, v15

    iget v15, v0, Lw6/a;->e:I

    if-le v1, v15, :cond_8

    array-length v1, v2

    invoke-virtual {v0, v1}, Lw6/a;->s(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 17
    :goto_0
    sget-object v2, Lw6/a;->p:[C

    array-length v15, v2

    if-ge v1, v15, :cond_a

    .line 18
    iget-object v15, v0, Lw6/a;->c:[C

    iget v13, v0, Lw6/a;->d:I

    add-int/2addr v13, v1

    aget-char v13, v15, v13

    aget-char v2, v2, v1

    if-eq v13, v2, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    goto :goto_0

    .line 19
    :cond_a
    iget v1, v0, Lw6/a;->d:I

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lw6/a;->d:I

    .line 20
    :cond_b
    :goto_1
    iget-object v1, v0, Lw6/a;->l:[I

    iget v2, v0, Lw6/a;->m:I

    sub-int/2addr v2, v4

    aput v12, v1, v2

    goto :goto_2

    :cond_c
    if-ne v3, v12, :cond_e

    .line 21
    invoke-virtual {v0, v6}, Lw6/a;->L(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    const/16 v1, 0x11

    .line 22
    iput v1, v0, Lw6/a;->h:I

    return v1

    .line 23
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    .line 24
    iget v1, v0, Lw6/a;->d:I

    sub-int/2addr v1, v4

    iput v1, v0, Lw6/a;->d:I

    goto :goto_2

    :cond_e
    const/16 v1, 0x8

    if-eq v3, v1, :cond_40

    .line 25
    :cond_f
    :goto_2
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3e

    if-eq v1, v9, :cond_3b

    if-eq v1, v8, :cond_3b

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3a

    if-eq v1, v7, :cond_39

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_38

    .line 26
    iget v1, v0, Lw6/a;->d:I

    sub-int/2addr v1, v4

    iput v1, v0, Lw6/a;->d:I

    .line 27
    iget-object v2, v0, Lw6/a;->c:[C

    aget-char v1, v2, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_14

    const/16 v2, 0x54

    if-ne v1, v2, :cond_10

    goto :goto_4

    :cond_10
    const/16 v2, 0x66

    if-eq v1, v2, :cond_13

    const/16 v2, 0x46

    if-ne v1, v2, :cond_11

    goto :goto_3

    :cond_11
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_12

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_19

    :cond_12
    const-string v1, "null"

    const-string v2, "NULL"

    const/4 v3, 0x7

    goto :goto_5

    :cond_13
    :goto_3
    const-string v1, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_5

    :cond_14
    :goto_4
    const-string v1, "true"

    const-string v2, "TRUE"

    const/4 v3, 0x5

    .line 28
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    :goto_6
    if-ge v8, v7, :cond_17

    .line 29
    iget v9, v0, Lw6/a;->d:I

    add-int/2addr v9, v8

    iget v13, v0, Lw6/a;->e:I

    if-lt v9, v13, :cond_15

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v9}, Lw6/a;->s(I)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_7

    .line 30
    :cond_15
    iget-object v9, v0, Lw6/a;->c:[C

    iget v13, v0, Lw6/a;->d:I

    add-int/2addr v13, v8

    aget-char v9, v9, v13

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v9, v13, :cond_16

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v9, v13, :cond_16

    goto :goto_7

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 32
    :cond_17
    iget v1, v0, Lw6/a;->d:I

    add-int/2addr v1, v7

    iget v2, v0, Lw6/a;->e:I

    if-lt v1, v2, :cond_18

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lw6/a;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    iget-object v1, v0, Lw6/a;->c:[C

    iget v2, v0, Lw6/a;->d:I

    add-int/2addr v2, v7

    aget-char v1, v1, v2

    .line 33
    invoke-virtual {v0, v1}, Lw6/a;->B(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    .line 34
    :cond_1a
    iget v1, v0, Lw6/a;->d:I

    add-int/2addr v1, v7

    iput v1, v0, Lw6/a;->d:I

    .line 35
    iput v3, v0, Lw6/a;->h:I

    :goto_8
    if-eqz v3, :cond_1b

    return v3

    .line 36
    :cond_1b
    iget-object v1, v0, Lw6/a;->c:[C

    .line 37
    iget v2, v0, Lw6/a;->d:I

    .line 38
    iget v3, v0, Lw6/a;->e:I

    const-wide/16 v7, 0x0

    move-wide v10, v7

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_9
    add-int v6, v2, v9

    if-ne v6, v3, :cond_1f

    .line 39
    array-length v2, v1

    if-ne v9, v2, :cond_1d

    :cond_1c
    :goto_a
    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_1d
    add-int/lit8 v2, v9, 0x1

    .line 40
    invoke-virtual {v0, v2}, Lw6/a;->s(I)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_10

    .line 41
    :cond_1e
    iget v2, v0, Lw6/a;->d:I

    .line 42
    iget v3, v0, Lw6/a;->e:I

    :cond_1f
    add-int v6, v2, v9

    .line 43
    aget-char v6, v1, v6

    const/16 v12, 0x2b

    if-eq v6, v12, :cond_35

    const/16 v12, 0x45

    if-eq v6, v12, :cond_33

    const/16 v12, 0x65

    if-eq v6, v12, :cond_33

    const/16 v12, 0x2d

    if-eq v6, v12, :cond_31

    const/16 v12, 0x2e

    if-eq v6, v12, :cond_30

    const/16 v12, 0x30

    if-lt v6, v12, :cond_2a

    const/16 v12, 0x39

    if-le v6, v12, :cond_20

    goto :goto_f

    :cond_20
    if-eq v13, v4, :cond_28

    if-nez v13, :cond_21

    goto :goto_d

    :cond_21
    if-ne v13, v5, :cond_25

    cmp-long v12, v10, v7

    if-nez v12, :cond_22

    goto :goto_a

    :cond_22
    const-wide/16 v17, 0xa

    mul-long v17, v17, v10

    add-int/lit8 v6, v6, -0x30

    int-to-long v7, v6

    sub-long v17, v17, v7

    const-wide v6, -0xcccccccccccccccL

    cmp-long v8, v10, v6

    if-gtz v8, :cond_24

    if-nez v8, :cond_23

    cmp-long v6, v17, v10

    if-gez v6, :cond_23

    goto :goto_b

    :cond_23
    const/4 v6, 0x0

    goto :goto_c

    :cond_24
    :goto_b
    const/4 v6, 0x1

    :goto_c
    and-int/2addr v15, v6

    move-wide/from16 v10, v17

    const/4 v7, 0x6

    goto :goto_e

    :cond_25
    const/4 v6, 0x3

    const/4 v7, 0x6

    if-ne v13, v6, :cond_26

    const/4 v13, 0x4

    goto :goto_e

    :cond_26
    if-eq v13, v14, :cond_27

    if-ne v13, v7, :cond_29

    :cond_27
    const/4 v13, 0x7

    goto :goto_e

    :cond_28
    :goto_d
    const/4 v7, 0x6

    add-int/lit8 v6, v6, -0x30

    neg-int v6, v6

    int-to-long v10, v6

    const/4 v13, 0x2

    :cond_29
    :goto_e
    const-wide/16 v17, 0x0

    goto/16 :goto_13

    .line 44
    :cond_2a
    :goto_f
    invoke-virtual {v0, v6}, Lw6/a;->B(C)Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_10
    if-ne v13, v5, :cond_2e

    if-eqz v15, :cond_2e

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v10, v1

    if-nez v3, :cond_2b

    if-eqz v16, :cond_2e

    :cond_2b
    const-wide/16 v17, 0x0

    cmp-long v1, v10, v17

    if-nez v1, :cond_2c

    if-nez v16, :cond_2e

    :cond_2c
    if-eqz v16, :cond_2d

    goto :goto_11

    :cond_2d
    neg-long v10, v10

    .line 45
    :goto_11
    iput-wide v10, v0, Lw6/a;->i:J

    .line 46
    iget v1, v0, Lw6/a;->d:I

    add-int/2addr v1, v9

    iput v1, v0, Lw6/a;->d:I

    const/16 v6, 0xf

    .line 47
    iput v6, v0, Lw6/a;->h:I

    goto :goto_14

    :cond_2e
    if-eq v13, v5, :cond_2f

    const/4 v1, 0x4

    if-eq v13, v1, :cond_2f

    const/4 v1, 0x7

    if-ne v13, v1, :cond_1c

    .line 48
    :cond_2f
    iput v9, v0, Lw6/a;->j:I

    const/16 v6, 0x10

    .line 49
    iput v6, v0, Lw6/a;->h:I

    goto :goto_14

    :cond_30
    move-wide/from16 v17, v7

    const/4 v7, 0x6

    if-ne v13, v5, :cond_1c

    const/4 v13, 0x3

    goto :goto_13

    :cond_31
    move-wide/from16 v17, v7

    const/4 v7, 0x6

    if-nez v13, :cond_32

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto :goto_13

    :cond_32
    if-ne v13, v14, :cond_1c

    goto :goto_12

    :cond_33
    move-wide/from16 v17, v7

    const/4 v7, 0x6

    if-eq v13, v5, :cond_34

    const/4 v6, 0x4

    if-ne v13, v6, :cond_1c

    :cond_34
    const/4 v13, 0x5

    goto :goto_13

    :cond_35
    move-wide/from16 v17, v7

    const/4 v7, 0x6

    if-ne v13, v14, :cond_1c

    :goto_12
    const/4 v13, 0x6

    :goto_13
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v7, v17

    const/4 v12, 0x7

    goto/16 :goto_9

    :goto_14
    if-eqz v6, :cond_36

    return v6

    .line 50
    :cond_36
    iget-object v1, v0, Lw6/a;->c:[C

    iget v2, v0, Lw6/a;->d:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Lw6/a;->B(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 51
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    const/16 v1, 0xa

    .line 52
    iput v1, v0, Lw6/a;->h:I

    return v1

    :cond_37
    const-string v1, "Expected value"

    .line 53
    invoke-virtual {v0, v1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v1, 0x0

    throw v1

    .line 54
    :cond_38
    iput v4, v0, Lw6/a;->h:I

    return v4

    :cond_39
    if-ne v3, v4, :cond_3b

    const/4 v1, 0x4

    .line 55
    iput v1, v0, Lw6/a;->h:I

    return v1

    :cond_3a
    const/4 v1, 0x3

    .line 56
    iput v1, v0, Lw6/a;->h:I

    return v1

    :cond_3b
    if-eq v3, v4, :cond_3d

    if-ne v3, v5, :cond_3c

    goto :goto_15

    :cond_3c
    const-string v1, "Unexpected value"

    .line 57
    invoke-virtual {v0, v1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v1, 0x0

    throw v1

    .line 58
    :cond_3d
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    .line 59
    iget v1, v0, Lw6/a;->d:I

    sub-int/2addr v1, v4

    iput v1, v0, Lw6/a;->d:I

    const/4 v1, 0x7

    .line 60
    iput v1, v0, Lw6/a;->h:I

    return v1

    .line 61
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    const/16 v1, 0x8

    .line 62
    iput v1, v0, Lw6/a;->h:I

    return v1

    :cond_3f
    const/16 v1, 0x9

    .line 63
    iput v1, v0, Lw6/a;->h:I

    return v1

    .line 64
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    :goto_16
    sub-int/2addr v2, v4

    const/4 v6, 0x4

    .line 65
    aput v6, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v14, :cond_44

    .line 66
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    move-result v2

    if-eq v2, v9, :cond_44

    if-eq v2, v8, :cond_43

    if-ne v2, v1, :cond_42

    .line 67
    iput v5, v0, Lw6/a;->h:I

    return v5

    :cond_42
    const-string v1, "Unterminated object"

    .line 68
    invoke-virtual {v0, v1}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v1, 0x0

    throw v1

    .line 69
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    .line 70
    :cond_44
    invoke-virtual {v0, v4}, Lw6/a;->L(Z)I

    move-result v2

    const/16 v6, 0x22

    if-eq v2, v6, :cond_49

    const/16 v6, 0x27

    if-eq v2, v6, :cond_48

    const-string v6, "Expected name"

    if-eq v2, v1, :cond_46

    .line 71
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    .line 72
    iget v1, v0, Lw6/a;->d:I

    sub-int/2addr v1, v4

    iput v1, v0, Lw6/a;->d:I

    int-to-char v1, v2

    .line 73
    invoke-virtual {v0, v1}, Lw6/a;->B(C)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xe

    .line 74
    iput v1, v0, Lw6/a;->h:I

    return v1

    .line 75
    :cond_45
    invoke-virtual {v0, v6}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    const/4 v1, 0x0

    throw v1

    :cond_46
    const/4 v1, 0x0

    if-eq v3, v14, :cond_47

    .line 76
    iput v5, v0, Lw6/a;->h:I

    return v5

    .line 77
    :cond_47
    invoke-virtual {v0, v6}, Lw6/a;->c0(Ljava/lang/String;)Ljava/io/IOException;

    throw v1

    .line 78
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lw6/a;->l()V

    const/16 v1, 0xc

    .line 79
    iput v1, v0, Lw6/a;->h:I

    return v1

    :cond_49
    const/16 v1, 0xd

    .line 80
    iput v1, v0, Lw6/a;->h:I

    return v1
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lw6/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw6/a;->m:I

    .line 4
    iget-object v1, p0, Lw6/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lw6/a;->h:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected END_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lw6/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw6/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lw6/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw6/a;->m:I

    .line 4
    iget-object v1, p0, Lw6/a;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5
    iget-object v1, p0, Lw6/a;->o:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lw6/a;->h:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected END_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw6/a;->Z()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/b;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw6/a;->c:[C

    .line 2
    iget v1, p0, Lw6/a;->g:I

    iget v2, p0, Lw6/a;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lw6/a;->g:I

    .line 3
    iget v1, p0, Lw6/a;->e:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lw6/a;->e:I

    .line 5
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_0
    iput v3, p0, Lw6/a;->e:I

    .line 7
    :goto_0
    iput v3, p0, Lw6/a;->d:I

    .line 8
    :cond_1
    iget-object v1, p0, Lw6/a;->a:Ljava/io/Reader;

    iget v2, p0, Lw6/a;->e:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 9
    iget v2, p0, Lw6/a;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lw6/a;->e:I

    .line 10
    iget v1, p0, Lw6/a;->f:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lw6/a;->g:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 11
    iget v5, p0, Lw6/a;->d:I

    add-int/2addr v5, v4

    iput v5, p0, Lw6/a;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, p0, Lw6/a;->g:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lw6/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw6/a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
