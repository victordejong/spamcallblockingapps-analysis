.class public final Lcom/google/android/exoplayer2/text/a/b;
.super Lcom/google/android/exoplayer2/text/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/a/b$a;,
        Lcom/google/android/exoplayer2/text/a/b$b;,
        Lcom/google/android/exoplayer2/text/a/b$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/util/t;

.field private c:I

.field private final d:Z

.field private final e:I

.field private final f:[Lcom/google/android/exoplayer2/text/a/b$b;

.field private g:Lcom/google/android/exoplayer2/text/a/b$b;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/text/a/b$c;

.field private k:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/c;-><init>()V

    .line 165
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b;->c:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 168
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/a/b;->e:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 171
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/d;->a(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/a/b;->d:Z

    const/16 p2, 0x8

    new-array v0, p2, [Lcom/google/android/exoplayer2/text/a/b$b;

    .line 173
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 175
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    new-instance v2, Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/a/b$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    return-void
.end method

.method private a(I)V
    .locals 3

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 396
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    .line 402
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid C0 command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    .line 389
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 386
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->n()V

    return-void

    .line 383
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/a/b$b;->d()V

    return-void

    .line 380
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->m()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->h:Ljava/util/List;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x10

    const/4 v3, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v1, :pswitch_data_0

    .line 519
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid C1 command: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cea708Decoder"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit16 v1, v1, -0x98

    .line 9752
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v2, v2, v1

    .line 9756
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 9757
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v10

    .line 9758
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v11

    .line 9759
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/t;->e()Z

    .line 9760
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    .line 9762
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v13

    .line 9763
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v14

    .line 9765
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v7

    .line 9767
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v15, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v15

    .line 9768
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 9770
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 9771
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 9773
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 9774
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 9775
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 10000
    iput-boolean v8, v2, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    .line 10001
    iput-boolean v10, v2, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    .line 10002
    iput-boolean v11, v2, Lcom/google/android/exoplayer2/text/a/b$b;->p:Z

    .line 10003
    iput v12, v2, Lcom/google/android/exoplayer2/text/a/b$b;->j:I

    .line 10004
    iput-boolean v13, v2, Lcom/google/android/exoplayer2/text/a/b$b;->k:Z

    .line 10005
    iput v14, v2, Lcom/google/android/exoplayer2/text/a/b$b;->l:I

    .line 10006
    iput v7, v2, Lcom/google/android/exoplayer2/text/a/b$b;->m:I

    .line 10007
    iput v15, v2, Lcom/google/android/exoplayer2/text/a/b$b;->n:I

    .line 10010
    iget v6, v2, Lcom/google/android/exoplayer2/text/a/b$b;->o:I

    add-int/2addr v4, v8

    if-eq v6, v4, :cond_2

    .line 10011
    iput v4, v2, Lcom/google/android/exoplayer2/text/a/b$b;->o:I

    :goto_0
    if-eqz v11, :cond_0

    .line 10014
    iget-object v4, v2, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v6, v2, Lcom/google/android/exoplayer2/text/a/b$b;->o:I

    if-ge v4, v6, :cond_1

    :cond_0
    iget-object v4, v2, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    .line 10015
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0xf

    if-lt v4, v6, :cond_2

    .line 10016
    :cond_1
    iget-object v4, v2, Lcom/google/android/exoplayer2/text/a/b$b;->g:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 10022
    iget v4, v2, Lcom/google/android/exoplayer2/text/a/b$b;->q:I

    if-eq v4, v3, :cond_3

    .line 10023
    iput v3, v2, Lcom/google/android/exoplayer2/text/a/b$b;->q:I

    sub-int/2addr v3, v8

    .line 10027
    sget-object v4, Lcom/google/android/exoplayer2/text/a/b$b;->e:[I

    aget v4, v4, v3

    sget-object v6, Lcom/google/android/exoplayer2/text/a/b$b;->d:[I

    aget v3, v6, v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/text/a/b$b;->a(II)V

    :cond_3
    if-eqz v5, :cond_4

    .line 10034
    iget v3, v2, Lcom/google/android/exoplayer2/text/a/b$b;->r:I

    if-eq v3, v5, :cond_4

    .line 10035
    iput v5, v2, Lcom/google/android/exoplayer2/text/a/b$b;->r:I

    sub-int/2addr v5, v8

    const/4 v3, 0x0

    .line 10040
    invoke-virtual {v2, v3, v3}, Lcom/google/android/exoplayer2/text/a/b$b;->a(ZZ)V

    .line 10042
    sget v3, Lcom/google/android/exoplayer2/text/a/b$b;->a:I

    sget-object v4, Lcom/google/android/exoplayer2/text/a/b$b;->f:[I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/text/a/b$b;->b(II)V

    .line 513
    :cond_4
    iget v2, v0, Lcom/google/android/exoplayer2/text/a/b;->k:I

    if-eq v2, v1, :cond_14

    .line 514
    iput v1, v0, Lcom/google/android/exoplayer2/text/a/b;->k:I

    .line 515
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    return-void

    .line 495
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 8986
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    if-nez v1, :cond_5

    .line 497
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    .line 9718
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 9719
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 9720
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 9721
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 9722
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v1

    .line 9724
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 9725
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 9726
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 9727
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 9728
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/text/a/b$b;->a(III)I

    .line 9730
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    .line 9733
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    .line 9734
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 9735
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 9736
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 9739
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 9741
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/a/b$b;->a(II)V

    return-void

    .line 487
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 6986
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    if-nez v1, :cond_6

    .line 489
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    .line 7706
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 7707
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 7709
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 7710
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 7712
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 8123
    iget v3, v2, Lcom/google/android/exoplayer2/text/a/b$b;->s:I

    if-eq v3, v1, :cond_7

    const/16 v3, 0xa

    .line 8124
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    .line 8126
    :cond_7
    iput v1, v2, Lcom/google/android/exoplayer2/text/a/b$b;->s:I

    return-void

    .line 479
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 5986
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    if-nez v1, :cond_8

    .line 481
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    .line 6680
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 6681
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 6682
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 6683
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 6685
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v1

    .line 6687
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 6688
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 6689
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 6690
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 6692
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/text/a/b$b;->a(IIII)I

    move-result v2

    .line 6694
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 6695
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 6696
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 6697
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 6698
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/text/a/b$b;->a(III)I

    .line 6700
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/a/b$b;->b(II)V

    return-void

    .line 471
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 4986
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/a/b$b;->h:Z

    if-nez v1, :cond_9

    .line 473
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    .line 5664
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 5665
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 5666
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 5668
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    .line 5669
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    .line 5670
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 5671
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    .line 5673
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/text/a/b$b;->a(ZZ)V

    return-void

    .line 468
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/a/b;->n()V

    :pswitch_7
    return-void

    .line 462
    :pswitch_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :goto_1
    :pswitch_9
    if-gt v8, v7, :cond_b

    .line 455
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 456
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/b$b;->b()V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_b
    return-void

    :pswitch_a
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v7, :cond_d

    .line 447
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 448
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    rsub-int/lit8 v3, v1, 0x8

    aget-object v2, v2, v3

    .line 2994
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    xor-int/2addr v3, v8

    .line 3990
    iput-boolean v3, v2, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void

    :goto_3
    :pswitch_b
    if-gt v8, v7, :cond_f

    .line 440
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 441
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 2990
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_f
    return-void

    :pswitch_c
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v7, :cond_11

    .line 433
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 434
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    rsub-int/lit8 v3, v1, 0x8

    aget-object v2, v2, v3

    .line 1990
    iput-boolean v8, v2, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void

    :goto_6
    :pswitch_d
    if-gt v8, v7, :cond_13

    .line 426
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 427
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/b$b;->c()V

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    return-void

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 419
    iget v2, v0, Lcom/google/android/exoplayer2/text/a/b;->k:I

    if-eq v2, v1, :cond_14

    .line 420
    iput v1, v0, Lcom/google/android/exoplayer2/text/a/b;->k:I

    .line 421
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    :cond_14
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 528
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    .line 530
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :cond_1
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 532
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 539
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 541
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    return-void

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 546
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 547
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_2
    return-void
.end method

.method private e(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 554
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void
.end method

.method private f(I)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void
.end method

.method private g(I)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 645
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid G2 character: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 642
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 639
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 636
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 633
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 630
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 627
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 624
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 621
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 618
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 615
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 597
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 594
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 591
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 588
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 585
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 582
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 606
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 603
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 600
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 612
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 579
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 576
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 573
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 570
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 567
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(I)V
    .locals 1

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 653
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void

    .line 655
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid G3 character: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/a/b$b;->a(C)V

    return-void
.end method

.method private i()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->l()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    return-void
.end method

.method private l()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v0, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->b:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->b:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->a()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->c:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v4, v4, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/util/t;->a([BI)V

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    const/4 v4, 0x7

    const-string v5, "Cea708Decoder"

    if-ne v0, v4, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Invalid extended service number: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serviceNumber is non-zero ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 323
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b;->e:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/t;->a()I

    move-result v1

    if-lez v1, :cond_e

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    const/16 v4, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v4, :cond_9

    if-gt v1, v9, :cond_5

    .line 336
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->a(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v8, :cond_6

    .line 339
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->e(I)V

    goto :goto_1

    :cond_6
    if-gt v1, v7, :cond_7

    .line 342
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->b(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v6, :cond_8

    .line 345
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->f(I)V

    goto :goto_1

    .line 348
    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid base command: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    if-gt v1, v9, :cond_a

    .line 354
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->c(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v8, :cond_b

    .line 356
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->g(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    if-gt v1, v7, :cond_c

    .line 359
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->d(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v6, :cond_d

    .line 361
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/a/b;->h(I)V

    goto :goto_1

    .line 364
    :cond_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid extended command: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 370
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->h:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 795
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/a/b$b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v3, v3, v2

    .line 10994
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/text/a/b$b;->i:Z

    if-eqz v3, :cond_0

    .line 796
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/a/b$b;->e()Lcom/google/android/exoplayer2/text/a/b$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 798
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/text/a/b$a;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 804
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 805
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/a/b$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/a/b$a;->a:Lcom/google/android/exoplayer2/text/b;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/a/b$b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/a/c;->a(J)V

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/text/h;)V
    .locals 8

    .line 211
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/h;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 215
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 220
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v5

    int-to-byte v5, v5

    .line 221
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/a/b;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-ne v1, v0, :cond_0

    :cond_2
    if-eqz p1, :cond_0

    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_5

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->i()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 237
    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b;->c:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->n()V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sequence number discontinuity. previous="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/exoplayer2/text/a/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_3
    iput v0, p0, Lcom/google/android/exoplayer2/text/a/b;->c:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_4

    const/16 p1, 0x40

    .line 254
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/text/a/b$c;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/text/a/b$c;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    .line 255
    iget-object p1, v1, Lcom/google/android/exoplayer2/text/a/b$c;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    aput-byte v6, p1, v1

    goto :goto_2

    :cond_5
    if-ne v1, v7, :cond_6

    const/4 v3, 0x1

    .line 258
    :cond_6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    if-nez v0, :cond_7

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 261
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_7
    iget-object p1, v0, Lcom/google/android/exoplayer2/text/a/b$c;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    aput-byte v5, p1, v1

    .line 266
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/a/b$c;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v1, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    aput-byte v6, p1, v1

    .line 269
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget p1, p1, Lcom/google/android/exoplayer2/text/a/b$c;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    iget v0, v0, Lcom/google/android/exoplayer2/text/a/b$c;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->i()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/exoplayer2/text/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/a/c;->b(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/c;->c()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->h:Ljava/util/List;

    .line 190
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->i:Ljava/util/List;

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lcom/google/android/exoplayer2/text/a/b;->k:I

    .line 192
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/b;->f:[Lcom/google/android/exoplayer2/text/a/b$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->g:Lcom/google/android/exoplayer2/text/a/b$b;

    .line 193
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/a/b;->n()V

    .line 194
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->j:Lcom/google/android/exoplayer2/text/a/b$c;

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/c;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/exoplayer2/text/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/c;->e()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/b;->i:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final g()Lcom/google/android/exoplayer2/text/e;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/b;->i:Ljava/util/List;

    .line 205
    new-instance v1, Lcom/google/android/exoplayer2/text/a/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/a/d;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final bridge synthetic h()Lcom/google/android/exoplayer2/text/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/a/c;->h()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method
