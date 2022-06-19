.class final Landroidx/media2/exoplayer/external/extractor/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/extractor/b/d;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/extractor/b/d;)V
    .locals 0

    .line 1658
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/b/d;Landroidx/media2/exoplayer/external/extractor/b/d$1;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/b/d$a;-><init>(Landroidx/media2/exoplayer/external/extractor/b/d;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1663
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1689
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 10006
    :pswitch_0
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->t:F

    :goto_0
    return-void

    .line 10003
    :pswitch_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    return-void

    .line 10000
    :pswitch_2
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->r:F

    return-void

    .line 9997
    :pswitch_3
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->L:F

    return-void

    .line 9994
    :pswitch_4
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->K:F

    return-void

    .line 9991
    :pswitch_5
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->J:F

    return-void

    .line 9988
    :pswitch_6
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->I:F

    return-void

    .line 9985
    :pswitch_7
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->H:F

    return-void

    .line 9982
    :pswitch_8
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->G:F

    return-void

    .line 9979
    :pswitch_9
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->F:F

    return-void

    .line 9976
    :pswitch_a
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->E:F

    return-void

    .line 9973
    :pswitch_b
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->D:F

    return-void

    .line 9970
    :pswitch_c
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->C:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 9964
    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->l:J

    return-void

    .line 9967
    :cond_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    double-to-int p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->O:I

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

.method public final a(IILandroidx/media2/exoplayer/external/extractor/h;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1700
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    const/16 v5, 0xa1

    const/16 v6, 0xa3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v5, :cond_8

    if-eq v0, v6, :cond_8

    const/16 v5, 0xa5

    if-eq v0, v5, :cond_5

    const/16 v5, 0x4255

    if-eq v0, v5, :cond_4

    const/16 v5, 0x47e2

    if-eq v0, v5, :cond_3

    const/16 v5, 0x53ab

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63a2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7672

    if-ne v0, v5, :cond_0

    .line 11061
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    new-array v5, v1, [B

    iput-object v5, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->u:[B

    .line 11062
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->u:[B

    invoke-interface {v3, v0, v9, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    return-void

    .line 11215
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11057
    :cond_1
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    new-array v5, v1, [B

    iput-object v5, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    .line 11058
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-interface {v3, v0, v9, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    return-void

    .line 11051
    :cond_2
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->g:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 11052
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->g:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    rsub-int/lit8 v5, v1, 0x4

    invoke-interface {v3, v0, v5, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 11053
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->g:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 11054
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->g:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->p:I

    return-void

    .line 11070
    :cond_3
    new-array v0, v1, [B

    .line 11071
    invoke-interface {v3, v0, v9, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 11072
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/q$a;

    invoke-direct {v3, v10, v0, v9, v9}, Landroidx/media2/exoplayer/external/extractor/q$a;-><init>(I[BII)V

    iput-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    return-void

    .line 11066
    :cond_4
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    new-array v5, v1, [B

    iput-object v5, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    .line 11067
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    invoke-interface {v3, v0, v9, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    return-void

    .line 11209
    :cond_5
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    if-ne v0, v8, :cond_7

    .line 11212
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->D:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->G:I

    if-ne v5, v7, :cond_6

    .line 12222
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v5, "V_VP9"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12223
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 12224
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v3, v0, v9, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    return-void

    .line 12227
    :cond_6
    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    :cond_7
    return-void

    .line 11082
    :cond_8
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    const/16 v11, 0x8

    if-nez v5, :cond_9

    .line 11083
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-virtual {v5, v3, v9, v10, v11}, Landroidx/media2/exoplayer/external/extractor/b/g;->a(Landroidx/media2/exoplayer/external/extractor/h;ZZI)J

    move-result-wide v12

    long-to-int v5, v12

    iput v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->D:I

    .line 11084
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    .line 12120
    iget v5, v5, Landroidx/media2/exoplayer/external/extractor/b/g;->a:I

    .line 11084
    iput v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 11085
    iput-wide v12, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->z:J

    .line 11086
    iput v10, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    .line 11087
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 11090
    :cond_9
    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->D:I

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    if-nez v5, :cond_a

    .line 11094
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 11095
    iput v9, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    return-void

    .line 11099
    :cond_a
    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    if-ne v12, v10, :cond_1d

    const/4 v12, 0x3

    .line 11101
    invoke-virtual {v4, v3, v12}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;I)V

    .line 11102
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v13, v13, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v13, v13, v8

    and-int/lit8 v13, v13, 0x6

    shr-int/2addr v13, v10

    const/16 v14, 0xff

    if-nez v13, :cond_b

    .line 11104
    iput v10, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    .line 11105
    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    invoke-static {v7, v10}, Landroidx/media2/exoplayer/external/extractor/b/d;->a([II)[I

    move-result-object v7

    iput-object v7, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    .line 11106
    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v12

    aput v1, v7, v9

    goto/16 :goto_6

    :cond_b
    if-ne v0, v6, :cond_1c

    .line 11113
    invoke-virtual {v4, v3, v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;I)V

    .line 11114
    iget-object v15, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v15, v15, v12

    and-int/2addr v15, v14

    add-int/2addr v15, v10

    iput v15, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    .line 11115
    iget-object v15, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    .line 11116
    invoke-static {v15, v6}, Landroidx/media2/exoplayer/external/extractor/b/d;->a([II)[I

    move-result-object v6

    iput-object v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    if-ne v13, v8, :cond_c

    .line 11118
    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v7

    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    div-int/2addr v1, v6

    .line 11120
    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v7, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    invoke-static {v6, v9, v7, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_c
    if-ne v13, v10, :cond_f

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 11124
    :goto_0
    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    sub-int/2addr v13, v10

    if-ge v6, v13, :cond_e

    .line 11125
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aput v9, v13, v6

    :cond_d
    add-int/2addr v7, v10

    .line 11128
    invoke-virtual {v4, v3, v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;I)V

    .line 11129
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v13, v13, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v15, v7, -0x1

    aget-byte v13, v13, v15

    and-int/2addr v13, v14

    .line 11130
    iget-object v15, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aget v16, v15, v6

    add-int v16, v16, v13

    aput v16, v15, v6

    if-eq v13, v14, :cond_d

    .line 11132
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aget v13, v13, v6

    add-int/2addr v12, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11134
    :cond_e
    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    sub-int/2addr v13, v10

    iget v15, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v7

    sub-int/2addr v1, v12

    aput v1, v6, v13

    goto/16 :goto_6

    :cond_f
    if-ne v13, v12, :cond_1b

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 11139
    :goto_1
    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    sub-int/2addr v13, v10

    if-ge v6, v13, :cond_16

    .line 11140
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aput v9, v13, v6

    add-int/lit8 v7, v7, 0x1

    .line 11141
    invoke-virtual {v4, v3, v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;I)V

    .line 11142
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v13, v13, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v15, v7, -0x1

    aget-byte v13, v13, v15

    if-eqz v13, :cond_15

    const-wide/16 v16, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_12

    rsub-int/lit8 v18, v13, 0x7

    shl-int v8, v10, v18

    .line 11148
    iget-object v9, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v9, v9, v15

    and-int/2addr v9, v8

    if-eqz v9, :cond_11

    add-int/2addr v7, v13

    .line 11151
    invoke-virtual {v4, v3, v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;I)V

    .line 11152
    iget-object v9, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v9, v9, v15

    and-int/2addr v9, v14

    not-int v8, v8

    and-int/2addr v8, v9

    int-to-long v8, v8

    move-wide/from16 v21, v8

    move/from16 v8, v16

    move-wide/from16 v16, v21

    :goto_3
    if-ge v8, v7, :cond_10

    shl-long v16, v16, v11

    .line 11155
    iget-object v9, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v15, v8, 0x1

    aget-byte v8, v9, v8

    and-int/2addr v8, v14

    int-to-long v8, v8

    or-long v16, v16, v8

    move v8, v15

    goto :goto_3

    :cond_10
    if-lez v6, :cond_12

    mul-int/lit8 v13, v13, 0x7

    add-int/lit8 v13, v13, 0x6

    const-wide/16 v8, 0x1

    shl-long v19, v8, v13

    sub-long v19, v19, v8

    sub-long v16, v16, v19

    goto :goto_4

    :cond_11
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto :goto_2

    :cond_12
    :goto_4
    move-wide/from16 v8, v16

    const-wide/32 v16, -0x80000000

    cmp-long v13, v8, v16

    if-ltz v13, :cond_14

    const-wide/32 v16, 0x7fffffff

    cmp-long v13, v8, v16

    if-gtz v13, :cond_14

    long-to-int v9, v8

    .line 11168
    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    if-nez v6, :cond_13

    goto :goto_5

    .line 11169
    :cond_13
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    add-int/lit8 v15, v6, -0x1

    aget v13, v13, v15

    add-int/2addr v9, v13

    :goto_5
    aput v9, v8, v6

    .line 11170
    iget-object v8, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aget v8, v8, v6

    add-int/2addr v12, v8

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 11165
    :cond_14
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11143
    :cond_15
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11172
    :cond_16
    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    sub-int/2addr v8, v10

    iget v9, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->E:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v7

    sub-int/2addr v1, v12

    aput v1, v6, v8

    .line 11180
    :goto_6
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    shl-int/2addr v1, v11

    iget-object v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v6, v6, v10

    and-int/2addr v6, v14

    or-int/2addr v1, v6

    .line 11181
    iget-wide v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->t:J

    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->y:J

    .line 11182
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_17

    const/4 v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    .line 11183
    :goto_7
    iget v7, v5, Landroidx/media2/exoplayer/external/extractor/b/d$b;->d:I

    if-eq v7, v6, :cond_19

    const/16 v7, 0xa3

    if-ne v0, v7, :cond_18

    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v7, v7, v6

    const/16 v6, 0x80

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_18

    goto :goto_8

    :cond_18
    const/4 v6, 0x0

    goto :goto_9

    :cond_19
    :goto_8
    const/4 v6, 0x1

    :goto_9
    if-eqz v1, :cond_1a

    const/high16 v1, -0x80000000

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v1, v6

    .line 11186
    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    const/4 v1, 0x2

    .line 11187
    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    const/4 v1, 0x0

    .line 11188
    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    goto :goto_b

    .line 11176
    :cond_1b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11109
    :cond_1c
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_b
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1f

    .line 11193
    :goto_c
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->B:I

    if-ge v0, v1, :cond_1e

    .line 11194
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    aget v0, v0, v1

    invoke-virtual {v4, v3, v5, v0}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/b/d$b;I)V

    .line 11195
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->y:J

    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    iget v7, v5, Landroidx/media2/exoplayer/external/extractor/b/d$b;->e:I

    mul-int v6, v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 11197
    invoke-virtual {v4, v5, v0, v1}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/b/d$b;J)V

    .line 11198
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    add-int/2addr v0, v10

    iput v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->A:I

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    .line 11200
    iput v0, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    return-void

    :cond_1f
    const/4 v0, 0x0

    .line 11204
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/b/d;->C:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/b/d$b;I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1684
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    const/16 v1, 0x5031

    const/16 v2, 0x37

    const-string v3, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v1, :cond_17

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 9927
    :pswitch_0
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->B:I

    return-void

    .line 9924
    :pswitch_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->A:I

    return-void

    .line 9876
    :pswitch_2
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-boolean v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->w:Z

    long-to-int p1, p2

    if-eq p1, v8, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    .line 9885
    :cond_0
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->x:I

    return-void

    .line 9888
    :cond_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->x:I

    return-void

    .line 9879
    :cond_2
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->x:I

    return-void

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v8, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    return-void

    .line 9905
    :cond_3
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v1, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->y:I

    return-void

    .line 9902
    :cond_4
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->y:I

    return-void

    .line 9899
    :cond_5
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->y:I

    return-void

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v8, :cond_7

    if-eq p1, v7, :cond_6

    return-void

    .line 9917
    :cond_6
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->z:I

    return-void

    .line 9914
    :cond_7
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->z:I

    return-void

    .line 9758
    :sswitch_0
    iput-wide p2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->k:J

    return-void

    .line 9788
    :sswitch_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->e:I

    return-void

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v8, :cond_a

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    return-void

    .line 9941
    :cond_8
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->q:I

    return-void

    .line 9938
    :cond_9
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->q:I

    return-void

    .line 9935
    :cond_a
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->q:I

    return-void

    .line 9932
    :cond_b
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->q:I

    return-void

    .line 9803
    :sswitch_3
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->N:I

    return-void

    .line 9797
    :sswitch_4
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->Q:J

    return-void

    .line 9794
    :sswitch_5
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->P:J

    return-void

    .line 9791
    :sswitch_6
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->f:I

    return-void

    .line 9782
    :sswitch_7
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    cmp-long v0, p2, v4

    if-nez v0, :cond_c

    const/4 v2, 0x1

    :cond_c
    iput-boolean v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->S:Z

    return-void

    .line 9770
    :sswitch_8
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    return-void

    .line 9773
    :sswitch_9
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->p:I

    return-void

    .line 9767
    :sswitch_a
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    return-void

    :sswitch_b
    long-to-int p1, p2

    if-eqz p1, :cond_10

    if-eq p1, v8, :cond_f

    if-eq p1, v6, :cond_e

    const/16 p2, 0xf

    if-eq p1, p2, :cond_d

    return-void

    .line 9869
    :cond_d
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->v:I

    return-void

    .line 9866
    :cond_e
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->v:I

    return-void

    .line 9863
    :cond_f
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->v:I

    return-void

    .line 9860
    :cond_10
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->v:I

    return-void

    .line 9755
    :sswitch_c
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->q:J

    return-void

    :sswitch_d
    cmp-long p1, p2, v4

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 9835
    :cond_11
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 9829
    :cond_12
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v4

    if-nez p1, :cond_13

    goto/16 :goto_0

    .line 9743
    :cond_13
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v4

    if-ltz p1, :cond_14

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_14

    goto/16 :goto_0

    .line 9749
    :cond_14
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v4, 0x3

    cmp-long p1, p2, v4

    if-nez p1, :cond_15

    goto/16 :goto_0

    .line 9823
    :cond_15
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9806
    :sswitch_12
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->H:Z

    return-void

    .line 9842
    :sswitch_13
    iget-boolean p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->w:Z

    if-nez p1, :cond_1a

    .line 9846
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    .line 9847
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->w:Z

    return-void

    :sswitch_14
    long-to-int p1, p2

    .line 9948
    iput p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->G:I

    goto :goto_0

    .line 9851
    :sswitch_15
    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->t:J

    return-void

    .line 9776
    :sswitch_16
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->c:I

    return-void

    .line 9764
    :sswitch_17
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->m:I

    return-void

    .line 9839
    :sswitch_18
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/k;->a(J)V

    return-void

    .line 9761
    :sswitch_19
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->l:I

    return-void

    .line 9800
    :sswitch_1a
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->M:I

    return-void

    .line 9854
    :sswitch_1b
    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->z:J

    return-void

    .line 9779
    :sswitch_1c
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    cmp-long v0, p2, v4

    if-nez v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    iput-boolean v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->T:Z

    return-void

    .line 9785
    :sswitch_1d
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->d:I

    return-void

    :cond_17
    cmp-long p1, p2, v4

    if-nez p1, :cond_18

    goto :goto_0

    .line 9817
    :cond_18
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 9811
    :cond_1b
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1d
        0x88 -> :sswitch_1c
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_1a
        0xb0 -> :sswitch_19
        0xb3 -> :sswitch_18
        0xba -> :sswitch_17
        0xd7 -> :sswitch_16
        0xe7 -> :sswitch_15
        0xee -> :sswitch_14
        0xf1 -> :sswitch_13
        0xfb -> :sswitch_12
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
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

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

    .line 2622
    :cond_0
    iget-boolean p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->o:Z

    if-nez p1, :cond_7

    .line 2624
    iget-boolean p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->e:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->s:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    .line 2626
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->r:Z

    return-void

    .line 2630
    :cond_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->I:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/o$b;

    iget-wide p3, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    invoke-direct {p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 2631
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->o:Z

    return-void

    .line 2615
    :cond_2
    new-instance p1, Landroidx/media2/exoplayer/external/util/k;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/k;-><init>()V

    iput-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 2616
    new-instance p1, Landroidx/media2/exoplayer/external/util/k;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/k;-><init>()V

    iput-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    return-void

    .line 2603
    :cond_3
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    cmp-long p1, v1, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 2605
    :cond_4
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2607
    :cond_5
    :goto_0
    iput-wide p2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    .line 2608
    iput-wide p4, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->i:J

    return-void

    .line 2648
    :cond_6
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-boolean v4, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->w:Z

    :cond_7
    :goto_1
    return-void

    .line 2642
    :cond_8
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-boolean v4, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->g:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    .line 2611
    iput p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->p:I

    .line 2612
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->q:J

    return-void

    .line 2619
    :cond_a
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->w:Z

    return-void

    .line 2645
    :cond_b
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/b/d$b;-><init>(Landroidx/media2/exoplayer/external/extractor/b/d$1;)V

    iput-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    return-void

    .line 2636
    :cond_c
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->H:Z

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    const/16 v1, 0x86

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_2

    const/16 v1, 0x536e

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 10034
    :cond_0
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    .line 10768
    iput-object p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->U:Ljava/lang/String;

    goto :goto_0

    .line 10028
    :cond_1
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string/jumbo p1, "webm"

    .line 10023
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 10024
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void

    .line 10031
    :cond_5
    iget-object p1, v0, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Z
    .locals 0

    .line 1668
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/b/d;->b(I)Z

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1679
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/b/d$a;->a:Landroidx/media2/exoplayer/external/extractor/b/d;

    const/16 v3, 0xa0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_4d

    const/16 v3, 0xae

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v1, v3, :cond_f

    const/16 v3, 0x4dbb

    const-wide/16 v9, -0x1

    const v4, 0x1c53bb6b

    if-eq v1, v3, :cond_d

    const/16 v3, 0x6240

    if-eq v1, v3, :cond_b

    const/16 v3, 0x6d80

    if-eq v1, v3, :cond_9

    const v3, 0x1549a966

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v3, :cond_7

    const v3, 0x1654ae6b

    if-eq v1, v3, :cond_5

    if-eq v1, v4, :cond_0

    goto/16 :goto_21

    .line 2681
    :cond_0
    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->o:Z

    if-nez v1, :cond_4f

    .line 2682
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->I:Landroidx/media2/exoplayer/external/extractor/i;

    .line 3547
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    cmp-long v8, v3, v9

    if-eqz v8, :cond_4

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    cmp-long v8, v3, v11

    if-eqz v8, :cond_4

    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 4078
    iget v3, v3, Landroidx/media2/exoplayer/external/util/k;->a:I

    if-eqz v3, :cond_4

    .line 3548
    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    .line 5078
    iget v3, v3, Landroidx/media2/exoplayer/external/util/k;->a:I

    .line 3549
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 6078
    iget v4, v4, Landroidx/media2/exoplayer/external/util/k;->a:I

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 3555
    :cond_1
    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 7078
    iget v3, v3, Landroidx/media2/exoplayer/external/util/k;->a:I

    .line 3556
    new-array v4, v3, [I

    .line 3557
    new-array v8, v3, [J

    .line 3558
    new-array v9, v3, [J

    .line 3559
    new-array v10, v3, [J

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_2

    .line 3561
    iget-object v12, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    invoke-virtual {v12, v11}, Landroidx/media2/exoplayer/external/util/k;->a(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 3562
    iget-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    iget-object v14, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    invoke-virtual {v14, v11}, Landroidx/media2/exoplayer/external/util/k;->a(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v11, v3, -0x1

    if-ge v6, v11, :cond_3

    add-int/lit8 v11, v6, 0x1

    .line 3565
    aget-wide v12, v8, v11

    aget-wide v14, v8, v6

    sub-long/2addr v12, v14

    long-to-int v13, v12

    aput v13, v4, v6

    .line 3566
    aget-wide v12, v10, v11

    aget-wide v14, v10, v6

    sub-long/2addr v12, v14

    aput-wide v12, v9, v6

    move v6, v11

    goto :goto_1

    .line 3568
    :cond_3
    iget-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    iget-wide v14, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->i:J

    add-long/2addr v12, v14

    aget-wide v14, v8, v11

    sub-long/2addr v12, v14

    long-to-int v3, v12

    aput v3, v4, v11

    .line 3570
    iget-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    aget-wide v14, v10, v11

    sub-long/2addr v12, v14

    aput-wide v12, v9, v11

    .line 3571
    iput-object v7, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 3572
    iput-object v7, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    .line 3573
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/b;

    invoke-direct {v3, v4, v8, v9, v10}, Landroidx/media2/exoplayer/external/extractor/b;-><init>([I[J[J[J)V

    goto :goto_3

    .line 3551
    :cond_4
    :goto_2
    iput-object v7, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->u:Landroidx/media2/exoplayer/external/util/k;

    .line 3552
    iput-object v7, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->v:Landroidx/media2/exoplayer/external/util/k;

    .line 3553
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/o$b;

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    invoke-direct {v3, v6, v7}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    .line 2682
    :goto_3
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 2683
    iput-boolean v5, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->o:Z

    return-void

    .line 2722
    :cond_5
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2725
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->I:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    goto/16 :goto_21

    .line 2723
    :cond_6
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2664
    :cond_7
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->k:J

    cmp-long v1, v3, v11

    if-nez v1, :cond_8

    const-wide/32 v3, 0xf4240

    .line 2666
    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->k:J

    .line 2668
    :cond_8
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->l:J

    cmp-long v1, v3, v11

    if-eqz v1, :cond_4f

    .line 2669
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->l:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    return-void

    .line 2710
    :cond_9
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->g:Z

    if-eqz v1, :cond_4f

    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    if-nez v1, :cond_a

    goto/16 :goto_21

    .line 2711
    :cond_a
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2701
    :cond_b
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->g:Z

    if-eqz v1, :cond_4f

    .line 2702
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    if-eqz v1, :cond_c

    .line 2705
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v4, v5, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    new-instance v5, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v7, Landroidx/media2/exoplayer/external/c;->a:Ljava/util/UUID;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    const-string/jumbo v8, "video/webm"

    invoke-direct {v5, v7, v8, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    iput-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    return-void

    .line 2703
    :cond_c
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2673
    :cond_d
    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->p:I

    if-eq v1, v8, :cond_e

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->q:J

    cmp-long v1, v5, v9

    if-eqz v1, :cond_e

    .line 2676
    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->p:I

    if-ne v1, v4, :cond_4f

    .line 2677
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->q:J

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->s:J

    return-void

    .line 2674
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2715
    :cond_f
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 7610
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "A_MS/ACM"

    const-string v11, "V_MPEG4/ISO/SP"

    const-string v12, "V_MPEG4/ISO/AP"

    const-string v13, "V_AV1"

    const-string v14, "V_VP9"

    if-nez v9, :cond_11

    .line 7611
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 7612
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEG2"

    .line 7613
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 7614
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEG4/ISO/ASP"

    .line 7615
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 7616
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEG4/ISO/AVC"

    .line 7617
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEGH/ISO/HEVC"

    .line 7618
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MS/VFW/FOURCC"

    .line 7619
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_THEORA"

    .line 7620
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_OPUS"

    .line 7621
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_VORBIS"

    .line 7622
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_AAC"

    .line 7623
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_MPEG/L2"

    .line 7624
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_MPEG/L3"

    .line 7625
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_AC3"

    .line 7626
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_EAC3"

    .line 7627
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_TRUEHD"

    .line 7628
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS"

    .line 7629
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS/EXPRESS"

    .line 7630
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS/LOSSLESS"

    .line 7631
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_FLAC"

    .line 7632
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 7633
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_PCM/INT/LIT"

    .line 7634
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_TEXT/UTF8"

    .line 7635
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_TEXT/ASS"

    .line 7636
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_VOBSUB"

    .line 7637
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_HDMV/PGS"

    .line 7638
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_DVBSUB"

    .line 7639
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    :cond_11
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_4c

    .line 2716
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-object v9, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->I:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v15, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget v15, v15, Landroidx/media2/exoplayer/external/extractor/b/d$b;->c:I

    .line 7851
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, 0x8

    const/4 v8, 0x3

    sparse-switch v16, :sswitch_data_0

    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_7

    :sswitch_0
    const-string v3, "A_OPUS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    const/16 v3, 0x1d

    goto/16 :goto_7

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_6

    :cond_13
    const/16 v3, 0x1c

    goto/16 :goto_7

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_6

    :cond_14
    const/16 v3, 0x1b

    goto/16 :goto_7

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_6

    :cond_15
    const/16 v3, 0x1a

    goto/16 :goto_7

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_6

    :cond_16
    const/16 v3, 0x19

    goto/16 :goto_7

    :sswitch_5
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_6

    :cond_17
    const/16 v3, 0x18

    goto/16 :goto_7

    :sswitch_6
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_6

    :cond_18
    const/16 v3, 0x17

    goto/16 :goto_7

    :sswitch_7
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6

    :cond_19
    const/16 v3, 0x16

    goto/16 :goto_7

    :sswitch_8
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v3, 0x15

    goto/16 :goto_7

    :sswitch_9
    const-string v3, "V_THEORA"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_6

    :cond_1b
    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_a
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_6

    :cond_1c
    const/16 v3, 0x13

    goto/16 :goto_7

    :sswitch_b
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_6

    :cond_1d
    const/16 v3, 0x12

    goto/16 :goto_7

    :sswitch_c
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const/16 v3, 0x11

    goto/16 :goto_7

    :sswitch_d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/16 v3, 0x10

    goto/16 :goto_7

    :sswitch_e
    const-string v3, "A_DTS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_6

    :cond_20
    const/16 v3, 0xf

    goto/16 :goto_7

    :sswitch_f
    const-string v3, "A_AC3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_6

    :cond_21
    const/16 v3, 0xe

    goto/16 :goto_7

    :sswitch_10
    const-string v3, "A_AAC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_6

    :cond_22
    const/16 v3, 0xd

    goto/16 :goto_7

    :sswitch_11
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_6

    :cond_23
    const/16 v3, 0xc

    goto/16 :goto_7

    :sswitch_12
    const-string v3, "S_VOBSUB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v3, 0xb

    goto/16 :goto_7

    :sswitch_13
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_6

    :cond_25
    const/16 v3, 0xa

    goto/16 :goto_7

    :sswitch_14
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_6

    :cond_26
    const/16 v3, 0x9

    goto/16 :goto_7

    :sswitch_15
    const-string v3, "S_DVBSUB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_6

    :cond_27
    const/16 v3, 0x8

    goto :goto_7

    :sswitch_16
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_6

    :cond_28
    const/4 v3, 0x7

    goto :goto_7

    :sswitch_17
    const-string v3, "A_MPEG/L3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_6

    :cond_29
    const/4 v3, 0x6

    goto :goto_7

    :sswitch_18
    const-string v3, "A_MPEG/L2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_6

    :cond_2a
    const/4 v3, 0x5

    goto :goto_7

    :sswitch_19
    const-string v3, "A_VORBIS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/4 v3, 0x4

    goto :goto_7

    :sswitch_1a
    const-string v3, "A_TRUEHD"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/4 v3, 0x3

    goto :goto_7

    :sswitch_1b
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/4 v3, 0x2

    goto :goto_7

    :sswitch_1c
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_6

    :cond_2e
    const/4 v3, 0x1

    goto :goto_7

    :sswitch_1d
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/4 v3, 0x0

    :goto_7
    const-string v7, "MatroskaExtractor"

    const-string v10, "audio/x-unknown"

    packed-switch v3, :pswitch_data_0

    .line 7986
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v3, 0x1680

    .line 7901
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 7902
    iget-object v10, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7904
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->P:J

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 7903
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7906
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->Q:J

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 7905
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "audio/opus"

    move-object/from16 v28, v7

    const/16 v22, 0x1680

    goto/16 :goto_d

    .line 7939
    :pswitch_1
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "audio/flac"

    goto/16 :goto_c

    :pswitch_2
    const-string v10, "audio/eac3"

    goto :goto_9

    :pswitch_3
    const-string/jumbo v10, "video/mpeg2"

    goto :goto_9

    :pswitch_4
    const-string v10, "application/x-subrip"

    goto :goto_9

    .line 7879
    :pswitch_5
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    invoke-static {v3}, Landroidx/media2/exoplayer/external/video/c;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/c;

    move-result-object v3

    .line 7880
    iget-object v7, v3, Landroidx/media2/exoplayer/external/video/c;->a:Ljava/util/List;

    .line 7881
    iget v3, v3, Landroidx/media2/exoplayer/external/video/c;->b:I

    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->W:I

    const-string/jumbo v10, "video/hevc"

    goto/16 :goto_c

    :pswitch_6
    const-string v10, "text/x-ssa"

    goto :goto_9

    .line 7958
    :pswitch_7
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->N:I

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->b(I)I

    move-result v3

    if-nez v3, :cond_30

    .line 7962
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->N:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x3c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Unsupported PCM bit depth: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_30
    const-string v10, "audio/raw"

    :goto_8
    move/from16 v25, v3

    const/16 v22, -0x1

    goto :goto_b

    :pswitch_8
    const-string/jumbo v10, "video/x-unknown"

    goto :goto_9

    :pswitch_9
    const-string v10, "application/pgs"

    goto :goto_9

    :pswitch_a
    const-string/jumbo v10, "video/x-vnd.on2.vp9"

    goto :goto_9

    :pswitch_b
    const-string/jumbo v10, "video/x-vnd.on2.vp8"

    :goto_9
    const/16 v22, -0x1

    :goto_a
    const/16 v25, -0x1

    :goto_b
    const/16 v28, 0x0

    goto/16 :goto_11

    :pswitch_c
    const-string/jumbo v10, "video/av01"

    goto :goto_9

    :pswitch_d
    const-string v10, "audio/vnd.dts"

    goto :goto_9

    :pswitch_e
    const-string v10, "audio/ac3"

    goto :goto_9

    .line 7910
    :pswitch_f
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "audio/mp4a-latm"

    goto :goto_c

    :pswitch_10
    const-string v10, "audio/vnd.dts.hd"

    goto :goto_9

    .line 7974
    :pswitch_11
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "application/vobsub"

    goto :goto_c

    .line 7873
    :pswitch_12
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    invoke-static {v3}, Landroidx/media2/exoplayer/external/video/a;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/a;

    move-result-object v3

    .line 7874
    iget-object v7, v3, Landroidx/media2/exoplayer/external/video/a;->a:Ljava/util/List;

    .line 7875
    iget v3, v3, Landroidx/media2/exoplayer/external/video/a;->b:I

    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->W:I

    const-string/jumbo v10, "video/avc"

    :goto_c
    move-object/from16 v28, v7

    const/16 v22, -0x1

    :goto_d
    const/16 v25, -0x1

    goto/16 :goto_11

    :pswitch_13
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 7982
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    aget-byte v7, v7, v6

    aput-byte v7, v3, v6

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    aget-byte v7, v7, v5

    aput-byte v7, v3, v5

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    aget-byte v7, v7, v4

    aput-byte v7, v3, v4

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    aget-byte v7, v7, v8

    aput-byte v7, v3, v8

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v10, "application/dvbsubs"

    goto :goto_c

    .line 7884
    :pswitch_14
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-direct {v3, v7}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a(Landroidx/media2/exoplayer/external/util/p;)Landroid/util/Pair;

    move-result-object v3

    .line 7885
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 7886
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    goto :goto_c

    :pswitch_15
    const/16 v3, 0x1000

    const-string v10, "audio/mpeg"

    goto :goto_e

    :pswitch_16
    const/16 v3, 0x1000

    const-string v10, "audio/mpeg-L2"

    :goto_e
    const/16 v22, 0x1000

    goto/16 :goto_a

    :pswitch_17
    const/16 v3, 0x2000

    .line 7896
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a([B)Ljava/util/List;

    move-result-object v7

    const-string v10, "audio/vorbis"

    move-object/from16 v28, v7

    const/16 v22, 0x2000

    goto :goto_d

    .line 7928
    :pswitch_18
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/b/d$c;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/b/d$c;-><init>()V

    iput-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    const-string v10, "audio/true-hd"

    goto/16 :goto_9

    .line 7943
    :pswitch_19
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    iget-object v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-direct {v3, v11}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 7944
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->N:I

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->b(I)I

    move-result v3

    if-nez v3, :cond_31

    .line 7948
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->N:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x3c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Unsupported PCM bit depth: "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_31
    const-string v10, "audio/raw"

    goto/16 :goto_8

    :cond_32
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 7953
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_33

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_33
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v11

    :goto_f
    invoke-static {v7, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 7869
    :pswitch_1a
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    if-nez v3, :cond_34

    const/4 v7, 0x0

    goto :goto_10

    :cond_34
    iget-object v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v7, v3

    :goto_10
    const-string/jumbo v10, "video/mp4v-es"

    goto/16 :goto_c

    .line 7992
    :goto_11
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->T:Z

    or-int/2addr v3, v6

    .line 7993
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->S:Z

    if-eqz v7, :cond_35

    const/4 v7, 0x2

    goto :goto_12

    :cond_35
    const/4 v7, 0x0

    :goto_12
    or-int/2addr v3, v7

    .line 7996
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 7998
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->M:I

    iget v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->O:I

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->U:Ljava/lang/String;

    move-object/from16 v19, v10

    move/from16 v23, v4

    move/from16 v24, v6

    move-object/from16 v26, v28

    move-object/from16 v27, v7

    move/from16 v28, v3

    move-object/from16 v29, v8

    invoke-static/range {v18 .. v29}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 8001
    :cond_36
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 8003
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->p:I

    if-nez v3, :cond_39

    .line 8004
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_37

    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->l:I

    goto :goto_13

    :cond_37
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    :goto_13
    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    .line 8005
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    if-ne v3, v5, :cond_38

    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->m:I

    goto :goto_14

    :cond_38
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    :goto_14
    iput v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    goto :goto_15

    :cond_39
    const/4 v5, -0x1

    .line 8008
    :goto_15
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v3, v5, :cond_3a

    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    if-eq v3, v5, :cond_3a

    .line 8009
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->m:I

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->n:I

    mul-int v3, v3, v8

    int-to-float v3, v3

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->l:I

    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->o:I

    mul-int v8, v8, v11

    int-to-float v8, v8

    div-float/2addr v3, v8

    goto :goto_16

    :cond_3a
    const/high16 v3, -0x40800000    # -1.0f

    .line 8012
    :goto_16
    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->w:Z

    if-eqz v8, :cond_3d

    .line 8110
    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->C:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->D:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->E:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->F:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->G:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->H:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->I:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->J:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->K:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3c

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->L:F

    cmpl-float v7, v8, v7

    if-nez v7, :cond_3b

    goto/16 :goto_17

    :cond_3b
    const/16 v7, 0x19

    new-array v7, v7, [B

    .line 8120
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 8121
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 8122
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->C:F

    const v12, 0x47435000    # 50000.0f

    mul-float v11, v11, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8123
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->D:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8124
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->E:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8125
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->F:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8126
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->G:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8127
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->H:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8128
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->I:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8129
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->J:F

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8130
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->K:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8131
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->L:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8132
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->A:I

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8133
    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->B:I

    int-to-short v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_18

    :cond_3c
    :goto_17
    const/4 v7, 0x0

    .line 8014
    :goto_18
    new-instance v8, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->x:I

    iget v12, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->z:I

    iget v13, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->y:I

    invoke-direct {v8, v11, v12, v13, v7}, Landroidx/media2/exoplayer/external/video/ColorInfo;-><init>(III[B)V

    move-object/from16 v31, v8

    goto :goto_19

    :cond_3d
    const/16 v31, 0x0

    .line 8018
    :goto_19
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a:Ljava/lang/String;

    const-string v8, "htc_video_rotA-000"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v8, 0x0

    goto :goto_1a

    .line 8020
    :cond_3e
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a:Ljava/lang/String;

    const-string v8, "htc_video_rotA-090"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const/16 v8, 0x5a

    goto :goto_1a

    .line 8022
    :cond_3f
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a:Ljava/lang/String;

    const-string v8, "htc_video_rotA-180"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    const/16 v8, 0xb4

    goto :goto_1a

    .line 8024
    :cond_40
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->a:Ljava/lang/String;

    const-string v8, "htc_video_rotA-270"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    const/16 v8, 0x10e

    goto :goto_1a

    :cond_41
    const/4 v8, -0x1

    .line 8027
    :goto_1a
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->q:I

    if-nez v5, :cond_46

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->r:F

    const/4 v7, 0x0

    .line 8028
    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_46

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    .line 8029
    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_46

    .line 8031
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->t:F

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_42

    const/16 v27, 0x0

    goto :goto_1c

    .line 8033
    :cond_42
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_43

    const/16 v6, 0x5a

    const/16 v27, 0x5a

    goto :goto_1c

    .line 8035
    :cond_43
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    const/high16 v6, -0x3ccc0000    # -180.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_45

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    const/high16 v6, 0x43340000    # 180.0f

    .line 8036
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_44

    goto :goto_1b

    .line 8038
    :cond_44
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->s:F

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_46

    const/16 v6, 0x10e

    const/16 v27, 0x10e

    goto :goto_1c

    :cond_45
    :goto_1b
    const/16 v6, 0xb4

    const/16 v27, 0xb4

    goto :goto_1c

    :cond_46
    move/from16 v27, v8

    .line 8044
    :goto_1c
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->l:I

    iget v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->m:I

    const/high16 v25, -0x40800000    # -1.0f

    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->u:[B

    iget v8, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->v:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v19, v10

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v26, v28

    move/from16 v28, v3

    move-object/from16 v29, v7

    move/from16 v30, v8

    move-object/from16 v32, v11

    .line 8043
    invoke-static/range {v18 .. v32}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    goto/16 :goto_1f

    :cond_47
    const-string v5, "application/x-subrip"

    .line 8059
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 8061
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->U:Ljava/lang/String;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v4, v10, v3, v5, v6}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    :goto_1d
    const/4 v4, 0x3

    goto/16 :goto_1f

    :cond_48
    const-string v5, "text/x-ssa"

    .line 8063
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 8065
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9070
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/b/d;->b:[B

    .line 8066
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8067
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->j:[B

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8068
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, -0x1

    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->U:Ljava/lang/String;

    const/16 v29, -0x1

    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const-wide v31, 0x7fffffffffffffffL

    move-object/from16 v24, v10

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v33, v5

    invoke-static/range {v23 .. v33}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    goto :goto_1d

    :cond_49
    const-string v4, "application/vobsub"

    .line 8071
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "application/pgs"

    .line 8072
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "application/dvbsubs"

    .line 8073
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_1e

    .line 8086
    :cond_4a
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8077
    :cond_4b
    :goto_1e
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, -0x1

    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->U:Ljava/lang/String;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v24, v10

    move/from16 v27, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    .line 8076
    invoke-static/range {v23 .. v30}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    goto :goto_1d

    .line 8089
    :goto_1f
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->c:I

    invoke-interface {v9, v5, v4}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v4

    iput-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    .line 8090
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 2717
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/b/d$b;->c:I

    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_20

    :cond_4c
    move-object v1, v7

    .line 2719
    :goto_20
    iput-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

    return-void

    .line 2689
    :cond_4d
    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    if-ne v1, v4, :cond_4f

    .line 2694
    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->H:Z

    if-nez v1, :cond_4e

    .line 2695
    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    or-int/2addr v1, v5

    iput v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    .line 2697
    :cond_4e
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->D:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->y:J

    invoke-virtual {v2, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/b/d$b;J)V

    .line 2698
    iput v6, v2, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    :cond_4f
    :goto_21
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d
        -0x7ce7f3b0 -> :sswitch_1c
        -0x76567dc0 -> :sswitch_1b
        -0x6a615338 -> :sswitch_1a
        -0x672350af -> :sswitch_19
        -0x585f4fce -> :sswitch_18
        -0x585f4fcd -> :sswitch_17
        -0x51dc40b2 -> :sswitch_16
        -0x37a9c464 -> :sswitch_15
        -0x2016c535 -> :sswitch_14
        -0x2016c4e5 -> :sswitch_13
        -0x19552dbd -> :sswitch_12
        -0x1538b2ba -> :sswitch_11
        0x3c02325 -> :sswitch_10
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_e
        0x4e81333 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
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
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_d
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
