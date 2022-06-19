.class final Lcom/google/android/exoplayer2/extractor/d/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/d/d;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/d/d;)V
    .locals 0

    .line 1867
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/d/d;Lcom/google/android/exoplayer2/extractor/d/d$1;)V
    .locals 0

    .line 1867
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/d/d;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1872
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/d/d;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 19080
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->u:F

    :goto_0
    return-void

    .line 19077
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    return-void

    .line 19074
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->s:F

    return-void

    .line 19071
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->M:F

    return-void

    .line 19068
    :pswitch_4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->L:F

    return-void

    .line 19065
    :pswitch_5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->K:F

    return-void

    .line 19062
    :pswitch_6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->J:F

    return-void

    .line 19059
    :pswitch_7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->I:F

    return-void

    .line 19056
    :pswitch_8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->H:F

    return-void

    .line 19053
    :pswitch_9
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->G:F

    return-void

    .line 19050
    :pswitch_a
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->F:F

    return-void

    .line 19047
    :pswitch_b
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->E:F

    return-void

    .line 19044
    :pswitch_c
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->D:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 19038
    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->m:J

    return-void

    .line 19041
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->Q:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILcom/google/android/exoplayer2/extractor/i;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1908
    iget-object v11, v2, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_a

    const/16 v4, 0xa5

    if-eq v0, v4, :cond_8

    const/16 v4, 0x41ed

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4255

    if-eq v0, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v0, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v0, v4, :cond_0

    .line 20138
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 20139
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    new-array v4, v1, [B

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->v:[B

    .line 20140
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->v:[B

    invoke-interface {v3, v0, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void

    .line 20302
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unexpected id: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20133
    :cond_1
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 20134
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    new-array v4, v1, [B

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->k:[B

    .line 20135
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->k:[B

    invoke-interface {v3, v0, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void

    .line 20124
    :cond_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->h:Lcom/google/android/exoplayer2/util/u;

    .line 21169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20124
    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 20125
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->h:Lcom/google/android/exoplayer2/util/u;

    .line 22169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    rsub-int/lit8 v4, v1, 0x4

    .line 20125
    invoke-interface {v3, v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 20126
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->h:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 20127
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->h:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v11, Lcom/google/android/exoplayer2/extractor/d/d;->q:I

    return-void

    .line 20149
    :cond_3
    new-array v4, v1, [B

    .line 20150
    invoke-interface {v3, v4, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 20151
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/extractor/x$a;

    invoke-direct {v1, v13, v4, v12, v12}, Lcom/google/android/exoplayer2/extractor/x$a;-><init>(I[BII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->j:Lcom/google/android/exoplayer2/extractor/x$a;

    return-void

    .line 20143
    :cond_4
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 20145
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    new-array v4, v1, [B

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    .line 20146
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    invoke-interface {v3, v0, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void

    .line 20130
    :cond_5
    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object v0

    .line 22976
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->g:I

    const v5, 0x64767643

    if-eq v4, v5, :cond_7

    .line 23976
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->g:I

    const v5, 0x64766343

    if-ne v4, v5, :cond_6

    goto :goto_0

    .line 22314
    :cond_6
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return-void

    .line 22310
    :cond_7
    :goto_0
    new-array v4, v1, [B

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->N:[B

    .line 22311
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->N:[B

    invoke-interface {v3, v0, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void

    .line 20295
    :cond_8
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    if-ne v0, v7, :cond_20

    .line 20298
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->E:I

    .line 20299
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->H:I

    if-ne v4, v6, :cond_9

    .line 34321
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v4, "V_VP9"

    .line 34322
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34323
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 34324
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    .line 35169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 34324
    invoke-interface {v3, v0, v12, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    return-void

    .line 34327
    :cond_9
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return-void

    .line 20162
    :cond_a
    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    const/16 v8, 0x8

    if-nez v4, :cond_b

    .line 20163
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->d:Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-virtual {v4, v3, v12, v13, v8}, Lcom/google/android/exoplayer2/extractor/d/f;->a(Lcom/google/android/exoplayer2/extractor/i;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->E:I

    .line 20164
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->d:Lcom/google/android/exoplayer2/extractor/d/f;

    .line 24117
    iget v4, v4, Lcom/google/android/exoplayer2/extractor/d/f;->a:I

    .line 20164
    iput v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 20165
    iput-wide v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->A:J

    .line 20166
    iput v13, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    .line 20167
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 20170
    :cond_b
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->E:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/exoplayer2/extractor/d/d$b;

    if-nez v14, :cond_c

    .line 20174
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 20175
    iput v12, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    return-void

    .line 24976
    :cond_c
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a()V

    .line 20181
    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    if-ne v4, v13, :cond_1d

    const/4 v4, 0x3

    .line 20183
    invoke-virtual {v11, v3, v4}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;I)V

    .line 20184
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 25169
    iget-object v9, v9, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20184
    aget-byte v9, v9, v7

    and-int/lit8 v9, v9, 0x6

    shr-int/2addr v9, v13

    const/16 v10, 0xff

    if-nez v9, :cond_d

    .line 20186
    iput v13, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    .line 20187
    iget-object v6, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/extractor/d/d;->a([II)[I

    move-result-object v6

    iput-object v6, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    .line 20188
    iget-object v6, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v4

    aput v1, v6, v12

    :goto_1
    move-object/from16 v19, v14

    goto/16 :goto_8

    .line 20191
    :cond_d
    invoke-virtual {v11, v3, v6}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;I)V

    .line 20192
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 26169
    iget-object v15, v15, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20192
    aget-byte v15, v15, v4

    and-int/2addr v15, v10

    add-int/2addr v15, v13

    iput v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    .line 20193
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v5, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    invoke-static {v15, v5}, Lcom/google/android/exoplayer2/extractor/d/d;->a([II)[I

    move-result-object v5

    iput-object v5, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    if-ne v9, v7, :cond_e

    .line 20195
    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v6

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    div-int/2addr v1, v4

    .line 20197
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v5, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    invoke-static {v4, v12, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_e
    if-ne v9, v13, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20201
    :goto_2
    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    sub-int/2addr v9, v13

    if-ge v4, v9, :cond_10

    .line 20202
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aput v12, v9, v4

    :cond_f
    add-int/2addr v6, v13

    .line 20205
    invoke-virtual {v11, v3, v6}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;I)V

    .line 20206
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 27169
    iget-object v9, v9, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v15, v6, -0x1

    .line 20206
    aget-byte v9, v9, v15

    and-int/2addr v9, v10

    .line 20207
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aget v16, v15, v4

    add-int v16, v16, v9

    aput v16, v15, v4

    if-eq v9, v10, :cond_f

    .line 20209
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aget v9, v9, v4

    add-int/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20211
    :cond_10
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    sub-int/2addr v9, v13

    iget v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    aput v1, v4, v9

    goto :goto_1

    :cond_11
    if-ne v9, v4, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 20216
    :goto_3
    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    sub-int/2addr v9, v13

    if-ge v4, v9, :cond_19

    .line 20217
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aput v12, v9, v4

    add-int/lit8 v6, v6, 0x1

    .line 20218
    invoke-virtual {v11, v3, v6}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;I)V

    .line 20219
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 28169
    iget-object v9, v9, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v15, v6, -0x1

    .line 20219
    aget-byte v9, v9, v15

    if-eqz v9, :cond_18

    const-wide/16 v16, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_14

    rsub-int/lit8 v18, v9, 0x7

    shl-int v7, v13, v18

    .line 20225
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 29169
    iget-object v12, v12, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20225
    aget-byte v12, v12, v15

    and-int/2addr v12, v7

    if-eqz v12, :cond_13

    add-int/2addr v6, v9

    .line 20228
    invoke-virtual {v11, v3, v6}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;I)V

    .line 20229
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 30169
    iget-object v12, v12, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v16, v15, 0x1

    .line 20229
    aget-byte v12, v12, v15

    and-int/2addr v12, v10

    not-int v7, v7

    and-int/2addr v7, v12

    move-object/from16 v19, v14

    int-to-long v13, v7

    move/from16 v7, v16

    move-wide/from16 v16, v13

    :goto_5
    if-ge v7, v6, :cond_12

    shl-long v13, v16, v8

    .line 20232
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 31169
    iget-object v15, v15, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v16, v7, 0x1

    .line 20232
    aget-byte v7, v15, v7

    and-int/2addr v7, v10

    move-object/from16 v20, v11

    int-to-long v10, v7

    or-long/2addr v10, v13

    move/from16 v7, v16

    move-wide/from16 v16, v10

    move-object/from16 v11, v20

    const/16 v10, 0xff

    goto :goto_5

    :cond_12
    move-object/from16 v20, v11

    if-lez v4, :cond_15

    mul-int/lit8 v9, v9, 0x7

    add-int/lit8 v9, v9, 0x6

    const-wide/16 v10, 0x1

    shl-long v13, v10, v9

    sub-long/2addr v13, v10

    sub-long v16, v16, v13

    goto :goto_6

    :cond_13
    move-object/from16 v20, v11

    move-object/from16 v19, v14

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x2

    const/16 v10, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_4

    :cond_14
    move-object/from16 v20, v11

    move-object/from16 v19, v14

    :cond_15
    :goto_6
    move-wide/from16 v9, v16

    const-wide/32 v13, -0x80000000

    cmp-long v7, v9, v13

    if-ltz v7, :cond_17

    const-wide/32 v13, 0x7fffffff

    cmp-long v7, v9, v13

    if-gtz v7, :cond_17

    long-to-int v7, v9

    move-object/from16 v11, v20

    .line 20245
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    if-nez v4, :cond_16

    goto :goto_7

    .line 20248
    :cond_16
    iget-object v10, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    add-int/lit8 v13, v4, -0x1

    aget v10, v10, v13

    add-int/2addr v7, v10

    :goto_7
    aput v7, v9, v4

    .line 20249
    iget-object v7, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aget v7, v7, v4

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v14, v19

    const/4 v7, 0x2

    const/16 v10, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 20242
    :cond_17
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20220
    :cond_18
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v19, v14

    .line 20251
    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v7, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    iget v9, v11, Lcom/google/android/exoplayer2/extractor/d/d;->F:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    aput v1, v4, v7

    .line 20259
    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 32169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v4, 0x0

    .line 20259
    aget-byte v1, v1, v4

    shl-int/2addr v1, v8

    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 33169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v5, 0x1

    .line 20259
    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 20260
    iget-wide v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->u:J

    int-to-long v6, v1

    invoke-virtual {v11, v6, v7}, Lcom/google/android/exoplayer2/extractor/d/d;->a(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->z:J

    move-object/from16 v1, v19

    .line 20261
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->d:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1b

    const/16 v4, 0xa3

    if-ne v0, v4, :cond_1a

    iget-object v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 34169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 20263
    aget-byte v4, v4, v5

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v4, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v4, 0x1

    .line 20264
    :goto_a
    iput v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    const/4 v4, 0x2

    .line 20265
    iput v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    const/4 v4, 0x0

    .line 20266
    iput v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    goto :goto_b

    .line 20255
    :cond_1c
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unexpected lacing value: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object v1, v14

    :goto_b
    const/16 v4, 0xa3

    if-ne v0, v4, :cond_1f

    .line 20272
    :goto_c
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    if-ge v0, v4, :cond_1e

    .line 20273
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    aget v0, v0, v4

    invoke-virtual {v11, v3, v1, v0}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/d/d$b;I)I

    move-result v9

    .line 20274
    iget-wide v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->z:J

    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->e:I

    mul-int v0, v0, v6

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v6, v4

    .line 20276
    iget v8, v11, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v1

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/d/d$b;JIII)V

    .line 20277
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    .line 20279
    iput v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    return-void

    .line 20286
    :cond_1f
    :goto_d
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    if-ge v0, v4, :cond_20

    .line 20287
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v4, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    iget-object v5, v11, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    iget v6, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    aget v5, v5, v6

    .line 20288
    invoke-virtual {v11, v3, v1, v5}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/d/d$b;I)I

    move-result v5

    aput v5, v0, v4

    .line 20289
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v11, Lcom/google/android/exoplayer2/extractor/d/d;->B:I

    goto :goto_d

    :cond_20
    return-void
.end method

.method public final a(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1893
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    const/16 v1, 0x5031

    const-string v2, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v1, :cond_17

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 18000
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->C:I

    return-void

    .line 17997
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->B:I

    return-void

    .line 17946
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 17947
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput-boolean v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->x:Z

    long-to-int p1, p2

    if-eq p1, v7, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    .line 17956
    :cond_0
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->y:I

    return-void

    .line 17959
    :cond_1
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->y:I

    return-void

    .line 17950
    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->y:I

    return-void

    .line 17966
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    return-void

    .line 17977
    :cond_3
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->z:I

    return-void

    .line 17974
    :cond_4
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->z:I

    return-void

    .line 17971
    :cond_5
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->z:I

    return-void

    .line 17984
    :pswitch_4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    return-void

    .line 17990
    :cond_6
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->A:I

    return-void

    .line 17987
    :cond_7
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->A:I

    return-void

    .line 17822
    :sswitch_0
    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->l:J

    return-void

    .line 17852
    :sswitch_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->e:I

    return-void

    .line 18003
    :sswitch_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    return-void

    .line 18015
    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->r:I

    return-void

    .line 18012
    :cond_9
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->r:I

    return-void

    .line 18009
    :cond_a
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->r:I

    return-void

    .line 18006
    :cond_b
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->r:I

    return-void

    .line 17870
    :sswitch_3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    return-void

    .line 17864
    :sswitch_4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->S:J

    return-void

    .line 17861
    :sswitch_5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->R:J

    return-void

    .line 17855
    :sswitch_6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->f:I

    return-void

    .line 17846
    :sswitch_7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    cmp-long v0, p2, v3

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->U:Z

    return-void

    .line 17834
    :sswitch_8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    return-void

    .line 17837
    :sswitch_9
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->q:I

    return-void

    .line 17831
    :sswitch_a
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    return-void

    :sswitch_b
    long-to-int p3, p2

    .line 17927
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    if-eqz p3, :cond_10

    if-eq p3, v7, :cond_f

    if-eq p3, v5, :cond_e

    const/16 p1, 0xf

    if-eq p3, p1, :cond_d

    return-void

    .line 17939
    :cond_d
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->w:I

    return-void

    .line 17936
    :cond_e
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->w:I

    return-void

    .line 17933
    :cond_f
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->w:I

    return-void

    .line 17930
    :cond_10
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->w:I

    return-void

    .line 17819
    :sswitch_c
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->r:J

    return-void

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 17902
    :cond_11
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AESSettingsCipherMode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 17896
    :cond_12
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncAlgo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_13

    goto/16 :goto_0

    .line 17807
    :cond_13
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EBMLReadVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v3

    if-ltz p1, :cond_14

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_14

    goto/16 :goto_0

    .line 17813
    :cond_14
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocTypeReadVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_15

    goto/16 :goto_0

    .line 17890
    :cond_15
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCompAlgo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17858
    :sswitch_12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    .line 18976
    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->g:I

    return-void

    .line 17873
    :sswitch_13
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/d/d;->I:Z

    return-void

    .line 17910
    :sswitch_14
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->x:Z

    if-nez v1, :cond_1a

    .line 17911
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->d(I)V

    .line 17915
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->w:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    .line 17916
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/d/d;->x:Z

    return-void

    :sswitch_15
    long-to-int p1, p2

    .line 18022
    iput p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->H:I

    goto :goto_0

    .line 17920
    :sswitch_16
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/d/d;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->u:J

    return-void

    .line 17840
    :sswitch_17
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->c:I

    return-void

    .line 17828
    :sswitch_18
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->n:I

    return-void

    .line 17906
    :sswitch_19
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->d(I)V

    .line 17907
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->v:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/d/d;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    return-void

    .line 17825
    :sswitch_1a
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->m:I

    return-void

    .line 17867
    :sswitch_1b
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->O:I

    return-void

    .line 17923
    :sswitch_1c
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/d/d;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->A:J

    return-void

    .line 17843
    :sswitch_1d
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    cmp-long v0, p2, v3

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->V:Z

    return-void

    .line 17849
    :sswitch_1e
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->d:I

    return-void

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 17884
    :cond_18
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncodingScope "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 17878
    :cond_1b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncodingOrder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1e
        0x88 -> :sswitch_1d
        0x9b -> :sswitch_1c
        0x9f -> :sswitch_1b
        0xb0 -> :sswitch_1a
        0xb3 -> :sswitch_19
        0xba -> :sswitch_18
        0xd7 -> :sswitch_17
        0xe7 -> :sswitch_16
        0xee -> :sswitch_15
        0xf1 -> :sswitch_14
        0xfb -> :sswitch_13
        0x41e7 -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1883
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    .line 2640
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d/d;->a()V

    const/16 v1, 0xa0

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    const/16 v1, 0xae

    if-eq p1, v1, :cond_b

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_a

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2662
    :cond_0
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->p:Z

    if-nez p1, :cond_7

    .line 2664
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->f:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->t:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    .line 2666
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->s:Z

    return-void

    .line 2670
    :cond_1
    iget-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-wide p3, v0, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 2671
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->p:Z

    return-void

    .line 2655
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/o;-><init>()V

    iput-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->v:Lcom/google/android/exoplayer2/util/o;

    .line 2656
    new-instance p1, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/o;-><init>()V

    iput-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->w:Lcom/google/android/exoplayer2/util/o;

    return-void

    .line 2643
    :cond_3
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    cmp-long p1, v1, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 2645
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2647
    :cond_5
    :goto_0
    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    .line 2648
    iput-wide p4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->j:J

    return-void

    .line 2688
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-boolean v4, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->x:Z

    :cond_7
    :goto_1
    return-void

    .line 2682
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-boolean v4, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->h:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    .line 2651
    iput p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->q:I

    .line 2652
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->r:J

    return-void

    .line 2659
    :cond_a
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->x:Z

    return-void

    .line 2685
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/d/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/d/d$b;-><init>(Lcom/google/android/exoplayer2/extractor/d/d$1;)V

    iput-object p1, v0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    return-void

    .line 2676
    :cond_c
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/d/d;->I:Z

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    const/16 v1, 0x86

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_2

    const/16 v1, 0x536e

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 19108
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    .line 19976
    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->W:Ljava/lang/String;

    goto :goto_0

    .line 19102
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    .line 19097
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 19098
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void

    .line 19105
    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Z
    .locals 0

    .line 1877
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/d/d;->b(I)Z

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1888
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/d/d$a;->a:Lcom/google/android/exoplayer2/extractor/d/d;

    .line 2702
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/extractor/d/d;->a()V

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_6f

    const/16 v2, 0xae

    const-string v4, "MatroskaExtractor"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v1, v2, :cond_11

    const/16 v2, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq v1, v2, :cond_f

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_d

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_b

    const v2, 0x1549a966

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_9

    const v2, 0x1654ae6b

    if-eq v1, v2, :cond_7

    if-eq v1, v3, :cond_0

    goto/16 :goto_23

    .line 2722
    :cond_0
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->p:Z

    if-nez v1, :cond_6

    .line 2723
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/d/d;->v:Lcom/google/android/exoplayer2/util/o;

    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/d/d;->w:Lcom/google/android/exoplayer2/util/o;

    .line 3738
    iget-wide v12, v8, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    const-wide/16 v14, -0x1

    cmp-long v7, v12, v14

    if-eqz v7, :cond_5

    iget-wide v12, v8, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    cmp-long v7, v12, v10

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 4072
    iget v7, v2, Lcom/google/android/exoplayer2/util/o;->a:I

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    .line 5072
    iget v7, v3, Lcom/google/android/exoplayer2/util/o;->a:I

    .line 6072
    iget v10, v2, Lcom/google/android/exoplayer2/util/o;->a:I

    if-eq v7, v10, :cond_1

    goto/16 :goto_3

    .line 7072
    :cond_1
    iget v7, v2, Lcom/google/android/exoplayer2/util/o;->a:I

    .line 3745
    new-array v10, v7, [I

    .line 3746
    new-array v11, v7, [J

    .line 3747
    new-array v12, v7, [J

    .line 3748
    new-array v13, v7, [J

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v7, :cond_2

    .line 3750
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v15

    aput-wide v15, v13, v14

    move-object/from16 v16, v10

    .line 3751
    iget-wide v9, v8, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/o;->a(I)J

    move-result-wide v17

    add-long v9, v9, v17

    aput-wide v9, v11, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v10

    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v2, v7, -0x1

    if-ge v9, v2, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 3754
    aget-wide v14, v11, v2

    aget-wide v17, v11, v9

    sub-long v14, v14, v17

    long-to-int v3, v14

    aput v3, v16, v9

    .line 3755
    aget-wide v14, v13, v2

    aget-wide v17, v13, v9

    sub-long v14, v14, v17

    aput-wide v14, v12, v9

    move v9, v2

    goto :goto_1

    .line 3757
    :cond_3
    iget-wide v9, v8, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    iget-wide v14, v8, Lcom/google/android/exoplayer2/extractor/d/d;->j:J

    add-long/2addr v9, v14

    aget-wide v14, v11, v2

    sub-long/2addr v9, v14

    long-to-int v3, v9

    aput v3, v16, v2

    .line 3759
    iget-wide v9, v8, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    aget-wide v14, v13, v2

    sub-long/2addr v9, v14

    aput-wide v9, v12, v2

    .line 3761
    aget-wide v9, v12, v2

    const-wide/16 v14, 0x0

    cmp-long v3, v9, v14

    if-gtz v3, :cond_4

    .line 3763
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v7, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 3764
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    .line 3765
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    .line 3766
    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    .line 3767
    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object/from16 v3, v16

    move-object v10, v3

    .line 3770
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c;

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/extractor/c;-><init>([I[J[J[J)V

    goto :goto_4

    .line 3742
    :cond_5
    :goto_3
    new-instance v2, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-wide v3, v8, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    .line 2723
    :goto_4
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 2724
    iput-boolean v6, v8, Lcom/google/android/exoplayer2/extractor/d/d;->p:Z

    .line 2728
    :cond_6
    iput-object v5, v8, Lcom/google/android/exoplayer2/extractor/d/d;->v:Lcom/google/android/exoplayer2/util/o;

    .line 2729
    iput-object v5, v8, Lcom/google/android/exoplayer2/extractor/d/d;->w:Lcom/google/android/exoplayer2/util/o;

    return-void

    .line 2786
    :cond_7
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2789
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    goto/16 :goto_23

    .line 2787
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2705
    :cond_9
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->l:J

    cmp-long v3, v1, v10

    if-nez v3, :cond_a

    const-wide/32 v1, 0xf4240

    .line 2707
    iput-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->l:J

    .line 2709
    :cond_a
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->m:J

    cmp-long v3, v1, v10

    if-eqz v3, :cond_73

    .line 2710
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->m:J

    invoke-virtual {v8, v1, v2}, Lcom/google/android/exoplayer2/extractor/d/d;->a(J)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    return-void

    .line 2768
    :cond_b
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 2769
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->h:Z

    if-eqz v1, :cond_73

    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    if-nez v1, :cond_c

    goto/16 :goto_23

    .line 2770
    :cond_c
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2758
    :cond_d
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 2759
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->h:Z

    if-eqz v1, :cond_73

    .line 2760
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->j:Lcom/google/android/exoplayer2/extractor/x$a;

    if-eqz v1, :cond_e

    .line 2763
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v3, v6, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v5, Lcom/google/android/exoplayer2/f;->a:Ljava/util/UUID;

    iget-object v6, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/d/d$b;->j:Lcom/google/android/exoplayer2/extractor/x$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/x$a;->b:[B

    const-string v7, "video/webm"

    invoke-direct {v4, v5, v7, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-void

    .line 2761
    :cond_e
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2714
    :cond_f
    iget v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->q:I

    if-eq v1, v7, :cond_10

    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->r:J

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_10

    .line 2717
    iget v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->q:I

    if-ne v1, v3, :cond_73

    .line 2718
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->r:J

    iput-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->t:J

    return-void

    .line 2715
    :cond_10
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2774
    :cond_11
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/d/d$b;

    .line 2775
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6e

    .line 2778
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    .line 8807
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "V_MPEG4/ISO/SP"

    const-string v11, "V_MPEG4/ISO/AP"

    const/16 v12, 0x19

    const/16 v13, 0x10

    const/16 v14, 0x8

    const/4 v6, 0x4

    const/4 v15, 0x3

    sparse-switch v9, :sswitch_data_0

    :goto_5
    const/4 v2, -0x1

    goto/16 :goto_6

    :sswitch_0
    const-string v9, "A_OPUS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    const/16 v2, 0x1f

    goto/16 :goto_6

    :sswitch_1
    const-string v9, "A_FLAC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_5

    :cond_13
    const/16 v2, 0x1e

    goto/16 :goto_6

    :sswitch_2
    const-string v9, "A_EAC3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_14
    const/16 v2, 0x1d

    goto/16 :goto_6

    :sswitch_3
    const-string v9, "V_MPEG2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_5

    :cond_15
    const/16 v2, 0x1c

    goto/16 :goto_6

    :sswitch_4
    const-string v9, "S_TEXT/UTF8"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    const/16 v2, 0x1b

    goto/16 :goto_6

    :sswitch_5
    const-string v9, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_5

    :cond_17
    const/16 v2, 0x1a

    goto/16 :goto_6

    :sswitch_6
    const-string v9, "S_TEXT/ASS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_5

    :cond_18
    const/16 v2, 0x19

    goto/16 :goto_6

    :sswitch_7
    const-string v9, "A_PCM/INT/LIT"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_5

    :cond_19
    const/16 v2, 0x18

    goto/16 :goto_6

    :sswitch_8
    const-string v9, "A_PCM/INT/BIG"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v2, 0x17

    goto/16 :goto_6

    :sswitch_9
    const-string v9, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_5

    :cond_1b
    const/16 v2, 0x16

    goto/16 :goto_6

    :sswitch_a
    const-string v9, "A_DTS/EXPRESS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v2, 0x15

    goto/16 :goto_6

    :sswitch_b
    const-string v9, "V_THEORA"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v2, 0x14

    goto/16 :goto_6

    :sswitch_c
    const-string v9, "S_HDMV/PGS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v2, 0x13

    goto/16 :goto_6

    :sswitch_d
    const-string v9, "V_VP9"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/16 v2, 0x12

    goto/16 :goto_6

    :sswitch_e
    const-string v9, "V_VP8"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_5

    :cond_20
    const/16 v2, 0x11

    goto/16 :goto_6

    :sswitch_f
    const-string v9, "V_AV1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_5

    :cond_21
    const/16 v2, 0x10

    goto/16 :goto_6

    :sswitch_10
    const-string v9, "A_DTS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_5

    :cond_22
    const/16 v2, 0xf

    goto/16 :goto_6

    :sswitch_11
    const-string v9, "A_AC3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_5

    :cond_23
    const/16 v2, 0xe

    goto/16 :goto_6

    :sswitch_12
    const-string v9, "A_AAC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_5

    :cond_24
    const/16 v2, 0xd

    goto/16 :goto_6

    :sswitch_13
    const-string v9, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_5

    :cond_25
    const/16 v2, 0xc

    goto/16 :goto_6

    :sswitch_14
    const-string v9, "S_VOBSUB"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_5

    :cond_26
    const/16 v2, 0xb

    goto/16 :goto_6

    :sswitch_15
    const-string v9, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_5

    :cond_27
    const/16 v2, 0xa

    goto/16 :goto_6

    :sswitch_16
    const-string v9, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_5

    :cond_28
    const/16 v2, 0x9

    goto/16 :goto_6

    :sswitch_17
    const-string v9, "S_DVBSUB"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_5

    :cond_29
    const/16 v2, 0x8

    goto :goto_6

    :sswitch_18
    const-string v9, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_5

    :cond_2a
    const/4 v2, 0x7

    goto :goto_6

    :sswitch_19
    const-string v9, "A_MPEG/L3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_5

    :cond_2b
    const/4 v2, 0x6

    goto :goto_6

    :sswitch_1a
    const-string v9, "A_MPEG/L2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_5

    :cond_2c
    const/4 v2, 0x5

    goto :goto_6

    :sswitch_1b
    const-string v9, "A_VORBIS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_5

    :cond_2d
    const/4 v2, 0x4

    goto :goto_6

    :sswitch_1c
    const-string v9, "A_TRUEHD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_5

    :cond_2e
    const/4 v2, 0x3

    goto :goto_6

    :sswitch_1d
    const-string v9, "A_MS/ACM"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_5

    :cond_2f
    const/4 v2, 0x2

    goto :goto_6

    :sswitch_1e
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_5

    :cond_30
    const/4 v2, 0x1

    goto :goto_6

    :sswitch_1f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_5

    :cond_31
    const/4 v2, 0x0

    :goto_6
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_7

    :pswitch_0
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_6d

    .line 2779
    iget-object v2, v8, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    iget v9, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->c:I

    .line 9064
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_1

    :goto_8
    const/4 v3, -0x1

    goto/16 :goto_9

    :sswitch_20
    const-string v10, "A_OPUS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_8

    :cond_32
    const/16 v3, 0x1f

    goto/16 :goto_9

    :sswitch_21
    const-string v10, "A_FLAC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_8

    :cond_33
    const/16 v3, 0x1e

    goto/16 :goto_9

    :sswitch_22
    const-string v10, "A_EAC3"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_8

    :cond_34
    const/16 v3, 0x1d

    goto/16 :goto_9

    :sswitch_23
    const-string v10, "V_MPEG2"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_8

    :cond_35
    const/16 v3, 0x1c

    goto/16 :goto_9

    :sswitch_24
    const-string v10, "S_TEXT/UTF8"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_8

    :cond_36
    const/16 v3, 0x1b

    goto/16 :goto_9

    :sswitch_25
    const-string v10, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_8

    :cond_37
    const/16 v3, 0x1a

    goto/16 :goto_9

    :sswitch_26
    const-string v10, "S_TEXT/ASS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_8

    :cond_38
    const/16 v3, 0x19

    goto/16 :goto_9

    :sswitch_27
    const-string v10, "A_PCM/INT/LIT"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_8

    :cond_39
    const/16 v3, 0x18

    goto/16 :goto_9

    :sswitch_28
    const-string v10, "A_PCM/INT/BIG"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_8

    :cond_3a
    const/16 v3, 0x17

    goto/16 :goto_9

    :sswitch_29
    const-string v10, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_8

    :cond_3b
    const/16 v3, 0x16

    goto/16 :goto_9

    :sswitch_2a
    const-string v10, "A_DTS/EXPRESS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_8

    :cond_3c
    const/16 v3, 0x15

    goto/16 :goto_9

    :sswitch_2b
    const-string v10, "V_THEORA"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_8

    :cond_3d
    const/16 v3, 0x14

    goto/16 :goto_9

    :sswitch_2c
    const-string v10, "S_HDMV/PGS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_8

    :cond_3e
    const/16 v3, 0x13

    goto/16 :goto_9

    :sswitch_2d
    const-string v10, "V_VP9"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_8

    :cond_3f
    const/16 v3, 0x12

    goto/16 :goto_9

    :sswitch_2e
    const-string v10, "V_VP8"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_8

    :cond_40
    const/16 v3, 0x11

    goto/16 :goto_9

    :sswitch_2f
    const-string v10, "V_AV1"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_8

    :cond_41
    const/16 v3, 0x10

    goto/16 :goto_9

    :sswitch_30
    const-string v10, "A_DTS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_8

    :cond_42
    const/16 v3, 0xf

    goto/16 :goto_9

    :sswitch_31
    const-string v10, "A_AC3"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_8

    :cond_43
    const/16 v3, 0xe

    goto/16 :goto_9

    :sswitch_32
    const-string v10, "A_AAC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_8

    :cond_44
    const/16 v3, 0xd

    goto/16 :goto_9

    :sswitch_33
    const-string v10, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_8

    :cond_45
    const/16 v3, 0xc

    goto/16 :goto_9

    :sswitch_34
    const-string v10, "S_VOBSUB"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_8

    :cond_46
    const/16 v3, 0xb

    goto/16 :goto_9

    :sswitch_35
    const-string v10, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_8

    :cond_47
    const/16 v3, 0xa

    goto/16 :goto_9

    :sswitch_36
    const-string v10, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_8

    :cond_48
    const/16 v3, 0x9

    goto/16 :goto_9

    :sswitch_37
    const-string v10, "S_DVBSUB"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_8

    :cond_49
    const/16 v3, 0x8

    goto :goto_9

    :sswitch_38
    const-string v10, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_8

    :cond_4a
    const/4 v3, 0x7

    goto :goto_9

    :sswitch_39
    const-string v10, "A_MPEG/L3"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_8

    :cond_4b
    const/4 v3, 0x6

    goto :goto_9

    :sswitch_3a
    const-string v10, "A_MPEG/L2"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_8

    :cond_4c
    const/4 v3, 0x5

    goto :goto_9

    :sswitch_3b
    const-string v10, "A_VORBIS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_8

    :cond_4d
    const/4 v3, 0x4

    goto :goto_9

    :sswitch_3c
    const-string v10, "A_TRUEHD"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_8

    :cond_4e
    const/4 v3, 0x3

    goto :goto_9

    :sswitch_3d
    const-string v10, "A_MS/ACM"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_8

    :cond_4f
    const/4 v3, 0x2

    goto :goto_9

    :sswitch_3e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_8

    :cond_50
    const/4 v3, 0x1

    goto :goto_9

    :sswitch_3f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto/16 :goto_8

    :cond_51
    const/4 v3, 0x0

    :goto_9
    const-string v10, ". Setting mimeType to "

    const-string v11, "audio/raw"

    const-string v5, "audio/x-unknown"

    packed-switch v3, :pswitch_data_1

    .line 9246
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/16 v3, 0x1680

    .line 9117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 9118
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9120
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->R:J

    invoke-virtual {v5, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 9119
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9122
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->S:J

    invoke-virtual {v5, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 9121
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "audio/opus"

    goto/16 :goto_11

    .line 9161
    :pswitch_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v11, "audio/flac"

    goto/16 :goto_f

    :pswitch_3
    const-string v11, "audio/eac3"

    goto/16 :goto_b

    :pswitch_4
    const-string v11, "video/mpeg2"

    goto/16 :goto_b

    :pswitch_5
    const-string v11, "application/x-subrip"

    goto/16 :goto_b

    .line 9093
    :pswitch_6
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/d;

    move-result-object v3

    .line 9094
    iget-object v4, v3, Lcom/google/android/exoplayer2/video/d;->a:Ljava/util/List;

    .line 9095
    iget v5, v3, Lcom/google/android/exoplayer2/video/d;->b:I

    iput v5, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->Y:I

    .line 9096
    iget-object v3, v3, Lcom/google/android/exoplayer2/video/d;->c:Ljava/lang/String;

    const-string v11, "video/hevc"

    goto/16 :goto_e

    .line 10077
    :pswitch_7
    sget-object v3, Lcom/google/android/exoplayer2/extractor/d/d;->b:[B

    .line 9229
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v4

    const-string v11, "text/x-ssa"

    goto/16 :goto_f

    .line 9180
    :pswitch_8
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->b(I)I

    move-result v6

    if-nez v6, :cond_52

    .line 9184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported little endian PCM bit depth: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_52
    move v10, v6

    :goto_a
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_14

    .line 9194
    :pswitch_9
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    if-ne v3, v14, :cond_53

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    goto/16 :goto_14

    .line 9196
    :cond_53
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    if-ne v3, v13, :cond_54

    const/high16 v6, 0x10000000

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v10, 0x10000000

    goto/16 :goto_14

    .line 9201
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported big endian PCM bit depth: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 9211
    :pswitch_a
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    const/16 v13, 0x20

    if-ne v3, v13, :cond_55

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    goto/16 :goto_14

    .line 9216
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported floating point PCM bit depth: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_b
    const-string v11, "video/x-unknown"

    goto :goto_b

    :pswitch_c
    const-string v11, "application/pgs"

    goto :goto_b

    :pswitch_d
    const-string v11, "video/x-vnd.on2.vp9"

    goto :goto_b

    :pswitch_e
    const-string v11, "video/x-vnd.on2.vp8"

    :goto_b
    const/4 v3, -0x1

    :goto_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    const/4 v10, -0x1

    goto/16 :goto_14

    :pswitch_f
    const-string v11, "video/av01"

    goto :goto_b

    :pswitch_10
    const-string v11, "audio/vnd.dts"

    goto :goto_b

    :pswitch_11
    const-string v11, "audio/ac3"

    goto :goto_b

    .line 9126
    :pswitch_12
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 9127
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->k:[B

    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/a;->a([B)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object v3

    .line 9130
    iget v5, v3, Lcom/google/android/exoplayer2/audio/a$a;->a:I

    iput v5, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->Q:I

    .line 9131
    iget v5, v3, Lcom/google/android/exoplayer2/audio/a$a;->b:I

    iput v5, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->O:I

    .line 9132
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/a$a;->c:Ljava/lang/String;

    const-string v11, "audio/mp4a-latm"

    goto :goto_e

    :pswitch_13
    const-string v11, "audio/vnd.dts.hd"

    goto :goto_b

    .line 9233
    :pswitch_14
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v4

    const-string v11, "application/vobsub"

    goto :goto_f

    .line 9086
    :pswitch_15
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/video/a;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/a;

    move-result-object v3

    .line 9087
    iget-object v4, v3, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    .line 9088
    iget v5, v3, Lcom/google/android/exoplayer2/video/a;->b:I

    iput v5, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->Y:I

    .line 9089
    iget-object v3, v3, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    const-string v11, "video/avc"

    :goto_e
    move-object v5, v4

    const/4 v10, -0x1

    move-object v4, v3

    const/4 v3, -0x1

    goto/16 :goto_14

    :pswitch_16
    new-array v3, v6, [B

    .line 9242
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9243
    invoke-static {v3}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v4

    const-string v11, "application/dvbsubs"

    goto :goto_f

    .line 9099
    :pswitch_17
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    .line 9100
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Lcom/google/android/exoplayer2/util/u;)Landroid/util/Pair;

    move-result-object v3

    .line 9101
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 9102
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    :goto_f
    move-object v5, v4

    const/4 v3, -0x1

    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_d

    :pswitch_18
    const/16 v3, 0x1000

    const-string v11, "audio/mpeg"

    goto/16 :goto_c

    :pswitch_19
    const/16 v3, 0x1000

    const-string v11, "audio/mpeg-L2"

    goto/16 :goto_c

    :pswitch_1a
    const/16 v3, 0x2000

    .line 9112
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a([B)Ljava/util/List;

    move-result-object v4

    const-string v11, "audio/vorbis"

    :goto_11
    move-object v5, v4

    goto :goto_10

    .line 9150
    :pswitch_1b
    new-instance v3, Lcom/google/android/exoplayer2/extractor/d/d$c;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/d/d$c;-><init>()V

    iput-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    const-string v11, "audio/true-hd"

    goto/16 :goto_b

    .line 9165
    :pswitch_1c
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    iget-object v13, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v3, v13}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/d/d$b;->b(Lcom/google/android/exoplayer2/util/u;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 9166
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->b(I)I

    move-result v3

    if-nez v3, :cond_56

    .line 9170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported PCM bit depth: "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->P:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_56
    move v10, v3

    goto/16 :goto_a

    :cond_57
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 9175
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    move-object v11, v5

    goto/16 :goto_b

    .line 9082
    :pswitch_1d
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->k:[B

    if-nez v3, :cond_58

    const/4 v4, 0x0

    goto :goto_13

    :cond_58
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->k:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    :goto_13
    const-string v11, "video/mp4v-es"

    goto :goto_f

    .line 9249
    :goto_14
    iget-object v13, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->N:[B

    if-eqz v13, :cond_59

    .line 9251
    new-instance v13, Lcom/google/android/exoplayer2/util/u;

    iget-object v14, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->N:[B

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 9252
    invoke-static {v13}, Lcom/google/android/exoplayer2/video/b;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/b;

    move-result-object v13

    if-eqz v13, :cond_59

    .line 9254
    iget-object v4, v13, Lcom/google/android/exoplayer2/video/b;->c:Ljava/lang/String;

    const-string v11, "video/dolby-vision"

    .line 9260
    :cond_59
    iget-boolean v13, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->V:Z

    const/4 v6, 0x0

    or-int/2addr v13, v6

    .line 9261
    iget-boolean v14, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->U:Z

    if-eqz v14, :cond_5a

    const/4 v14, 0x2

    goto :goto_15

    :cond_5a
    const/4 v14, 0x0

    :goto_15
    or-int/2addr v13, v14

    .line 9264
    new-instance v14, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v14}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 9267
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/q;->a(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5b

    .line 9269
    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->O:I

    .line 10517
    iput v6, v14, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 9270
    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->Q:I

    .line 10528
    iput v6, v14, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 10539
    iput v10, v14, Lcom/google/android/exoplayer2/Format$a;->z:I

    const/4 v15, 0x1

    goto/16 :goto_1f

    .line 9273
    :cond_5b
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/q;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 9275
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->q:I

    if-nez v10, :cond_5e

    .line 9276
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    if-ne v10, v7, :cond_5c

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->m:I

    goto :goto_16

    :cond_5c
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    :goto_16
    iput v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    .line 9277
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    if-ne v10, v7, :cond_5d

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->n:I

    goto :goto_17

    :cond_5d
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    :goto_17
    iput v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    .line 9280
    :cond_5e
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    const/high16 v15, -0x40800000    # -1.0f

    if-eq v10, v7, :cond_5f

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    if-eq v10, v7, :cond_5f

    .line 9281
    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->n:I

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->o:I

    mul-int v10, v10, v6

    int-to-float v6, v10

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->m:I

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->p:I

    mul-int v10, v10, v7

    int-to-float v7, v10

    div-float/2addr v6, v7

    goto :goto_18

    :cond_5f
    const/high16 v6, -0x40800000    # -1.0f

    .line 9284
    :goto_18
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->x:Z

    if-eqz v7, :cond_62

    .line 11365
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->D:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->E:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->F:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->G:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->H:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->I:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->J:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->K:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->L:F

    cmpl-float v7, v7, v15

    if-eqz v7, :cond_61

    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->M:F

    cmpl-float v7, v7, v15

    if-nez v7, :cond_60

    goto/16 :goto_19

    :cond_60
    new-array v7, v12, [B

    .line 11375
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v12, 0x0

    .line 11376
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11377
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->D:F

    const v19, 0x47435000    # 50000.0f

    mul-float v12, v12, v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11378
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->E:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11379
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->F:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11380
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->G:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11381
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->H:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11382
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->I:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11383
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->J:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11384
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->K:F

    mul-float v12, v12, v19

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11385
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->L:F

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11386
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->M:F

    add-float v12, v12, v20

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11387
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->B:I

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11388
    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->C:I

    int-to-short v12, v12

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1a

    :cond_61
    :goto_19
    const/4 v7, 0x0

    .line 9286
    :goto_1a
    new-instance v10, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v12, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->y:I

    iget v15, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->A:I

    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->z:I

    invoke-direct {v10, v12, v15, v0, v7}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    goto :goto_1b

    :cond_62
    const/4 v10, 0x0

    .line 9290
    :goto_1b
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 12077
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->c:Ljava/util/Map;

    .line 9290
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 13077
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->c:Ljava/util/Map;

    .line 9291
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1c

    :cond_63
    const/4 v7, -0x1

    .line 9293
    :goto_1c
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->r:I

    if-nez v0, :cond_68

    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->s:F

    const/4 v12, 0x0

    .line 9294
    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_68

    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    .line 9295
    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_68

    .line 9297
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->u:F

    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_64

    const/4 v0, 0x0

    goto :goto_1e

    .line 9299
    :cond_64
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_65

    const/16 v0, 0x5a

    goto :goto_1e

    .line 9301
    :cond_65
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    const/high16 v12, -0x3ccc0000    # -180.0f

    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_67

    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    const/high16 v12, 0x43340000    # 180.0f

    .line 9302
    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_66

    goto :goto_1d

    .line 9304
    :cond_66
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->t:F

    const/high16 v12, -0x3d4c0000    # -90.0f

    invoke-static {v0, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_68

    const/16 v0, 0x10e

    goto :goto_1e

    :cond_67
    :goto_1d
    const/16 v0, 0xb4

    goto :goto_1e

    :cond_68
    move v0, v7

    .line 9308
    :goto_1e
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->m:I

    .line 13427
    iput v7, v14, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 9309
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->n:I

    .line 13438
    iput v7, v14, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 13471
    iput v6, v14, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 14460
    iput v0, v14, Lcom/google/android/exoplayer2/Format$a;->s:I

    .line 9312
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->v:[B

    .line 14482
    iput-object v0, v14, Lcom/google/android/exoplayer2/Format$a;->u:[B

    .line 9313
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->w:I

    .line 14493
    iput v0, v14, Lcom/google/android/exoplayer2/Format$a;->v:I

    .line 14504
    iput-object v10, v14, Lcom/google/android/exoplayer2/Format$a;->w:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v15, 0x2

    goto :goto_1f

    :cond_69
    const-string v0, "application/x-subrip"

    .line 9316
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "text/x-ssa"

    .line 9317
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "application/vobsub"

    .line 9318
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "application/pgs"

    .line 9319
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "application/dvbsubs"

    .line 9320
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_1f

    .line 9323
    :cond_6a
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9326
    :cond_6b
    :goto_1f
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 15077
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->c:Ljava/util/Map;

    .line 9326
    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 9327
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->a:Ljava/lang/String;

    .line 15267
    iput-object v0, v14, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 9332
    :cond_6c
    invoke-virtual {v14, v9}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 15370
    iput-object v11, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 15381
    iput v3, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 9334
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->W:Ljava/lang/String;

    .line 16278
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 16289
    iput v13, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 16392
    iput-object v5, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 17333
    iput-object v4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 9338
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 17403
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 9340
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 9342
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->c:I

    invoke-interface {v2, v3, v15}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    .line 9343
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2780
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_20

    :cond_6d
    move-object v0, v5

    .line 2783
    :goto_20
    iput-object v0, v8, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    return-void

    .line 2776
    :cond_6e
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2732
    :cond_6f
    iget v0, v8, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_73

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2738
    :goto_21
    iget v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    if-ge v5, v1, :cond_70

    .line 2739
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aget v1, v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 2741
    :cond_70
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    iget v2, v8, Lcom/google/android/exoplayer2/extractor/d/d;->E:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/exoplayer2/extractor/d/d$b;

    .line 7976
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a()V

    const/4 v10, 0x0

    .line 2743
    :goto_22
    iget v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    if-ge v10, v1, :cond_72

    .line 2744
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->z:J

    iget v3, v9, Lcom/google/android/exoplayer2/extractor/d/d$b;->e:I

    mul-int v3, v3, v10

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 2745
    iget v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    if-nez v10, :cond_71

    .line 2746
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/extractor/d/d;->I:Z

    if-nez v2, :cond_71

    or-int/lit8 v1, v1, 0x1

    :cond_71
    move v5, v1

    .line 2751
    iget-object v1, v8, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

    aget v6, v1, v10

    sub-int/2addr v0, v6

    move-object v1, v8

    move-object v2, v9

    move v7, v0

    .line 2753
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/d/d$b;JIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_72
    const/4 v0, 0x0

    .line 2755
    iput v0, v8, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    :cond_73
    :goto_23
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_3f
        -0x7ce7f3b0 -> :sswitch_3e
        -0x76567dc0 -> :sswitch_3d
        -0x6a615338 -> :sswitch_3c
        -0x672350af -> :sswitch_3b
        -0x585f4fce -> :sswitch_3a
        -0x585f4fcd -> :sswitch_39
        -0x51dc40b2 -> :sswitch_38
        -0x37a9c464 -> :sswitch_37
        -0x2016c535 -> :sswitch_36
        -0x2016c4e5 -> :sswitch_35
        -0x19552dbd -> :sswitch_34
        -0x1538b2ba -> :sswitch_33
        0x3c02325 -> :sswitch_32
        0x3c02353 -> :sswitch_31
        0x3c030c5 -> :sswitch_30
        0x4e81333 -> :sswitch_2f
        0x4e86155 -> :sswitch_2e
        0x4e86156 -> :sswitch_2d
        0x5e8da3e -> :sswitch_2c
        0x1a8350d6 -> :sswitch_2b
        0x2056f406 -> :sswitch_2a
        0x25e26ee2 -> :sswitch_29
        0x2b45174d -> :sswitch_28
        0x2b453ce4 -> :sswitch_27
        0x2c0618eb -> :sswitch_26
        0x32fdf009 -> :sswitch_25
        0x54c61e47 -> :sswitch_24
        0x6bd6c624 -> :sswitch_23
        0x7446132a -> :sswitch_22
        0x7446b0a6 -> :sswitch_21
        0x744ad97d -> :sswitch_20
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
