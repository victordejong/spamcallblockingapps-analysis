.class public final Landroidx/media2/exoplayer/external/text/a/c;
.super Landroidx/media2/exoplayer/external/text/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/a/c$a;,
        Landroidx/media2/exoplayer/external/text/a/c$b;
    }
.end annotation


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/util/o;

.field private final d:I

.field private final e:[Landroidx/media2/exoplayer/external/text/a/c$a;

.field private f:Landroidx/media2/exoplayer/external/text/a/c$a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroidx/media2/exoplayer/external/text/a/c$b;

.field private j:I


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

    .line 161
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/d;-><init>()V

    .line 162
    new-instance p2, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 163
    new-instance p2, Landroidx/media2/exoplayer/external/util/o;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/util/o;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 164
    :cond_0
    iput p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->d:I

    const/16 p1, 0x8

    new-array p2, p1, [Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 166
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 168
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    new-instance v2, Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/text/a/c$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object p1, p1, p2

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 172
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->l()V

    return-void
.end method

.method private a(I)V
    .locals 4

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

    const/16 v1, 0x37

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x18

    const/16 v1, 0x1f

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    const/16 v0, 0x36

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_0
    return-void

    .line 361
    :pswitch_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 358
    :pswitch_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->l()V

    return-void

    .line 355
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/a/c$a;->d()V

    return-void

    .line 352
    :cond_3
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->g:Ljava/util/List;

    :cond_4
    return-void

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

    :pswitch_0
    const/16 v2, 0x1f

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid C1 command: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cea708Decoder"

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit16 v1, v1, -0x98

    .line 9718
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v2, v2, v1

    .line 9722
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 9723
    iget-object v10, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v10

    .line 9724
    iget-object v11, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v11

    .line 9725
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    .line 9726
    iget-object v12, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v12

    .line 9728
    iget-object v13, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v13

    .line 9729
    iget-object v14, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    .line 9731
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v15, v7}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    .line 9733
    iget-object v15, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v15, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v15

    .line 9734
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 9736
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 9737
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 9739
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 9740
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 9741
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 9948
    iput-boolean v8, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->h:Z

    .line 9949
    iput-boolean v10, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

    .line 9950
    iput-boolean v11, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->p:Z

    .line 9951
    iput v12, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->j:I

    .line 9952
    iput-boolean v13, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->k:Z

    .line 9953
    iput v14, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->l:I

    .line 9954
    iput v7, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->m:I

    .line 9955
    iput v15, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->n:I

    .line 9958
    iget v6, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->o:I

    add-int/2addr v4, v8

    if-eq v6, v4, :cond_2

    .line 9959
    iput v4, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->o:I

    :goto_0
    if-eqz v11, :cond_0

    .line 9962
    iget-object v4, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v6, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->o:I

    if-ge v4, v6, :cond_1

    :cond_0
    iget-object v4, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->g:Ljava/util/List;

    .line 9963
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0xf

    if-lt v4, v6, :cond_2

    .line 9964
    :cond_1
    iget-object v4, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->g:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 9970
    iget v4, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->q:I

    if-eq v4, v3, :cond_3

    .line 9971
    iput v3, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->q:I

    sub-int/2addr v3, v8

    .line 9975
    sget-object v4, Landroidx/media2/exoplayer/external/text/a/c$a;->e:[I

    aget v4, v4, v3

    sget-object v6, Landroidx/media2/exoplayer/external/text/a/c$a;->d:[I

    aget v3, v6, v3

    invoke-virtual {v2, v4, v3}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(II)V

    :cond_3
    if-eqz v5, :cond_4

    .line 9982
    iget v3, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->r:I

    if-eq v3, v5, :cond_4

    .line 9983
    iput v5, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->r:I

    sub-int/2addr v5, v8

    const/4 v3, 0x0

    .line 9988
    invoke-virtual {v2, v3, v3}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(ZZ)V

    .line 9990
    sget v3, Landroidx/media2/exoplayer/external/text/a/c$a;->a:I

    sget-object v4, Landroidx/media2/exoplayer/external/text/a/c$a;->f:[I

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/text/a/c$a;->b(II)V

    .line 485
    :cond_4
    iget v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->j:I

    if-eq v2, v1, :cond_14

    .line 486
    iput v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->j:I

    .line 487
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v1, v2, v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    return-void

    .line 467
    :pswitch_2
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 8934
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/text/a/c$a;->h:Z

    if-nez v1, :cond_5

    .line 469
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    .line 9690
    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    .line 9691
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 9692
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 9693
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 9694
    invoke-static {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(IIII)I

    move-result v1

    .line 9696
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 9697
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 9698
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 9699
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 9700
    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(III)I

    .line 9702
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    .line 9705
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    .line 9706
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 9707
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 9708
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 9711
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 9713
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(II)V

    return-void

    .line 459
    :pswitch_3
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 6934
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/text/a/c$a;->h:Z

    if-nez v1, :cond_6

    .line 461
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    .line 7678
    :cond_6
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 7679
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    .line 7681
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 7682
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 7684
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 8071
    iget v3, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->s:I

    if-eq v3, v1, :cond_7

    const/16 v3, 0xa

    .line 8072
    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    .line 8074
    :cond_7
    iput v1, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->s:I

    return-void

    .line 451
    :pswitch_4
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 5934
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/text/a/c$a;->h:Z

    if-nez v1, :cond_8

    .line 453
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    .line 6652
    :cond_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    .line 6653
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 6654
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 6655
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 6656
    invoke-static {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(IIII)I

    move-result v1

    .line 6659
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v2

    .line 6660
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 6661
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 6662
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 6663
    invoke-static {v3, v4, v5, v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(IIII)I

    move-result v2

    .line 6666
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 6667
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 6668
    iget-object v4, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 6669
    iget-object v5, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    .line 6670
    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(III)I

    .line 6672
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->b(II)V

    return-void

    .line 443
    :pswitch_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 4934
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/text/a/c$a;->h:Z

    if-nez v1, :cond_9

    .line 445
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    .line 5636
    :cond_9
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 5637
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 5638
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 5640
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v1

    .line 5641
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    .line 5642
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 5643
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    .line 5645
    iget-object v3, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(ZZ)V

    return-void

    .line 440
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/text/a/c;->l()V

    :pswitch_7
    return-void

    .line 434
    :pswitch_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :goto_1
    :pswitch_9
    if-gt v8, v7, :cond_b

    .line 427
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 428
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/a/c$a;->b()V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_b
    return-void

    :pswitch_a
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v7, :cond_d

    .line 419
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 420
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    rsub-int/lit8 v3, v1, 0x8

    aget-object v2, v2, v3

    .line 2942
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

    xor-int/2addr v3, v8

    .line 3938
    iput-boolean v3, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void

    :goto_3
    :pswitch_b
    if-gt v8, v7, :cond_f

    .line 412
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 413
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 2938
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

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

    .line 405
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 406
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    rsub-int/lit8 v3, v1, 0x8

    aget-object v2, v2, v3

    .line 1938
    iput-boolean v8, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void

    :goto_6
    :pswitch_d
    if-gt v8, v7, :cond_13

    .line 398
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 399
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    rsub-int/lit8 v2, v8, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/a/c$a;->c()V

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    return-void

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 391
    iget v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->j:I

    if-eq v2, v1, :cond_14

    .line 392
    iput v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->j:I

    .line 393
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v1, v2, v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    :cond_14
    :goto_7
    return-void

    nop

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

    .line 500
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    .line 502
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :cond_1
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 504
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 511
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 513
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    return-void

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 518
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 519
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    .line 520
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    :cond_2
    return-void
.end method

.method private e(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 526
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void
.end method

.method private f(I)V
    .locals 1

    .line 533
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void
.end method

.method private g(I)V
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v1, 0x25

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3f

    if-eq p1, v1, :cond_4

    const/16 v1, 0x39

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid G2 character: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 614
    :pswitch_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 611
    :pswitch_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 608
    :pswitch_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 605
    :pswitch_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 602
    :pswitch_4
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 599
    :pswitch_5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 596
    :pswitch_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 593
    :pswitch_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 590
    :pswitch_8
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 587
    :pswitch_9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 569
    :pswitch_a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 566
    :pswitch_b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 563
    :pswitch_c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 560
    :pswitch_d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 557
    :pswitch_e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 554
    :pswitch_f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 581
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 578
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 575
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 572
    :cond_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 584
    :cond_4
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 551
    :cond_5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 548
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 545
    :cond_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 542
    :cond_8
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    .line 539
    :cond_9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    nop

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
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 625
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void

    :cond_0
    const/16 v0, 0x21

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid G3 character: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$a;->a(C)V

    return-void
.end method

.method private i()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->j()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    return-void
.end method

.method private j()V
    .locals 10

    .line 267
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v1, v1, Landroidx/media2/exoplayer/external/text/a/c$b;->b:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-string v4, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v1, v1, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v2, v2, Landroidx/media2/exoplayer/external/text/a/c$b;->a:I

    const/16 v3, 0x83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but current index is "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (sequence number "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "); ignoring packet"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/text/a/c$b;->c:[B

    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v5, v5, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    invoke-virtual {v0, v1, v5}, Landroidx/media2/exoplayer/external/util/o;->a([BI)V

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    if-ge v0, v5, :cond_1

    const/16 v2, 0x2c

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid extended service number: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v1, 0x3b

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serviceNumber is non-zero ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 295
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->d:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v1

    if-lez v1, :cond_e

    .line 305
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v5, :cond_9

    if-gt v1, v9, :cond_5

    .line 308
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->a(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v8, :cond_6

    .line 311
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->e(I)V

    goto :goto_1

    :cond_6
    if-gt v1, v7, :cond_7

    .line 314
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->b(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v6, :cond_8

    .line 317
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->f(I)V

    goto :goto_1

    :cond_8
    const/16 v2, 0x21

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid base command: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_9
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    if-gt v1, v9, :cond_a

    .line 326
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->c(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v8, :cond_b

    .line 328
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->g(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    if-gt v1, v7, :cond_c

    .line 331
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->d(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v6, :cond_d

    .line 333
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/text/a/c;->h(I)V

    goto :goto_1

    :cond_d
    const/16 v2, 0x25

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid extended command: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 342
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->g:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 750
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v2, v2, v1

    .line 10942
    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/text/a/c$a;->i:Z

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/text/a/c$a;->e()Landroidx/media2/exoplayer/external/text/a/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 755
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 760
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/text/a/c$a;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/text/a/d;->a(J)V

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/text/g;)V
    .locals 7

    .line 206
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 207
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/text/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 208
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_7

    .line 209
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

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

    .line 213
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    int-to-byte v2, v2

    .line 214
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/a/c;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-ne v1, v0, :cond_0

    :cond_2
    if-eqz p1, :cond_0

    if-ne v1, v0, :cond_4

    .line 227
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->i()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_3

    const/16 v0, 0x40

    .line 235
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/text/a/c$b;

    invoke-direct {v1, p1, v0}, Landroidx/media2/exoplayer/external/text/a/c$b;-><init>(II)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    .line 236
    iget-object p1, v1, Landroidx/media2/exoplayer/external/text/a/c$b;->c:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v1, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    aput-byte v5, p1, v1

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_5

    const/4 v3, 0x1

    .line 239
    :cond_5
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 241
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    if-nez p1, :cond_6

    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 242
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_6
    iget-object p1, p1, Landroidx/media2/exoplayer/external/text/a/c$b;->c:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v1, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    aput-byte v2, p1, v1

    .line 247
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/text/a/c$b;->c:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v1, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    aput-byte v5, p1, v1

    .line 250
    :goto_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget p1, p1, Landroidx/media2/exoplayer/external/text/a/c$b;->d:I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    iget v0, v0, Landroidx/media2/exoplayer/external/text/a/c$b;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 251
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->i()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final bridge synthetic b(Landroidx/media2/exoplayer/external/text/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/text/a/d;->b(Landroidx/media2/exoplayer/external/text/g;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 182
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/a/d;->c()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->g:Ljava/util/List;

    .line 184
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 185
    iput v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->j:I

    .line 186
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/c;->e:[Landroidx/media2/exoplayer/external/text/a/c$a;

    aget-object v1, v2, v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->f:Landroidx/media2/exoplayer/external/text/a/c$a;

    .line 187
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/a/c;->l()V

    .line 188
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->i:Landroidx/media2/exoplayer/external/text/a/c$b;

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/a/d;->d()V

    return-void
.end method

.method protected final e()Z
    .locals 2

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->g:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/c;->h:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Landroidx/media2/exoplayer/external/text/d;
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->g:Ljava/util/List;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/c;->h:Ljava/util/List;

    .line 199
    new-instance v1, Landroidx/media2/exoplayer/external/text/a/e;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/text/a/e;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final bridge synthetic g()Landroidx/media2/exoplayer/external/text/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/a/d;->g()Landroidx/media2/exoplayer/external/text/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/media2/exoplayer/external/text/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Landroidx/media2/exoplayer/external/text/a/d;->h()Landroidx/media2/exoplayer/external/text/g;

    move-result-object v0

    return-object v0
.end method
