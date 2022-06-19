.class public final Lcom/google/android/exoplayer2/c1/d0/r;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/d0/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c1/d0/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c1/d0/c0;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/c1/v;

.field private d:Lcom/google/android/exoplayer2/c1/d0/r$a;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/google/android/exoplayer2/c1/d0/v;

.field private final h:Lcom/google/android/exoplayer2/c1/d0/v;

.field private final i:Lcom/google/android/exoplayer2/c1/d0/v;

.field private final j:Lcom/google/android/exoplayer2/c1/d0/v;

.field private final k:Lcom/google/android/exoplayer2/c1/d0/v;

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/exoplayer2/util/v;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c1/d0/c0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->a:Lcom/google/android/exoplayer2/c1/d0/c0;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->f:[Z

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/v;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/v;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/v;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/v;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/v;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/v;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/v;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/v;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/v;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/v;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    return-void
.end method

.method private a(JIIJ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->d:Lcom/google/android/exoplayer2/c1/d0/r$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/r$a;->a(JI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->b(I)Z

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->b(I)Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->b(I)Z

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c1/d0/v;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c1/d0/v;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c1/d0/v;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->c:Lcom/google/android/exoplayer2/c1/v;

    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/r;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-static {p2, p3, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/r;->h(Ljava/lang/String;Lcom/google/android/exoplayer2/c1/d0/v;Lcom/google/android/exoplayer2/c1/d0/v;Lcom/google/android/exoplayer2/c1/d0/v;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->e:Z

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object p3, p1, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    iget p1, p1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/s;->k([BI)I

    move-result p1

    .line 11
    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->a:Lcom/google/android/exoplayer2/c1/d0/c0;

    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p5, p6, p3}, Lcom/google/android/exoplayer2/c1/d0/c0;->a(JLcom/google/android/exoplayer2/util/v;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object p3, p1, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    iget p1, p1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/s;->k([BI)I

    move-result p1

    .line 16
    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    iget-object p4, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    iget-object p4, p4, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    invoke-virtual {p3, p4, p1}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->a:Lcom/google/android/exoplayer2/c1/d0/c0;

    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/r;->n:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p5, p6, p2}, Lcom/google/android/exoplayer2/c1/d0/c0;->a(JLcom/google/android/exoplayer2/util/v;)V

    :cond_3
    return-void
.end method

.method private g([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->d:Lcom/google/android/exoplayer2/c1/d0/r$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/r$a;->c([BII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/v;->a([BII)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/v;->a([BII)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/v;->a([BII)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/v;->a([BII)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c1/d0/v;->a([BII)V

    return-void
.end method

.method private static h(Ljava/lang/String;Lcom/google/android/exoplayer2/c1/d0/v;Lcom/google/android/exoplayer2/c1/d0/v;Lcom/google/android/exoplayer2/c1/d0/v;)Lcom/google/android/exoplayer2/Format;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget v3, v0, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    iget v4, v1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    add-int/2addr v4, v3

    iget v5, v2, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 2
    iget-object v5, v0, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v3, v1, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    iget v5, v0, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    iget v7, v1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v3, v2, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    iget v0, v0, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    iget v5, v1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/w;

    iget-object v2, v1, Lcom/google/android/exoplayer2/c1/d0/v;->d:[B

    iget v1, v1, Lcom/google/android/exoplayer2/c1/d0/v;->e:I

    invoke-direct {v0, v2, v6, v1}, Lcom/google/android/exoplayer2/util/w;-><init>([BII)V

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/w;->e(I)I

    move-result v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->k()V

    const/16 v3, 0x58

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    const/16 v3, 0x8

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    .line 14
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->k()V

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v1

    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v8

    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v9

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v11

    .line 23
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v12

    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v1

    .line 28
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    if-gt v7, v2, :cond_a

    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 38
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 39
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/d0/r;->i(Lcom/google/android/exoplayer2/util/w;)V

    .line 41
    :cond_b
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 45
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->k()V

    .line 47
    :cond_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/c1/d0/r;->j(Lcom/google/android/exoplayer2/util/w;)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 49
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 50
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 51
    :cond_d
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/w;->l(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 54
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/w;->e(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_f

    const/16 v2, 0x10

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/w;->e(I)I

    move-result v3

    .line 56
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/w;->e(I)I

    move-result v0

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v21, v1

    goto :goto_6

    .line 57
    :cond_f
    sget-object v0, Lcom/google/android/exoplayer2/util/s;->b:[F

    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 58
    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_6

    .line 59
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_6
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 60
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    .line 61
    invoke-static/range {v11 .. v22}, Lcom/google/android/exoplayer2/Format;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/w;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 3
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->g()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->g()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static j(Lcom/google/android/exoplayer2/util/w;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->k()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->k()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->k()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->h()I

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/w;->k()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private k(JIIJ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->d:Lcom/google/android/exoplayer2/c1/d0/r$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/c1/d0/r$a;->e(JIIJ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->e(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->e(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->e(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->e(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/c1/d0/v;->e(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/v;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v9

    .line 4
    iget-object v10, v8, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 5
    iget-wide v1, v7, Lcom/google/android/exoplayer2/c1/d0/r;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/exoplayer2/c1/d0/r;->l:J

    .line 6
    iget-object v1, v7, Lcom/google/android/exoplayer2/c1/d0/r;->c:Lcom/google/android/exoplayer2/c1/v;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    .line 7
    iget-object v1, v7, Lcom/google/android/exoplayer2/c1/d0/r;->f:[Z

    invoke-static {v10, v0, v9, v1}, Lcom/google/android/exoplayer2/util/s;->c([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    .line 8
    invoke-direct {v7, v10, v0, v9}, Lcom/google/android/exoplayer2/c1/d0/r;->g([BII)V

    return-void

    .line 9
    :cond_1
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/s;->e([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 10
    invoke-direct {v7, v10, v0, v11}, Lcom/google/android/exoplayer2/c1/d0/r;->g([BII)V

    :cond_2
    sub-int v13, v9, v11

    .line 11
    iget-wide v2, v7, Lcom/google/android/exoplayer2/c1/d0/r;->l:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_1
    iget-wide v5, v7, Lcom/google/android/exoplayer2/c1/d0/r;->m:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/c1/d0/r;->a(JIIJ)V

    .line 13
    iget-wide v5, v7, Lcom/google/android/exoplayer2/c1/d0/r;->m:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/c1/d0/r;->k(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->f:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a([Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->g:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/v;->d()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->h:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/v;->d()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->i:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/v;->d()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->j:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/v;->d()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->k:Lcom/google/android/exoplayer2/c1/d0/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/v;->d()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->d:Lcom/google/android/exoplayer2/c1/d0/r$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/r$a;->d()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->l:J

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->c:Lcom/google/android/exoplayer2/c1/v;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/c1/d0/r$a;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/c1/d0/r$a;-><init>(Lcom/google/android/exoplayer2/c1/v;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->d:Lcom/google/android/exoplayer2/c1/d0/r$a;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/r;->a:Lcom/google/android/exoplayer2/c1/d0/c0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/d0/c0;->b(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V

    return-void
.end method

.method public f(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/d0/r;->m:J

    return-void
.end method
